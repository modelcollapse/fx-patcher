// Keep the arm snapshot and folder reply tied to the same Record press.
inlets = 1;
outlets = 5;

let request = 0;
let armed = [1];
let paths = null;
let recording = false;

function arms() {
    armed = arrayfromargs(arguments);
}

function toggle(value) {
    if (value) {
        paths = [];
        outlet(0, ["requesttake", ++request].concat(armed));
        return;
    }

    paths = null;
    outlet(2, recording ? 0 : -1);
    recording = false;
}

function recordstart(id, source, path) {
    if (id !== request || !paths) return;
    paths.push([source, path]);
}

function recordgo(id, name) {
    if (id !== request || !paths) return;
    for (const path of paths) outlet(1, path);
    paths = null;
    recording = true;
    outlet(4, name);
    outlet(2, 1);
}

function recordrejected(id) {
    if (id !== request || !paths) return;
    paths = null;
    outlet(3, "set", 0);
}
