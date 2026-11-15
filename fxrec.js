// FX Patcher recorder helper (node.script). Makes take folders, remembers the save folder.
const Max = require('max-api');
const fs = require('fs');
const path = require('path');
const os = require('os');
const { randomUUID } = require('crypto');
const { execFile } = require('child_process');

const settingsDir = path.join(os.homedir(), 'Documents', 'FX Patcher');
const settingsFile = path.join(settingsDir, 'settings.json');
const midiFile = path.join(settingsDir, 'midi-mappings.json');
let folder = path.join(settingsDir, 'Recordings');
try { const s = JSON.parse(fs.readFileSync(settingsFile, 'utf8')); if (s.folder) folder = s.folder; } catch (e) {}

const NAMES = ['Master', 'A', 'B', 'Slot1', 'Slot2', 'Slot3', 'Slot4', 'Slot5', 'Slot6', 'Slot7', 'Slot8'];

function saveSettings() {
  try { fs.mkdirSync(settingsDir, { recursive: true }); fs.writeFileSync(settingsFile, JSON.stringify({ folder }, null, 2)); } catch (e) {}
}
function showFolder() { Max.outlet('folder', folder.replace(os.homedir(), '~')); }

function timestamp() {
  const d = new Date();
  const pad = n => String(n).padStart(2, '0');
  return `${d.getFullYear()}-${pad(d.getMonth() + 1)}-${pad(d.getDate())} ${pad(d.getHours())}${pad(d.getMinutes())}${pad(d.getSeconds())}`;
}

function reservePath(parent, stem, extension, reserve) {
  fs.mkdirSync(parent, { recursive: true });
  for (let n = 1; ; n++) {
    const suffix = n === 1 ? '' : ` (${n})`;
    const candidate = path.join(parent, stem + suffix + extension);
    try {
      reserve(candidate);
      return candidate;
    } catch (err) {
      if (err.code !== 'EEXIST') throw err;
    }
  }
}

function validMapping(row) {
  if (!Array.isArray(row) || row.length !== 4 || !row.every(Number.isInteger)) return false;
  const [channel, cc, id, knob] = row;
  return channel >= 0 && cc >= 0 && cc <= 127 && id >= 1 && id <= 10 &&
    knob >= 1 && knob <= (id <= 8 ? 17 : 11);
}

function readMidiMaps() {
  try {
    const rows = JSON.parse(fs.readFileSync(midiFile, 'utf8'));
    if (!Array.isArray(rows) || !rows.every(validMapping)) throw new Error('Invalid MIDI mapping file');
    return rows;
  } catch (err) {
    if (err.code !== 'ENOENT') throw err;
  }

  // Import old channel-agnostic coll mappings while no JSON settings exist.
  let text;
  try {
    text = fs.readFileSync(path.join(__dirname, 'fxmidimap.txt'), 'utf8');
  } catch (err) {
    if (err.code === 'ENOENT') return [];
    throw err;
  }
  return Array.from(text.matchAll(/(?:^|[;\r\n])\s*(\d+)\s*,\s*(\d+)\s+(\d+)\s*(?=;|$)/gm),
    ([, cc, id, knob]) => [0, +cc, +id, +knob]).filter(validMapping);
}

function writeMidiMaps(rows) {
  fs.mkdirSync(settingsDir, { recursive: true });
  const temporary = path.join(settingsDir, `.midi-mappings-${randomUUID()}.tmp`);
  try {
    fs.writeFileSync(temporary, JSON.stringify(rows, null, 2) + '\n', { flag: 'wx' });
    fs.renameSync(temporary, midiFile);
  } finally {
    if (fs.existsSync(temporary)) fs.unlinkSync(temporary);
  }
}

function showMidiMaps() {
  try {
    readMidiMaps().forEach(row => Max.outlet('midimap', ...row));
  } catch (err) {
    Max.post(`Could not load MIDI mappings: ${err.message}`);
  }
}

Max.addHandler('midi_set', (...row) => {
  if (!validMapping(row)) return;
  try {
    const [channel, cc] = row;
    const rows = readMidiMaps().filter(map => map[0] !== channel || map[1] !== cc);
    rows.push(row);
    writeMidiMaps(rows);
  } catch (err) {
    Max.post(`Could not save MIDI mapping: ${err.message}`);
  }
});
Max.addHandler('midi_clear', () => {
  try {
    writeMidiMaps([]);
  } catch (err) {
    Max.post(`Could not clear MIDI mappings: ${err.message}`);
  }
});
Max.addHandler('init', () => {
  showFolder();
  showMidiMaps();
});
Max.addHandler('setfolder', (...parts) => {
  let s = parts.join(' ').replace(/^[^:\/]+:/, '');
  if (s.endsWith('/') && s.length > 1) s = s.slice(0, -1);
  folder = s; saveSettings(); showFolder();
});
function startTake(sources, request) {
  if (!sources.length) {
    rejectTake('Arm a source to record', request);
    return;
  }

  let take;
  try {
    take = reservePath(folder, timestamp(), '', dir => fs.mkdirSync(dir));
  } catch (err) {
    rejectTake('Could not create folder', request);
    return;
  }
  const takeName = path.basename(take);
  if (request === undefined) {
    sources.forEach(i => Max.outlet('open', i, path.join(take, `${NAMES[i]}.wav`)));
    Max.outlet('go');
    Max.outlet('take', takeName);
  } else {
    sources.forEach(i => Max.outlet('recordstart', request, i, path.join(take, `${NAMES[i]}.wav`)));
    Max.outlet('recordgo', request, takeName);
  }
}

