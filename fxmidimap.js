// fxmidimap.js — MIDI Learn: maps any incoming MIDI CC to any knob, using the same
// id/knob addressing the LFOs already use. A mapped CC sets that knob's base value
// directly. LFO modulation adds to that base.
// out 0: "id knob value01"   -> applied to the target, over the fx.midi bus
// out 1: midi_set channel cc id knob / midi_clear -> persist MIDI mappings
// out 2: "set <status text>" -> UI readout
inlets = 1; outlets = 3;

var MAP = {};      // channel:cc -> {id, knob}; channel 0 is a legacy fallback
var LAB = {};       // id -> [names], same shape fxlfo.js keeps
var learnOn = false;
var armed = null;   // {id, knob} most recently touched while learn is on
var cleared = false;

function defaultLabels() { var a = []; for (var i = 1; i <= 17; i++) a.push("" + i); return a; }
function srcName(id) {
  if (id === 9) return "File A";
  if (id === 10) return "File B";
  return "Slot " + id;
}
function knobName(id, knob) {
  var src = LAB[id] || defaultLabels();
  var nm = src[knob - 1];
  if (nm === undefined || nm === "–" || nm === "-") nm = "(" + knob + ")";
  return nm;
}
function count() { return Object.keys(MAP).length; }
function key(chan, ctl) { return chan + ":" + ctl; }
function validTarget(id, knob) {
  return Number.isInteger(id) && id >= 1 && id <= 10 &&
    Number.isInteger(knob) && knob >= 1 && knob <= (id <= 8 ? 17 : 11);
}
function validControl(chan, ctl) {
  return Number.isInteger(chan) && chan >= 0 &&
    Number.isInteger(ctl) && ctl >= 0 && ctl <= 127;
}
function status(s) { outlet(2, "set", s); }
function idleStatus() { status((learnOn ? "MIDI Learn: touch a knob, then move a CC" : "MIDI Learn off") + " (" + count() + " mapped)"); }

function learn(v) {
  learnOn = !!(+v);
  armed = null;
  idleStatus();
}
function touch(id, knob) {
  if (!learnOn || !validTarget(id, knob)) return;
  armed = { id: id, knob: knob };
  status("Armed: " + srcName(armed.id) + " · " + knobName(armed.id, armed.knob) + " — move a CC");
}
function labels() {
  var a = arrayfromargs(arguments);
  var id = a[0] | 0; if (id < 1) return;
  LAB[id] = a.slice(1);
}
function cc(value, ctl, chan) {
  if (!validControl(chan, ctl) || !Number.isFinite(value)) return;
  var k = key(chan, ctl);
  if (armed) {
    MAP[k] = { id: armed.id, knob: armed.knob };
    outlet(1, "midi_set", chan, ctl, armed.id, armed.knob);
    status("Mapped: " + srcName(armed.id) + " · " + knobName(armed.id, armed.knob) + " → Ch " + chan + " CC " + ctl + " (" + count() + " mapped)");
    armed = null;
    return;
  }
  var m = MAP[k] || MAP[key(0, ctl)];
  if (!m) return;
  outlet(0, m.id, m.knob, clip(value / 127));
}
function clip(v) { return v < 0 ? 0 : (v > 1 ? 1 : v); }
function loadmap(chan, ctl, id, knob) {
  if (cleared || !validControl(chan, ctl) || !validTarget(id, knob)) return;
  var k = key(chan, ctl);
  if (!MAP[k]) MAP[k] = { id: id, knob: knob };
  if (!armed) idleStatus();
}
function clearmap() {
  MAP = {};
  cleared = true;
  armed = null;
  outlet(1, "midi_clear");
  idleStatus();
}
idleStatus();
