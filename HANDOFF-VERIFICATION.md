# Verification — 2026-11-17

- **19 portable checks passed:** 10 receiver transaction cases, four capture
  busy-lifecycle cases, and five source/build/resource/UI preservation cases.
- **Native Max receiver self-tests passed:** actual File A load was verified
  before `loaded`, stopped, preserving speed 0.75 and pitch −200 cents; invalid
  WAV decode preserved the prior File B and source selector. The fixture had no
  physical audio/MIDI or device-control endpoints. Failure after commit is
  covered by the transaction mock; native failure coverage used a bad decode.
- **Full native three-app pipeline passed:** the production Looper sender
  reported 13/13 checks, including two durable loaded acknowledgments from
  Field Kit and one from FX Patcher. The FX receiver loaded the ordered mixed
  file chain into File B: 26,460 frames, stereo, 44.1 kHz, 600 ms, stopped. The
  sender compared the chain WAV PCM with its preview exactly and checked that
  loop/slice renders left source PCM unchanged.
- **Packaging passed:** the 13.2.2 candidate retains 190 unchanged collective
  resource payloads byte for byte. It changes the main patch, `fxloop.js`, and
  `fxcapture.js`, adds the receiver and Node entry, and copies the shared Node
  modules outside the collective. Deep/strict ad hoc signature verification
  passed. No installed app or user scenes were modified by this staging work.

Native reports were produced under `/private/tmp` by the owning root agent:

- `/private/tmp/fx-handoff-native-8fpyzwpd/native-results.json`
- `/private/tmp/max-looper-handoff-67b4bv80/native-results.json`

The FX fixture was opened separately for its initial self-tests and then for
the actual pipeline. The pipeline arrived before the fixture's delayed
self-tests on its last opening, so its last report uses
`pipelineCompleted: true`; the earlier self-test results were inspected before
that report was replaced.

Candidate:
`/private/tmp/fx-patcher-13.2.2-final-j73gc12n/FX Patcher.app`

Isolated startup/visual preview (separate bundle ID, preferences and exchange
root; not launched by this subagent):
`/private/tmp/fx-patcher-preview-hcqie369/FX Patcher Handoff Preview.app`

Actual standalone startup/visual inspection remains a root-agent check. Native
receiver testing verifies loaded audio and stop state; it does not start DSP
or claim audible hardware output.
