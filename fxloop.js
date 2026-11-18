// One instance per file player. Keep the playlist selection and the fade
// envelope on the same bounds, including when End is the only knob moving.
inlets = 1;
outlets = 3;

const MIN_LENGTH = 0.02;
let start = 0;
let length = 1;
let end = 1;
let loaded = false;

function setstart(value) {
    start = value;
    update();
}

function setlength(value) {
    length = value;
    update();
}

function setend(value) {
    end = value;
    update();
}

function unload() {
    loaded = false;
}

function play() {
    loaded = true;
    update();
    outlet(0, 1);
}

function update() {
    const left = Math.min(start, 1 - MIN_LENGTH);
    const span = Math.max(MIN_LENGTH, length * (1 - left));
    const right = Math.min(1, left + MIN_LENGTH + end * (span - MIN_LENGTH));
    outlet(1, "loopstart", left);
    outlet(1, "loopend", right);
    if (loaded) outlet(2, "selection", 1, left, right);
}

// Handoff loads a usable clip without issuing playlist~'s play command.
function loadstopped() {
    loaded = true;
    update();
}
