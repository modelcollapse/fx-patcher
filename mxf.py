"""Read and make a narrow lossless update to Max's mx@c collective container.

No compiled external or unchanged resource is regenerated. The original data
section stays byte-identical and updated text payloads are appended before a
new directory. Native Max loading remains the compatibility check.
"""
from __future__ import annotations
import hashlib
import struct


def u32(value: bytes) -> int:
    return struct.unpack('>I', value)[0]


def be(value: int) -> bytes:
    return struct.pack('>I', value)


def chunk(tag: bytes, payload: bytes) -> bytes:
    return tag + be(len(payload) + 8) + payload


class Collective:
    def __init__(self, data: bytes):
        if data[:4] != b'mx@c' or len(data) < 24:
            raise ValueError('Not a Max mx@c collective.')
        self.data = data
        self.directory = u32(data[12:16])
        if data[self.directory:self.directory + 4] != b'dlst':
            raise ValueError('Missing Max collective resource directory.')
        end = self.directory + u32(data[self.directory + 4:self.directory + 8])
        if end != len(data):
            raise ValueError('Unexpected data after Max collective directory.')
        self.entries = []
        position = self.directory + 8
        names = set()
        while position < end:
            if data[position:position + 4] != b'dire':
                raise ValueError('Unexpected Max collective directory entry.')
            finish = position + u32(data[position + 4:position + 8])
            if finish <= position + 8 or finish > end:
                raise ValueError('Invalid Max collective directory length.')
            fields = []
            current = position + 8
            while current < finish:
                length = u32(data[current + 4:current + 8])
                if length < 8 or current + length > finish:
                    raise ValueError('Invalid Max collective field length.')
                fields.append((data[current:current + 4], data[current + 8:current + length]))
                current += length
            values = dict(fields)
            name = values[b'fnam'].rstrip(b'\0').decode('utf8')
            offset, size = u32(values[b'of32']), u32(values[b'sz32'])
            if name in names or offset < 16 or offset + size > self.directory:
                raise ValueError('Invalid or duplicate Max resource: ' + name)
            names.add(name)
            self.entries.append({'name': name, 'fields': fields, 'offset': offset, 'size': size})
            position = finish
        if position != end:
            raise ValueError('Unaligned Max collective directory.')

    def resources(self) -> dict[str, bytes]:
        return {entry['name']: self.data[entry['offset']:entry['offset'] + entry['size']]
                for entry in self.entries}

    def replace(self, replacements: dict[str, bytes]) -> tuple[bytes, dict]:
        if not replacements:
            return self.data, {'changed': [], 'preserved': len(self.entries)}
        entries = list(self.entries)
        existing = self.resources()
        data = bytearray(self.data[:self.directory])
        directory = []
        changed = []
        for entry in entries:
            name = entry['name']
            fields = entry['fields']
            if name in replacements:
                payload = replacements[name]
                offset = len(data)
                data.extend(payload)
                fields = [(tag, be(len(payload)) if tag == b'sz32' else be(offset) if tag == b'of32' else value)
                          for tag, value in fields]
                changed.append(name)
            directory.append(chunk(b'dire', b''.join(chunk(tag, value) for tag, value in fields)))
        # New scripts use the same TEXT metadata as the existing native V8 files.
        template = next(entry['fields'] for entry in entries if entry['name'] == 'fxloop.js')
        for name, payload in replacements.items():
            if name in existing:
                continue
            if '/' in name or '\\' in name or not name.endswith('.js'):
                raise ValueError('Only top-level JavaScript may be added: ' + name)
            offset = len(data)
            data.extend(payload)
            encoded = name.encode('utf8') + b'\0'
            encoded += b'\0' * ((-len(encoded)) % 4)
            fields = [(tag, encoded if tag == b'fnam' else be(len(payload)) if tag == b'sz32'
                       else be(offset) if tag == b'of32' else be(8) if tag == b'flag' and name == 'fx-handoff-node.js'
                       else be(0) if tag == b'flag' else value) for tag, value in template]
            directory.append(chunk(b'dire', b''.join(chunk(tag, value) for tag, value in fields)))
            changed.append(name)
        data[12:16] = be(len(data))
        data.extend(chunk(b'dlst', b''.join(directory)))
        updated = Collective(bytes(data)).resources()
        for name, payload in existing.items():
            if name not in replacements and updated[name] != payload:
                raise AssertionError('Unchanged Max resource was modified: ' + name)
        for name, payload in replacements.items():
            if updated[name] != payload:
                raise AssertionError('Replacement Max resource mismatch: ' + name)
        return bytes(data), {
            'changed': changed, 'preserved': len(existing) - len(set(existing) & set(replacements)),
            'originalSha256': hashlib.sha256(self.data).hexdigest(),
            'candidateSha256': hashlib.sha256(data).hexdigest()
        }