function rejectTake(message, request) {
  if (request !== undefined) Max.outlet('recordrejected', request);
  Max.outlet('status', message);
}

Max.addHandler('start', (...armed) => {
  const sources = [...new Set(armed.filter(i => Number.isInteger(i) && i >= 0 && i < NAMES.length))];
  startTake(sources);
});
Max.addHandler('requesttake', (request, ...mask) => {
  const sources = Array.from(NAMES.keys()).filter(i => mask[i] === 1);
  startTake(sources, request);
});
Max.addHandler('openfolder', () => {
  const target = path.resolve(folder);
  try {
    fs.mkdirSync(target, { recursive: true });
  } catch (err) {
    Max.outlet('status', 'Could not open folder');
    return;
  }
  execFile('/usr/bin/open', [target], err => {
    if (err) Max.outlet('status', 'Could not open folder');
  });
});

// File A / File B "record into buffer": a quick capture, separate from the take folders
// above, that gets loaded straight back into that loop player once recording stops.
const captureDir = path.join(os.homedir(), 'Documents', 'FX Patcher', 'Loop Captures');
const captures = new Map();

function captureReply(selector, which, request, ...args) {
  if (request === undefined) Max.outlet(selector, which, ...args);
  else Max.outlet(selector, which, request, ...args);
}

Max.addHandler('capture', (which, request) => {
  if (which !== 'A' && which !== 'B') return;

  let file;
  let stat;
  try {
    // Reserve the name across Max instances. sfrecord~ overwrites this file when it opens it.
    file = reservePath(captureDir, `File ${which} ${timestamp()}`, '.wav', target => {
      const fd = fs.openSync(target, 'wx');
      try { stat = fs.fstatSync(fd); } finally { fs.closeSync(fd); }
    });
  } catch (err) {
    captureReply('capturefailed', which, request);
    Max.outlet('status', 'Could not create loop capture');
    return;
  }
  captures.set(file, { which, request, stat, finishing: false });
  captureReply('capturepath', which, request, file);
});

function waveState(file) {
  const fd = fs.openSync(file, 'r');
  try {
    const stat = fs.fstatSync(fd);
    if (stat.size === 0) return 'empty';
    const header = Buffer.alloc(16);
    if (fs.readSync(fd, header, 0, 12, 0) !== 12 ||
        header.toString('ascii', 0, 4) !== 'RIFF' ||
        header.toString('ascii', 8, 12) !== 'WAVE') return 'incomplete';

    let blockAlign = 0;
    for (let offset = 12; offset + 8 <= stat.size;) {
      if (fs.readSync(fd, header, 0, 8, offset) !== 8) break;
      const name = header.toString('ascii', 0, 4);
      const bytes = header.readUInt32LE(4);
      const data = offset + 8;
      if (name === 'fmt ' && bytes >= 16 && fs.readSync(fd, header, 0, 16, data) === 16) {
        blockAlign = header.readUInt16LE(12);
      }
      if (name === 'data' && blockAlign > 0) {
        if (bytes >= blockAlign && bytes % blockAlign === 0 && data + bytes <= stat.size) return 'audio';
        if (bytes === 0 && data === stat.size) return 'empty';
        break;
      }
      offset = data + bytes + (bytes % 2);
    }
    return 'incomplete';
  } finally {
    fs.closeSync(fd);
  }
}

function discardEmpty(file, reservation, allowWaveHeader = false) {
  try {
    const stat = fs.lstatSync(file);
    if (!stat.isFile() || stat.dev !== reservation.stat.dev || stat.ino !== reservation.stat.ino) return;
    if (stat.size === 0 || (allowWaveHeader && waveState(file) === 'empty')) fs.unlinkSync(file);
  } catch (err) {
    if (err.code !== 'ENOENT') Max.post(`Could not remove empty loop capture: ${err.message}`);
  }
}

Max.addHandler('discardcapture', file => {
  const reservation = captures.get(file);
  if (!reservation || reservation.finishing) return;
  captures.delete(file);
  discardEmpty(file, reservation);
});

Max.addHandler('finishcapture', async (which, request, file) => {
  if (file === undefined) {
    file = request;
    request = undefined;
  }
  const reservation = captures.get(file);
  if (!reservation || reservation.which !== which || reservation.request !== request || reservation.finishing) return;
  reservation.finishing = true;

  for (let n = 0; n <= 5; n++) {
    try {
      if (waveState(file) === 'audio') {
        captures.delete(file);
        captureReply('capturecomplete', which, request, file);
        return;
      }
    } catch (err) {
      if (err.code !== 'ENOENT') Max.post(`Could not read loop capture: ${err.message}`);
    }
    if (n < 5) await new Promise(resolve => setTimeout(resolve, 50));
  }
  captures.delete(file);
  discardEmpty(file, reservation, true);
  captureReply('capturefailed', which, request);
  Max.outlet('status', `File ${which} capture contained no readable WAV audio`);
});

showFolder();
showMidiMaps();
