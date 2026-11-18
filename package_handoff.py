"""Stage a separate FX Patcher 13.2.2 bundle; never edit the installed app.

An official native-Max compiled collective may be supplied with --collective.
Without it, a narrow lossless text-resource update preserves the installed
13.2.1 collective and all of its existing compiled dependencies.
"""
from pathlib import Path
import argparse
import hashlib
import json
import plistlib
import shutil
import subprocess
import sys
import tempfile
import build_handoff as build
from mxf import Collective

ROOT = Path(__file__).resolve().parent


def package(baseline: Path, destination: Path, native_collective: Path | None = None, sign: bool = False):
    baseline = baseline.resolve()
    destination = destination.resolve()
    if baseline == destination or baseline in destination.parents or destination.exists():
        raise ValueError('Choose a new candidate path outside the baseline app.')
    if destination.suffix != '.app':
        raise ValueError('Candidate path must end in .app.')
    metadata = baseline / 'Contents/Info.plist'
    with metadata.open('rb') as file:
        info = plistlib.load(file)
    if info.get('CFBundleShortVersionString') != '13.2.1':
        raise ValueError('Expected the verified installed 13.2.1 baseline.')
    build.build()
    destination.parent.mkdir(parents=True, exist_ok=True)
    # Documents may be managed by File Provider, which adds FinderInfo to .mxo
    # bundles while traversing them. Sign in /private/tmp instead.
    staging = Path(tempfile.mkdtemp(prefix='fx-handoff-package-', dir='/private/tmp'))
    candidate = staging / destination.name
    try:
        # ditto preserves the standalone runtime, resource forks and symlinks.
        subprocess.run(['/usr/bin/ditto', '--noextattr', '--norsrc', '--noqtn', str(baseline), str(candidate)], check=True)
        resources = candidate / 'Contents/Resources'
        target = resources / 'FX Patcher.mxf'
        original = (baseline / 'Contents/Resources/FX Patcher.mxf').read_bytes()
        expected = {'fxpatcher.maxpat': (ROOT / 'fxpatcher.maxpat').read_bytes() + b'\0'}
        for name in ['fxloop.js', 'fxcapture.js', 'fxhandoff.js', 'fx-handoff-node.js']:
            expected[name] = (ROOT / name).read_bytes()
        if native_collective:
            data = native_collective.read_bytes()
            native_resources = Collective(data).resources()
            for name, payload in expected.items():
                if name == 'fxpatcher.maxpat':
                    a = json.loads(payload.rstrip(b'\0'))
                    b = json.loads(native_resources[name].rstrip(b'\0'))
                    if a != b:
                        raise ValueError('Native collective main differs from current staged source.')
                elif native_resources.get(name) != payload:
                    raise ValueError('Native collective script differs from staged source: ' + name)
            preservation = {'method': 'Native Max collective', 'candidateSha256': hashlib.sha256(data).hexdigest()}
        else:
            data, preservation = Collective(original).replace(expected)
            preservation['method'] = 'Lossless installed-resource delta'
        target.write_bytes(data)
        # node.script needs CommonJS modules as real filesystem paths. Keep its
        # entry beside these modules as well as in the collective.
        shutil.copy2(ROOT / 'fx-handoff-node.js', resources / 'fx-handoff-node.js')
        shutil.copytree(ROOT / 'handoff', resources / 'handoff', dirs_exist_ok=True)
        info['CFBundleShortVersionString'] = build.VERSION
        info['CFBundleVersion'] = build.VERSION
        info.pop('CFBundleDocumentTypes', None)
        info.pop('CFBundleURLTypes', None)
        with (candidate / 'Contents/Info.plist').open('wb') as file:
            plistlib.dump(info, file, sort_keys=False)
        subprocess.run([sys.executable, str(ROOT / 'scripts/set_max_preferences.py'),
                        str(candidate), 'FXPatcher'], check=True)
        if sign:
            # Copied FinderInfo/resource-fork xattrs are not valid signed code
            # resources. Clear them on this disposable candidate only.
            subprocess.run(['/usr/bin/xattr', '-cr', str(candidate)], check=True)
            subprocess.run(['/usr/bin/codesign', '--force', '--deep', '--sign', '-', '--timestamp=none',
                            '--preserve-metadata=entitlements,requirements,flags,runtime', str(candidate)], check=True)
            subprocess.run(['/usr/bin/codesign', '--verify', '--deep', '--strict', str(candidate)], check=True)
        # Exclusive final rename leaves a partial staging bundle out of sight.
        if destination.exists():
            raise FileExistsError(destination)
        candidate.rename(destination)
        if sign:
            subprocess.run(['/usr/bin/codesign', '--verify', '--deep', '--strict', str(destination)], check=True)
        report = {'version': build.VERSION, 'baseline': str(baseline), 'candidate': str(destination),
                  'signedAdHoc': sign, 'scenesCopiedFromCanonical': False,
                  'preferences': 'FXPatcher', 'preferencesMigrated': False, **preservation}
        (destination.parent / (destination.stem + '-build.json')).write_text(json.dumps(report, indent=2) + '\n')
        return report
    finally:
        shutil.rmtree(staging)


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('destination', type=Path)
    parser.add_argument('--baseline', type=Path, default=Path('/Applications/FX Patcher.app'))
    parser.add_argument('--collective', type=Path)
    parser.add_argument('--sign', action='store_true')
    args = parser.parse_args()
    print(json.dumps(package(args.baseline, args.destination, args.collective, args.sign), indent=2))
