// Desktop audio setup. Use the device name from the Core Audio menu so the
// system output remains available when interfaces are connected or reordered.
inlets = 1;
outlets = 5;

let running = false;
let testPending = false;
let selecting = false;
let deviceIndex = 0;
let systemIndex = -1;

function dsp(value) {
    running = value === 1;
    outlet(1, "set", value);
    playTest();
}

function test() {
    testPending = true;
    if (running) playTest();
    else outlet(1, 1);
}

function playTest() {
    if (!running || !testPending) return;
    testPending = false;
    outlet(0, "bang");
}

function choose() {
    selecting = true;
    outlet(2, "bang");
}

function clear() {
    deviceIndex = 0;
    systemIndex = -1;
}

function append() {
    const label = arrayfromargs(arguments).join(" ");
    if (label === "System Device" || label.startsWith("System Device:")) systemIndex = deviceIndex;
    deviceIndex++;
}

function current() {
    if (!selecting) return;
    selecting = false;
    if (systemIndex < 0) {
        outlet(4, "open");
        return;
    }
    outlet(3, 0);
    outlet(2, systemIndex);
}
