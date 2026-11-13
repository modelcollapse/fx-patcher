// FX Patcher scenes + scene sequencer (v8). Inlet: messages. Outlets: 0 scene commands, 1 UI, 2 clock.
inlets = 1;
outlets = 3;

var shiftDown = 0, storeMode = 0;
var steps = [];
for (var i = 0; i < 8; i++) steps.push({ scene: i % 4, bars: 2, chance: 100 });
var bpm = 120, bpb = 4, running = 0, repeat = 1, step = -1, beat = 0, stepBeats = 8, nextBarFlag = 0;

function shiftkey(v) { shiftDown = v; }
function store_mode(v) { storeMode = v; }
function shiftHeld() { try { return max.shiftkeydown ? 1 : 0; } catch (e) { return 0; } }
function click(k) {
    if (shiftDown || storeMode || shiftHeld()) {
        outlet(0, "store", k);
        storeMode = 0; outlet(1, "storemode", 0);
    } else {
        if (running) stop();
        recallScene(k);
    }
}
function recallScene(k) { outlet(0, "recall", k); outlet(1, "now", "Now  " + k); }
function slotlist() {
    var stored = arrayfromargs(arguments);
    for (var k = 1; k <= 8; k++) outlet(1, "label", k, stored.indexOf(k) >= 0 ? (k + " •") : ("" + k));
}
function setbpm(v) { bpm = Math.max(20, Math.min(300, v)); outlet(2, "interval", 60000 / bpm); }
function setbpb(v) { bpb = Math.max(1, Math.min(16, Math.floor(v))); }
function setrepeat(v) { repeat = v ? 1 : 0; }
function setstep(i, key, v) {
    if (i < 1 || i > 8) return;
    var s = steps[i - 1];
    if (key == "scene") s.scene = Math.floor(v);
    else if (key == "bars") s.bars = Math.max(1, Math.floor(v));
    else if (key == "chance") s.chance = Math.max(0, Math.min(100, v));
    updNext();
}
function start() {
    running = 1; step = -1; beat = 0; nextBarFlag = 0;
    advance();
    outlet(2, "interval", 60000 / bpm);
    outlet(2, "run", 1);
}
function stop() {
    running = 0; outlet(2, "run", 0);
    outlet(1, "next", "Next  —"); outlet(1, "bar", "Bar  —"); outlet(1, "step", 0);
}
function nextbar() { if (running) nextBarFlag = 1; }
function findNext(from) {
    var s = from;
    for (var t = 0; t < 8; t++) {
        s++;
        if (s >= 8) { if (repeat) s = 0; else return -1; }
        if (steps[s].scene < 8) return s;
    }
    return -1;
}
function advance() {
    var s = findNext(step);
    if (s < 0) { stop(); return; }
    step = s; beat = 0;
    var st = steps[step];
    stepBeats = st.bars * bpb;
    if (Math.random() * 100 < st.chance) recallScene(st.scene + 1);
    outlet(1, "step", step + 1);
    outlet(1, "bar", "Bar  1 / " + st.bars);
    updNext();
}
function updNext() {
    if (!running) return;
    var n = findNext(step);
    outlet(1, "next", n < 0 ? "Next  —" : ("Next  " + (steps[n].scene + 1)));
}
function tick() {
    if (!running) return;
    beat++;
    if (nextBarFlag && beat % bpb == 0) { nextBarFlag = 0; advance(); return; }
    if (beat >= stepBeats) { advance(); return; }
    outlet(1, "bar", "Bar  " + (Math.floor(beat / bpb) + 1) + " / " + steps[step].bars);
}
