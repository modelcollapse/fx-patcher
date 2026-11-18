from pathlib import Path
import importlib.util
import json
import sys
import unittest

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT))
import build_handoff as build
from mxf import Collective, be, chunk


def synthetic_collective():
    payloads = {'fxpatcher.maxpat': b'{"patcher":{}}\0', 'fxloop.js': b'old loop\n',
                'native/executable': bytes(range(255))}
    data = bytearray(b'mx@c' + be(16) + be(0) + be(0))
    entries = []
    for name, payload in payloads.items():
        name_bytes = name.encode() + b'\0'
        name_bytes += b'\0' * ((-len(name_bytes)) % 4)
        fields = [(b'type', b'JSON' if name.endswith('.maxpat') else b'TEXT'), (b'fnam', name_bytes),
                  (b'sz32', be(len(payload))), (b'of32', be(len(data))),
                  (b'vers', be(0)), (b'flag', be(17 if name.endswith('.maxpat') else 0)), (b'mdat', be(1234))]
        entries.append(chunk(b'dire', b''.join(chunk(tag, value) for tag, value in fields)))
        data.extend(payload)
    data[12:16] = be(len(data))
    data.extend(chunk(b'dlst', b''.join(entries)))
    return bytes(data), payloads


class BuildTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        build.build()

    def test_lossless_resource_delta(self):
        original, payloads = synthetic_collective()
        replacements = {'fxloop.js': b'new loop\n', 'fxhandoff.js': b'new receiver\n',
                        'fx-handoff-node.js': b'new worker\n'}
        candidate, report = Collective(original).replace(replacements)
        resources = Collective(candidate).resources()
        self.assertEqual(resources['native/executable'], payloads['native/executable'])
        self.assertEqual(resources['fxpatcher.maxpat'], payloads['fxpatcher.maxpat'])
        for name, payload in replacements.items():
            self.assertEqual(resources[name], payload)
        self.assertEqual(report['preserved'], 2)
        self.assertEqual(candidate[:12], original[:12])

    def test_reject_bad_directory_and_nested_new_scripts(self):
        original, _ = synthetic_collective()
        with self.assertRaises(ValueError):
            Collective(original[:-1])
        with self.assertRaises(ValueError):
            Collective(original).replace({'../outside.js': b'no'})

    def test_installed_graph_is_preserved_except_documented_delta(self):
        build.build()
        baseline = json.loads((ROOT / 'baseline/fxpatcher-13.2.1.maxpat').read_text())['patcher']
        candidate = json.loads((ROOT / 'fxpatcher.maxpat').read_text())['patcher']
        by_id = {entry['box']['id']: entry['box'] for entry in candidate['boxes']}
        for entry in baseline['boxes']:
            old = entry['box']
            new = dict(by_id[old['id']])
            if old.get('text') == 'FX PATCHER v13.2.1':
                new['text'] = old['text']
            if old.get('text') == 'v8 fxloop.js':
                if 'varname' in old: new['varname'] = old['varname']
                else: new.pop('varname', None)
            if old.get('text', '').startswith('v8 fxcapture.js '):
                for key in ['numoutlets', 'outlettype', 'varname']:
                    if key in old: new[key] = old[key]
                    else: new.pop(key, None)
            self.assertEqual(new, old, old['id'])
        self.assertEqual(candidate['lines'][:len(baseline['lines'])], baseline['lines'])
        self.assertFalse(json.loads((ROOT / 'build-info.json').read_text())['scenesIncluded'])

    def test_new_capture_outlet_spans_pending_recording_and_completion(self):
        # The native controller test covers receiver-side barriers; ensure the
        # original four capture outputs retain their indices in the new graph.
        baseline = json.loads((ROOT / 'baseline/fxpatcher-13.2.1.maxpat').read_text())['patcher']
        candidate = json.loads((ROOT / 'fxpatcher.maxpat').read_text())['patcher']
        captures = [entry['box'] for entry in candidate['boxes'] if entry['box'].get('text', '').startswith('v8 fxcapture.js ')]
        self.assertEqual(len(captures), 2)
        for box in captures:
            self.assertEqual(box['numoutlets'], 5)
            original = [line for line in baseline['lines'] if line['patchline']['source'][0] == box['id']]
            current = [line for line in candidate['lines'] if line['patchline']['source'][0] == box['id'] and line['patchline']['source'][1] < 4]
            self.assertEqual(original, current)

    def test_handoff_status_does_not_cover_existing_file_header_controls(self):
        patch = json.loads((ROOT / 'fxpatcher.maxpat').read_text())['patcher']
        for entry in patch['boxes']:
            box = entry['box']
            if box.get('varname', '').startswith('handoff_status_'):
                left,top,width,height = box['presentation_rect']
                self.assertGreaterEqual(left, 400)
                self.assertLessEqual(left + width, 1273)


if __name__ == '__main__':
    unittest.main()
