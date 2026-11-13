// fxlfo.js — 16 LFOs, 3 routes each. Out 0: "slot knob offset" -> fx.mod
// Out 1: "lfo key value" -> fx.lfo.set (UI updates). Out 2: "lfo value" -> fx.lfo.val
inlets = 1; outlets = 3;
var N = 16, bpm = 120, bpb = 4, lastT = 0, frame = 0;
var SYNC = [0, 8, 4, 2, 1, -2, -1, -0.5, -0.25, -2/3, -1/3]; // >0 bars, <0 beats
var L = [];
for (var n = 1; n <= N; n++) {
  L[n] = { on: 0, shape: 0, sync: 0, rate: 0.25, depth: 0.25, smooth: 0.1,
    ph: Math.random(), y: 0, sh: 0, a: 0, b: Math.random()*2-1, walk: 0,
    r: [{s:0,k:1,l:0},{s:0,k:1,l:0},{s:0,k:1,l:0}] };
}
var prev = {}, learn = null, active = {};
var LAB = {};
function defaultLabels() { var a = []; for (var i = 1; i <= 17; i++) a.push("" + i); return a; }
function itemsFor(s) {
  var src = LAB[s] || defaultLabels(), out = [];
  for (var i = 0; i < 17; i++) {
    var nm = src[i];
    if (nm === undefined || nm === "–" || nm === "-") nm = "(" + (i + 1) + ")";
    out.push(nm);
  }
  return out;
}
function sendItems(n, j) {
  var r = L[n].r[j]; if (!r.s) return;
  var it = itemsFor(r.s);
  outlet(1, [n, "r" + (j + 1) + "items"].concat(it));
}
function labels() {
  var a = arrayfromargs(arguments);
  var s = a[0] | 0; if (s < 1) return;
  LAB[s] = a.slice(1);
  for (var n = 1; n <= N; n++) for (var j = 0; j < 3; j++) if (L[n].r[j].s === s) sendItems(n, j);
}
function setbpm(v) { if (v > 0) bpm = v; }
function setbpb(v) { if (v > 0) bpb = v; }
function list() {
  var a = arrayfromargs(arguments);
  var n = a[0] | 0, key = a[1], v = +a[2];
  if (!L[n]) return;
  var o = L[n];
  var m = /^r([123])([skl])$/.exec(key);
  if (m) {
    var r = o.r[(m[1]|0) - 1];
    if (m[2] === "s") { r.s = v | 0; sendItems(n, (m[1]|0) - 1); }
    else if (m[2] === "k") r.k = (v | 0) + 1;
    else {
      r.l = v | 0;
      if (r.l) {
        if (learn && (learn.n !== n || learn.r !== +m[1])) outlet(1, learn.n, "r" + learn.r + "l", 0);
        learn = { n: n, r: +m[1] };
      } else if (learn && learn.n === n && learn.r === +m[1]) learn = null;
    }
    return;
  }
  if (key === "depth" || key === "smooth") v = v / 100;
  o[key] = v;
}
function touch(s, k) {
  if (!learn) return;
  var n = learn.n, r = learn.r; learn = null;
  outlet(1, n, "r" + r + "s", s);
  outlet(1, n, "r" + r + "k", k - 1);
  outlet(1, n, "r" + r + "l", 0);
  if (!L[n].on) outlet(1, n, "on", 1);
}
function period(o) {
  if (o.sync > 0) {
    var d = SYNC[o.sync | 0] || 1;
    var beats = d > 0 ? d * bpb : -d;
    return beats * 60 / bpm;
  }
  return 1 / Math.max(0.001, o.rate);
}
function wave(o, dt) {
  var p0 = o.ph;
  o.ph += dt / period(o);
  var wrapped = o.ph >= 1; o.ph -= Math.floor(o.ph);
  var p = o.ph;
  switch (o.shape | 0) {
    case 0: return Math.sin(p * 2 * Math.PI);
    case 1: return 1 - 4 * Math.abs(p - 0.5);
    case 2: return p * 2 - 1;
    case 3: return 1 - p * 2;
    case 4: return p < 0.5 ? 1 : -1;
    case 5: if (wrapped) o.sh = Math.random() * 2 - 1; return o.sh;
    case 6: if (wrapped) { o.a = o.b; o.b = Math.random() * 2 - 1; }
            var t = (1 - Math.cos(p * Math.PI)) / 2; return o.a + (o.b - o.a) * t;
    case 7: o.walk += (Math.random() * 2 - 1) * dt / period(o) * 2;
            if (o.walk > 1) o.walk = 2 - o.walk; if (o.walk < -1) o.walk = -2 - o.walk; return o.walk;
  }
  return 0;
}
function bang() {
  var now = Date.now();
  var dt = lastT ? Math.min(0.2, (now - lastT) / 1000) : 0.02; lastT = now;
  var acc = {};
  frame++;
  for (var n = 1; n <= N; n++) {
    var o = L[n];
    var w = wave(o, dt);
    var c = o.smooth > 0 ? Math.min(1, dt / (o.smooth * 0.5 + 0.0001)) : 1;
    o.y += (w - o.y) * c;
    var val = o.on ? o.y * o.depth : 0;
    if (frame % 3 === 0) outlet(2, n, o.on ? o.y : 0);
    if (!o.on) continue;
    for (var j = 0; j < 3; j++) {
      var r = o.r[j]; if (!r.s) continue;
      var key = r.s + " " + r.k;
      acc[key] = (acc[key] || 0) + val;
    }
  }
  for (var ka in acc) if (!active[ka]) { var pa = ka.split(" "); outlet(0, +pa[0], "hl", +pa[1], 1); active[ka] = 1; }
  for (var kb in active) if (acc[kb] === undefined) { var pb = kb.split(" "); outlet(0, +pb[0], "hl", +pb[1], 0); delete active[kb]; }
  for (var k in acc) {
    if (prev[k] === undefined || Math.abs(prev[k] - acc[k]) > 0.0005) {
      var p = k.split(" "); outlet(0, +p[0], +p[1], acc[k]); prev[k] = acc[k];
    }
  }
  for (var k2 in prev) {
    if (acc[k2] === undefined) { var q = k2.split(" "); outlet(0, +q[0], +q[1], 0); delete prev[k2]; }
  }
}
