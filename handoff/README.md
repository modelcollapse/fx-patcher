# Max Audio Exchange v1

Shared local file handoff for Looper, Field Kit and FX Patcher. No network listener, app launch, audio engine, transport or autoplay commands are included.

Copy `exchange.js` and `max-exchange.js` together into an app's `handoff/` folder. Its `node.script` entry is:

```js
const { start } = require('./handoff/max-exchange');
const exchange = start({ role: 'field-kit' }); // or 'looper', 'fx-patcher'
```

The default private outbox is `~/Library/Application Support/Max Audio Exchange/v1`. Tests and fixtures may pass `root` explicitly. Do not use a synced directory.

Sender messages:

- `prepare <to> <slot> <kind> <label> [clientToken]` emits `exchange_prepared <id> <absolute-audio.wav-path> [clientToken]`. Label is one Max symbol. The optional `client-...` token is echoed unchanged so a sender can reject a late preparation response. Render to that newly owned path and close the writer.
- `rendered <id>` validates the complete WAV, hashes it, makes it read-only and atomically publishes the request. Emits `exchange_queued <id>`.
- `rendererfailed <id> <reason>` cancels an unpublished render with an error status.

Destination values: `field-kit` with slot `selected`, or `fx-patcher` with slot `a`/`b`. Kinds: `audio`, `slice`, `loop`, `chain`. Labels are plain text, not paths.

The receiver emits `exchange_load <id> <absolute-path> <label> <kind> <slot>`. Stage the new audio without discarding the previous working source. Respond with exactly one of:

- `loaded <id>` after the actual native import commits successfully;
- `failed <id> <reason>` for terminal failure;
- `busy <id> <reason>` to release it for a delayed retry.

A destination lease serializes all receiver instances. Duplicate polls do not repeat an active load, and durable `loaded`/`error` ACKs do not replay after restart. An interrupted load without ACK is retried after the receiver closes or its process dies. Native adapters must replace the designated slot idempotently: a crash after native load but before ACK cannot provide exactly-once external side effects.

Sender feedback is `exchange_status <id> <queued|waiting|loading|loaded|error> <message>`. A timeout reports `waiting`; it does not delete or falsely acknowledge the request. Additional selectors: `exchange_ready <role> <root>`, `exchange_warning <id> <reason>`, `exchange_error <operation> <reason>`.

Core API: `createExchange({role,root?,emit?,pollMs?})` returns `prepare`, `rendered`, `rendererfailed`, `loaded`, `failed`, `busy`, `poll`, `start`, `close`. Core methods are async. Factory `start()` returns that instance immediately and starts polling asynchronously.

Run portable tests with `node handoff/test-exchange.cjs`. WAV support is RIFF PCM16/24/32 or float32, mono/stereo, 8–384 kHz (including valid extensible PCM/float headers). RF64 and compressed WAV are rejected. Prepared jobs and completed audio are retained; automatic cleanup is intentionally deferred.
