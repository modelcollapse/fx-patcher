// fxmod.js — per slot: knob value = base + LFO offset (clipped 0..1)
// out 0: "k<i> v" to the effect   out 1: "i v" to show the moving value on the knob
inlets = 1; outlets = 2;
var base = [], mod = [], last = [];
for (var i = 0; i <= 16; i++) { base[i] = 0; mod[i] = 0; last[i] = -1; }
function clip(v) { return v < 0 ? 0 : (v > 1 ? 1 : v); }
function send(i, show) {
  var v = clip(base[i] + mod[i]);
  if (Math.abs(v - last[i]) < 0.0002) return;
  last[i] = v;
  outlet(0, "k" + i, v);
  if (show) outlet(1, i, v);
}
function anything() {
  var a = arrayfromargs(messagename, arguments);
  var i = a[1] | 0; if (i < 1 || i > 16) return;
  if (a[0] === "base") { base[i] = clip(+a[2] - mod[i]); last[i] = -1; send(i, 0); }
  else if (a[0] === "mod") { mod[i] = +a[2]; send(i, 1); }
}
