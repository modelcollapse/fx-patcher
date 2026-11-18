#!/usr/bin/env python3
"""Set Max standalone preference folder in STR# 4013, preserving other resources.
Run this on a staged app before signing it. Uses Apple's DeRez/Rez data-fork tools.
"""
from pathlib import Path
import re
import subprocess
import sys
import tempfile

app = Path(sys.argv[1]).resolve()
name = sys.argv[2]
encoded = name.encode('mac_roman')
if not encoded or len(encoded) > 255 or any(c in name for c in '/\\:\x00'):
    raise SystemExit('Use a nonempty preference folder name without path separators')
resources = app / 'Contents' / 'Resources'
resource = resources / (app.stem + '.rsrc')
if not resource.is_file():
    raise SystemExit('Missing standalone resource file: ' + str(resource))
source = subprocess.check_output(['/usr/bin/DeRez', '-useDF', str(resource)]).decode('mac_roman')
payload = (b'\x00\x01' + bytes([len(encoded)]) + encoded).hex().upper()
replacement = "data 'STR#' (4013) {\n    $\"" + payload + "\"\n};"
source, count = re.subn(r"data 'STR#' \(4013\) \{.*?\n\};", lambda _: replacement, source, flags=re.S)
if count != 1:
    raise SystemExit('Expected exactly one Max preference resource STR# 4013')
with tempfile.TemporaryDirectory(prefix='max-pref-resource.', dir='/private/tmp') as temporary:
    folder = Path(temporary)
    (folder / 'preferences.r').write_bytes(source.encode('mac_roman'))
    subprocess.run(['/usr/bin/Rez', '-useDF', str(folder / 'preferences.r'), '-o', str(folder / 'result.rsrc')], check=True)
    data = (folder / 'result.rsrc').read_bytes()
    if encoded not in data:
        raise SystemExit('Preference name missing from rebuilt resource')
    resource.write_bytes(data)
print(str(resource) + ': STR# 4013 = ' + name + '; re-sign the staged app')
