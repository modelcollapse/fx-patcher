// File A/B capture. Node prepares and checks each WAV; Max records the input.
inlets = 1;
outlets = 5;

const player = jsarguments[1];
let request = 0;
let waiting = false;
let recordingPath = null;
let finishing = false;

function toggle(value) {
    if (value) {
        request++;
        waiting = true;
        outlet(4, 1);
        finishing = false;
        outlet(0, "capture", player, request);
        return;
    }

    waiting = false;
    if (!recordingPath) { outlet(4, 0); return; }
    outlet(1, "stop");
    finishing = true;
    outlet(0, "finishcapture", player, request, recordingPath);
    recordingPath = null;
}

function capturepath(id, path) {
    if (id !== request || !waiting) {
        outlet(0, "discardcapture", path);
        return;
    }
    waiting = false;
    recordingPath = path;
    outlet(1, "start", path);
}

function capturecomplete(id, path) {
    if (id !== request || !finishing) return;
    finishing = false;
    outlet(4, 0);
    outlet(2, path);
}

function capturefailed(id) {
    if (id !== request) return;
    waiting = false;
    finishing = false;
    outlet(4, 0);
    outlet(3, "set", 0);
}
