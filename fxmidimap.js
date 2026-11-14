// fxmidimap.js — MIDI Learn: maps any incoming MIDI CC to any knob, using the same
// id/knob addressing the LFOs already use. A mapped CC sets that knob's base value
// directly (same as turning it by hand) - independent of, and stacks with, LFO modulation.
// out 0: "id knob value01"   -> applied to the target, over the fx.midi bus
// out 1: "cc id knob"        -> persist this mapping (patch prepends "list" for coll)
// out 2: "set <status text>" -> UI readout
inlets = 1; outlets = 3;

var MAP = {};      // cc -> {id, knob}
var LAB = {};       // id -> [names], same shape fxlfo.js keeps
var learnOn = false;
var armed = null;   // {id, knob} most recently touched while learn is on

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
function count() { var n = 0; for (var k in MAP) n++; return n; }
function status(s) { outlet(2, "set", s); }
function idleStatus() { status((learnOn ? "MIDI Learn: touch a knob, then move a CC" : "MIDI Learn off") + " (" + count() + " mapped)"); }

function learn(v) {
  learnOn = !!(+v);
  armed = null;
  idleStatus();
}
function touch(id, knob) {
  if (!learnOn) return;
  armed = { id: id | 0, knob: knob | 0 };
  status("Armed: " + srcName(armed.id) + " · " + knobName(armed.id, armed.knob) + " — move a CC");
}
function labels() {
  var a = arrayfromargs(arguments);
  var id = a[0] | 0; if (id < 1) return;
  LAB[id] = a.slice(1);
}
function cc(value, ctl, chan) {
  ctl = ctl | 0;
  if (armed) {
    MAP[ctl] = { id: armed.id, knob: armed.knob };
    outlet(1, ctl, armed.id, armed.knob);
    status("Mapped: " + srcName(armed.id) + " · " + knobName(armed.id, armed.knob) + " → CC " + ctl + " (" + count() + " mapped)");
    armed = null;
    return;
  }
  var m = MAP[ctl];
  if (!m) return;
  outlet(0, m.id, m.knob, clip((value | 0) / 127));
}
function clip(v) { return v < 0 ? 0 : (v > 1 ? 1 : v); }
function loadmap(cc_, id, knob) {
  MAP[cc_ | 0] = { id: id | 0, knob: knob | 0 };
  idleStatus();
}
// coll's "dump" sends each entry's address and data from separate outlets, address
// first (outlet order is right-to-left) - pair them here instead of in the patch,
// since that avoids depending on exact pack/trigger timing across object boundaries.
var pendingCC = null;
function dumpaddr(c) { pendingCC = c | 0; }
function dumpdata(id, knob) {
  if (pendingCC === null) return;
  loadmap(pendingCC, id, knob);
  pendingCC = null;
}
function clearmap() {
  MAP = {};
  idleStatus();
}
idleStatus();
