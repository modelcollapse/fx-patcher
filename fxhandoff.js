inlets = 1;
outlets = 2;

const host = this.patcher;
const slots = {
    a: { player: 'fileplayer', loop: 'fx_loop_a', rec: 'file_rec', source: 'srcA_in', sourceValue: 3,
        reveal: ['dropbg','droplabel','dropzone'], status: 'handoff_status_a' },
    b: { player: 'fileplayerB', loop: 'fx_loop_b', rec: 'file_rec_b', source: 'srcB_in', sourceValue: 4,
        reveal: ['dropbgB','droplabelB','dropzoneB'], status: 'handoff_status_b' }
};
const timeLimit = 12000;
let active = null;
let capturing = { a: false, b: false };
let accepted = { a: null, b: null };

function get(name) { return host.getnamed(name); }
function tell(name, ...args) { const box = get(name); if (box) box.message(...args); }
function number(box) { const value = box && box.getvalueof(); return Number(Array.isArray(value) ? value[0] : value); }
function status(slot, text) { tell(slots[slot].status, 'set', text); outlet(1, 'handoff_status', slot, text); }
function copy(value) { return JSON.parse(JSON.stringify(value)); }
function key(value) {
    const path = String(value || '').replace(/\\/g, '/');
    const volume = /^([^/:]+):(\/.*)$/.exec(path);
    if (!volume) return path;
    return volume[1] === 'Macintosh HD' ? volume[2] : '/Volumes/' + volume[1] + volume[2];
}
function base(value) { return key(value).split('/').pop(); }
function pathMatches(clip, path) {
    const actual = key(clip.absolutepath || clip.filename);
    return actual === key(path) || (!actual.includes('/') && actual === base(path));
}
function clipPath(clip) { return clip.absolutepath || clip.filename; }
function signature(clips) { return clips.map(clip => [clip.id || '', key(clipPath(clip))]); }
function sameSignature(left, right) { return JSON.stringify(signature(left)) === JSON.stringify(signature(right)); }
function player(req) { return get(slots[req.slot].player); }
function pending(req) { return active === req; }
function event(name, ...args) { outlet(0, name, ...args); outlet(1, 'handoff_event', name, ...args); }
function defer(req, callback, milliseconds = 0) {
    if (req.task) req.task.cancel();
    req.task = new Task(() => {
        if (!pending(req)) return;
        try { callback(); } catch (error) { reject(req, String(error.message || error)); }
    }, this);
    req.task.schedule(milliseconds);
}
function cleanStage(req) {
    try { if (req.watcher) host.remove(req.watcher); } catch (_) {}
    try { if (req.stage) host.remove(req.stage); } catch (_) {}
    req.watcher = null; req.stage = null;
}
function finish(req) { if (req.task) req.task.cancel(); cleanStage(req); if (pending(req)) active = null; }
function reject(req, reason) {
    if (!pending(req)) return;
    if (req.phase === 'committing' || req.phase === 'verify') {
        rollback(req, reason);
        return;
    }
    if (req.phase === 'rollbackverify') {
        status(req.slot, 'Incoming audio failed. Previous-file recovery could not be verified: ' + reason);
        finish(req);
        event('failed', req.id, req.rollbackReason + ' Recovery could not be verified: ' + reason);
        return;
    }
    removeIncoming(req);
    status(req.slot, 'Incoming audio failed; previous file kept. ' + reason);
    finish(req);
    event('failed', req.id, reason);
}
function removeIncoming(req) {
    if (!req.incomingSeen || !req.lastContent) return;
    const clips = req.lastContent.clips || [];
    // Native playlist~ does not provide clip IDs in getcontent. Exchange paths
    // are unique per job, so use that path unless an actual ID is available.
    const matches = clips.map((clip, index) => ({clip,index})).filter(item => pathMatches(item.clip, req.path));
    const item = req.addedId !== undefined ? matches.find(item => item.clip.id === req.addedId)
        : matches.length === 1 && !req.old.some(clip => pathMatches(clip, req.path)) ? matches[0]
        : matches.find(item => item.index === req.addedIndex && sameSignature(clips.slice(0,item.index),req.old));
    const index = item ? item.index : -1;
    if (index >= 0) player(req).message('remove', index + 1);
}
function exchange_load(id, path, label, kind, slot) {
    if (!slots[slot] || typeof id !== 'string' || !id || typeof path !== 'string' || !path) {
        event('failed', id || '', 'Choose File A or File B and a valid WAV.');
        return;
    }
    if (active || capturing[slot] || number(get(slots[slot].rec)) === 1) {
        event('busy', id, 'File ' + slot.toUpperCase() + ' is recording or receiving another sound.');
        return;
    }
    const req = { id, path, label: String(label || base(path)), kind, slot, phase: 'staging',
        started: Date.now(), old: null, addedId: undefined, incomingSeen: false, lastContent: null, task: null };
    active = req;
    status(slot, 'Receiving ' + req.label + ' — existing file is kept until loading succeeds.');
    try {
        const name = 'fx_handoff_stage_' + id.replace(/[^a-zA-Z0-9_]/g, '_');
        req.stageName = name;
        req.stage = host.newdefault(30, 2200, 'buffer~', name);
        req.watcher = host.newdefault(250, 2200, 'prepend', 'staged', id);
        if (!req.stage || !req.watcher) throw new Error('Could not allocate an incoming audio buffer.');
        host.connect(req.stage, 1, req.watcher, 0);
        host.connect(req.watcher, 0, get('fx_handoff_receiver'), 0);
        defer(req, () => reject(req, 'Max could not decode the incoming WAV.'), timeLimit);
        req.stage.message('replace', path);
    } catch (error) { reject(req, String(error.message || error)); }
}
function staged(id) {
    const req = active;
    if (!req || req.id !== id || req.phase !== 'staging') return;
    try {
        const buffer = new Buffer(req.stageName);
        if (buffer.framecount() < 1 || buffer.length() <= 0 || buffer.channelcount() < 1 || buffer.channelcount() > 2) {
            throw new Error('The incoming file has no mono or stereo audio.');
        }
        req.frames = buffer.framecount();
        req.sourceValue = number(get(slots[req.slot].source));
        req.phase = 'snapshot';
        query(req);
    } catch (error) { reject(req, String(error.message || error)); }
}
function query(req) {
    if (!pending(req)) return;
    if (Date.now() - req.started > timeLimit) { reject(req, 'The file player did not finish loading.'); return; }
    defer(req, () => query(req), 80);
    player(req).message('getcontent');
}
function playlistcontent(slot, selector, name) {
    const req = active;
    if (!req || req.slot !== slot || selector !== 'dictionary') return;
    try {
        const content = JSON.parse(new Dict(name).stringify());
        req.contentShape = { keys: Object.keys(content), clipsType: typeof content.clips, array: Array.isArray(content.clips) };
        const clips = Array.isArray(content.clips) ? content.clips : [];
        req.lastContent = { clips };
        if (req.phase === 'rollbackverify') {
            if (clips.length !== req.old.length || !clips.every((clip, index) => pathMatches(clip, clipPath(req.old[index])))) return;
            status(slot, 'Incoming audio failed; previous file restored, stopped. ' + req.rollbackReason);
            finish(req);
            event('failed', req.id, req.rollbackReason);
            return;
        }
        if (req.phase === 'snapshot') {
            req.old = copy(clips);
            req.phase = 'append';
            player(req).message('append', req.path);
            return;
        }
        if (req.phase === 'append') {
            const oldIds = new Set(req.old.filter(clip => clip.id !== undefined).map(clip => clip.id));
            const oldPath = req.old.some(clip => pathMatches(clip, req.path));
            const incoming = clips.filter(clip => pathMatches(clip, req.path) &&
                (clip.id !== undefined ? !oldIds.has(clip.id) : !oldPath));
            if (incoming.length === 1) {
                req.addedId = incoming[0].id;
                req.addedIndex = clips.indexOf(incoming[0]);
                req.incomingSeen = true;
            }
            const index = clips.findIndex((clip, index) => pathMatches(clip, req.path) &&
                sameSignature(clips.filter((_, other) => other !== index), req.old));
            if (clips.length !== req.old.length + 1 || index < 0) {
                if (req.incomingSeen) reject(req, 'The file player changed while the sound was arriving.');
                return;
            }
            // Remember the newly appended native clip before checking the old
            // prefix, so rejection can remove it if a user edits that prefix.
            req.addedId = clips[index].id;
            req.addedIndex = index;
            req.incomingSeen = true;
            req.phase = 'ready';
            defer(req, () => commit(req));
            return;
        }
        if (req.phase === 'verify') {
            if (clips.length !== 1 || !pathMatches(clips[0], req.path)) return;
            const playing = clips[0].content_state && clips[0].content_state.play;
            if (playing && Number(Array.isArray(playing) ? playing[0] : playing) !== 0) {
                player(req).message(0);
                return;
            }
            tell(slots[slot].source, slots[slot].sourceValue);
            const config = slots[slot];
            const box = get(config.player); if (box) box.setboxattr('hidden', 0);
            config.reveal.forEach(name => { const object = get(name); if (object) object.setboxattr('hidden', 1); });
            accepted[slot] = { id: req.id, path: req.path, label: req.label, frames: req.frames };
            status(slot, 'Loaded ' + req.label + ' in File ' + slot.toUpperCase() + '. Press Play to hear it.');
            finish(req);
            event('loaded', req.id);
        }
    } catch (error) { reject(req, String(error.message || error)); }
}
function applySettings(box, index, clip) {
    if (!clip) return;
    const states = clip.content_state || {};
    for (const name of ['speed','pitchshiftcent','pitchshift','timestretch','mode','quality',
        'formant','formantcorrection','pitchcorrection','basictuning','followglobaltempo','originaltempo','slurtime']) {
        if (states[name] !== undefined) {
            const value = Array.isArray(states[name]) ? states[name] : [states[name]];
            box.message('setclip', index, name, ...value);
        }
    }
    if (clip.loop !== undefined) box.message('setclip', index, 'loop', clip.loop);
    if (Array.isArray(clip.selection)) box.message('selection', index, ...clip.selection);
}
function commit(req) {
    if (!pending(req)) return;
    const clips = req.lastContent && req.lastContent.clips;
    const incomingIndex = clips ? clips.findIndex((clip,index) => pathMatches(clip,req.path) &&
        sameSignature(clips.filter((_,other) => other !== index),req.old)) : -1;
    if (!clips || clips.length !== req.old.length + 1 ||
        incomingIndex < 0) {
        reject(req, 'The file player changed before loading could finish.');
        return;
    }
    req.phase = 'committing';
    const box = player(req);
    // The old clips stay present through decode and native append verification.
    // Stop only this player at the explicit replacement commit; never start DSP.
    box.message(0);
    applySettings(box, incomingIndex + 1, req.old[0]);
    for (let index = clips.length; index >= 1; index--) {
        if (index !== incomingIndex + 1) box.message('remove', index);
    }
    tell(slots[req.slot].loop, 'loadstopped');
    req.phase = 'verify';
    query(req);
}
function rollback(req, reason) {
    req.phase = 'rollback';
    req.rollbackReason = reason;
    req.started = Date.now();
    try {
        const box = player(req);
        box.message(0);
        const content = req.lastContent && req.lastContent.clips || [];
        for (let index = content.length; index >= 1; index--) box.message('remove', index);
        req.old.forEach((clip, index) => {
            box.message('append', clipPath(clip), index + 1);
            applySettings(box, index + 1, clip);
        });
        if (!req.old.length) tell(slots[req.slot].loop, 'unload');
        else tell(slots[req.slot].loop, 'loadstopped');
        if (Number.isFinite(req.sourceValue)) tell(slots[req.slot].source, req.sourceValue);
        req.phase = 'rollbackverify';
        query(req);
    } catch (error) {
        reason += ' Previous file recovery needs attention: ' + String(error.message || error);
        status(req.slot, reason);
        finish(req);
        event('failed', req.id, reason);
    }
}
function capturestate(slot, value) {
    if (!slots[slot]) return;
    capturing[slot] = Boolean(value);
}
function capturefinished(slot) { if (slots[slot]) capturing[slot] = false; }
// The shared worker also publishes readiness/progress. Only exchange_load is a
// receiver command; accepting the informational messages avoids Max warnings.
function anything() {}
function getstate() { outlet(1, 'handoff_state', JSON.stringify({ active: active ? { id:active.id, slot:active.slot, phase:active.phase, contentShape:active.contentShape, lastContent:active.lastContent } : null, capturing, accepted })); }
function notifydeleted() { if (active) { const req = active; finish(req); event('busy', req.id, 'FX Patcher is closing.'); } }
