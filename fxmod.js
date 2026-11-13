// fxmod.js — per slot: knob value = base + LFO offset (clipped 0..1)
// out 0: "k<i> v" to the effect   out 1: "i v" to show the moving value on the knob
// Knobs targeted by an LFO are coloured orange while targeted.
inlets = 1; outlets = 2;
var base = [], mod = [], last = [], hl = [], orig = [];
var ATTRS = ["activedialcolor", "activeneedlecolor", "needlecolor"];
var ORANGE = [1.0, 0.62, 0.15, 1.0];
for (var i = 0; i <= 16; i++) { base[i] = 0; mod[i] = 0; last[i] = -1; hl[i] = 0; }
function clip(v) { return v < 0 ? 0 : (v > 1 ? 1 : v); }
function send(i, show) {
  var v = clip(base[i] + mod[i]);
  if (Math.abs(v - last[i]) < 0.0002) return;
  last[i] = v;
  outlet(0, "k" + i, v);
  if (show) outlet(1, i, v);
}
function highlight(pt, i, on) {
  if (hl[i] === on) return;
  hl[i] = on;
  var d = pt ? pt.getnamed("k" + i) : null;
  if (!d) return;
  if (!orig[i]) {
    orig[i] = {};
    for (var a = 0; a < ATTRS.length; a++) {
      try { orig[i][ATTRS[a]] = d.getattr(ATTRS[a]); } catch (e) {}
    }
  }
  for (var b = 0; b < ATTRS.length; b++) {
    var name = ATTRS[b];
    try {
      if (on) d.setattr(name, ORANGE[0], ORANGE[1], ORANGE[2], ORANGE[3]);
      else if (orig[i][name]) { var c = orig[i][name]; d.setattr(name, c[0], c[1], c[2], c[3]); }
    } catch (e) {}
  }
}
function anything() {
  var a = arrayfromargs(messagename, arguments);
  if (a[0] === "mod" && a[1] === "hl") { var j = a[2] | 0; if (j >= 1 && j <= 16) highlight(this.patcher, j, a[3] ? 1 : 0); return; }
  var i = a[1] | 0; if (i < 1 || i > 16) return;
  if (a[0] === "base") { base[i] = clip(+a[2] - mod[i]); last[i] = -1; send(i, 0); }
  else if (a[0] === "mod") { mod[i] = +a[2]; send(i, 1); }
}
