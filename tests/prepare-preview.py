"""Make a signed, separately identified visual/startup preview; never launch it."""
from pathlib import Path
import json
import plistlib
import subprocess
import sys
import tempfile
import uuid

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT))
from mxf import Collective


def prepare(source: Path):
    folder = Path(tempfile.mkdtemp(prefix='fx-patcher-preview-', dir='/private/tmp'))
    app = folder / 'FX Patcher Handoff Preview.app'
    identifier = 'com.modelcollapse.fxpatcher.handoff-preview-' + uuid.uuid4().hex[:10]
    preferences = 'FX Patcher Handoff Preview ' + identifier[-10:]
    copied = subprocess.run(['/usr/bin/ditto', '--noextattr', '--norsrc', '--noqtn', str(source), str(app)], capture_output=True,text=True)
    if copied.returncode:
        # macOS may deny copying provenance metadata while copying every byte.
        # Only accept that case after the complete copied signature verifies.
        subprocess.run(['/usr/bin/codesign','--verify','--deep','--strict',str(app)],check=True)
    resources = app / 'Contents/Resources'
    path = resources / 'FX Patcher.mxf'
    collective = Collective(path.read_bytes())
    data = json.loads(collective.resources()['fxpatcher.maxpat'].rstrip(b'\0'))
    for entry in data['patcher']['boxes']:
        box = entry['box']
        if box.get('text', '').startswith('standalone '):
            box['text'] = 'standalone @preffilename ' + json.dumps(preferences) + ' @usesearchpath 0 @statusvisible 0'
            box['saved_object_attributes']['preffilename'] = preferences
            box['saved_object_attributes']['bundleidentifier'] = identifier
    wrapper = (resources / 'fx-handoff-node.js').read_text().replace(
        "start({ role: 'fx-patcher' })", "start({ role: 'fx-patcher', root: " + json.dumps(str(folder/'exchange')) + ' })')
    updated, _ = collective.replace({'fxpatcher.maxpat': json.dumps(data,indent=2).encode()+b'\0',
                                     'fx-handoff-node.js': wrapper.encode()})
    path.write_bytes(updated)
    (resources / 'fx-handoff-node.js').write_text(wrapper)
    metadata = app / 'Contents/Info.plist'
    with metadata.open('rb') as file:info = plistlib.load(file)
    info['CFBundleIdentifier'] = identifier
    info['CFBundleName'] = info['CFBundleDisplayName'] = 'FX Patcher Handoff Preview'
    with metadata.open('wb') as file:plistlib.dump(info,file,sort_keys=False)
    subprocess.run(['/usr/bin/xattr','-cr',str(app)],check=True)
    subprocess.run(['/usr/bin/codesign','--force','--deep','--sign','-','--timestamp=none',
                    '--preserve-metadata=entitlements,flags,runtime',str(app)],check=True)
    subprocess.run(['/usr/bin/codesign','--verify','--deep','--strict',str(app)],check=True)
    report = {'app':str(app),'identifier':identifier,'preferences':preferences,
              'exchangeRoot':str(folder/'exchange'),'launchPerformed':False}
    (folder/'preview-info.json').write_text(json.dumps(report,indent=2)+'\n')
    return report


if __name__ == '__main__':
    print(json.dumps(prepare(Path(sys.argv[1]).resolve()),indent=2))
