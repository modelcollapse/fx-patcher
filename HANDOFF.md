# FX Patcher 13.2.2 audio handoff

This branch provides editable source matching the installed **13.2.1 desktop app** plus
a narrow incoming-WAV integration. It does not use the older 12.x generator as
its baseline. The installed main patch was extracted into
`baseline/fxpatcher-13.2.1.maxpat`; the latest desktop scripts matched its
packed scripts byte for byte. Existing effect modules and the audio graph are
retained. User `fxscenes.json` is deliberately excluded.

## Use

In Max Looper, choose **FX Patcher → File A** or **File B**. That explicit choice
replaces that player after native decode and playlist verification. The input
selector for A or B switches to its corresponding file player. The file loads
**stopped**; press its existing Play control to hear it. Existing FX, cables,
output device, DSP, file controls and the other player are retained.

Incoming audio is decoded in a private temporary `buffer~`, appended while the
previous file remains present, then committed only after playlist inspection.
The receiver does not clear the player first. A failed commit restores and
verifies the previous file list and settings. A recording/capture or another
transfer returns busy for retry. A replacement stops only the chosen player.

## Files and protocol

- `build_handoff.py` is the controlled main-patch builder. Historical
  `make_fxpatcher.py` is retained as reference, not run by this builder.
- `fxhandoff.js` is the Max V8 receiver and load transaction.
- `fx-handoff-node.js` starts the shared worker with role `fx-patcher`.
- `handoff/{exchange.js,max-exchange.js}` are vendored byte for byte from
  Max Looper's shared protocol. The builder does not read outside this checkout.
- `fxloop.loadstopped` updates the existing selection/fade controls without
  issuing Play. Capture adds a fifth busy signal; its original four outputs
  keep their indices and behavior.

The worker sends `exchange_load id path label kind slot` with slot `a` or `b`.
The V8 receiver replies `loaded id` only after the actual native playlist has
the incoming file stopped, `failed id reason` after rejection/recovery, or
`busy id reason` before touching the player. Other worker progress is ignored
by the transaction controller. The shared worker owns immutable WAV files and
the cross-app claim/acknowledgment protocol.

## Build and verify

From this directory:

```sh
python3 build_handoff.py
node --test tests/test-receiver.cjs
node --test tests/test-capture.cjs
python3 tests/test-build.py
python3 tests/build-native.py --exchange-root /private/tmp/your-isolated-exchange
```

Use the same fresh exchange root as the accompanying Looper/Field Kit test
fixtures. The last command prints a separate native Max fixture path under
`/private/tmp`. It has no ADC, DAC, MIDI, audio-device setters, or unrelated Node
workers, and isolates internal `fx.*` buses. It checks real native playlist
loading, preserved speed/pitch, no autoplay, and failed decode recovery. It then
waits for the shared Looper pipeline chain into File B and writes
`native-results.json`. It closes itself after the pipeline result or a reported
600-second timeout. Native results must be reviewed before deployment.

To create a **separate candidate bundle**, without modifying `/Applications`:

```sh
python3 package_handoff.py '/private/tmp/FX Patcher 13.2.2/FX Patcher.app' --sign
```

This copies installed 13.2.1, updates only the main patch and four controller
scripts in its collective, retains every unchanged packed resource byte for
byte, installs the shared CommonJS modules beside the app's Resources, sets
version 13.2.2 and signs the local candidate ad hoc. It verifies the signature
and writes a SHA-256 build report beside the candidate. It refuses an existing
destination or a baseline with a different version. The original app and user
data are untouched. Actual standalone worker startup and visual inspection passed on an isolated
preview. Ad hoc signing does not create a notarized release.

Build/sign outside a File Provider managed folder. Some Documents folders
automatically add FinderInfo to nested `.mxo` bundles, which invalidates code
signing. Staging always uses `/private/tmp`, and final signature verification
also checks the requested destination.

An official Max-built collective can instead be supplied with
`--collective /absolute/path/FX\ Patcher.mxf`; package validation checks the main
and scripts against the staged source. `mxf.py` documents the narrow lossless
resource-update fallback and has synthetic preservation tests.

See [HANDOFF-VERIFICATION.md](HANDOFF-VERIFICATION.md) for test evidence,
including actual standalone worker startup and visual inspection. This draft
does not claim hardware audibility or notarized release.

The production app uses separate **FXPatcher** preferences through actual
standalone resource STR#4013. Mixed live FieldKit/MaxLooper preferences are not
migrated; first launch uses fresh preferences with Audio off. Finder document
types and URL handlers are removed from the new bundle, and packaging does not
change global LaunchServices preferences.
