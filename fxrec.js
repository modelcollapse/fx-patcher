// FX Patcher recorder helper (node.script). Makes take folders, remembers the save folder.
const Max = require('max-api');
const fs = require('fs');
const path = require('path');
const os = require('os');
const { exec } = require('child_process');

const settingsDir = path.join(os.homedir(), 'Documents', 'FX Patcher');
const settingsFile = path.join(settingsDir, 'settings.json');
let folder = path.join(settingsDir, 'Recordings');
try { const s = JSON.parse(fs.readFileSync(settingsFile, 'utf8')); if (s.folder) folder = s.folder; } catch (e) {}

const NAMES = ['Master', 'A', 'B', 'Slot1', 'Slot2', 'Slot3', 'Slot4', 'Slot5', 'Slot6', 'Slot7', 'Slot8'];

function saveSettings() {
  try { fs.mkdirSync(settingsDir, { recursive: true }); fs.writeFileSync(settingsFile, JSON.stringify({ folder }, null, 2)); } catch (e) {}
}
function showFolder() { Max.outlet('folder', folder.replace(os.homedir(), '~')); }

Max.addHandler('init', () => showFolder());
Max.addHandler('setfolder', (...parts) => {
  let s = parts.join(' ').replace(/^[^:\/]+:/, '');
  if (s.endsWith('/') && s.length > 1) s = s.slice(0, -1);
  folder = s; saveSettings(); showFolder();
});
Max.addHandler('start', (...armed) => {
  const d = new Date(); const p = n => String(n).padStart(2, '0');
  const stamp = `${d.getFullYear()}-${p(d.getMonth() + 1)}-${p(d.getDate())} ${p(d.getHours())}${p(d.getMinutes())}${p(d.getSeconds())}`;
  let take = path.join(folder, stamp); let n = 2;
  while (fs.existsSync(take)) take = path.join(folder, `${stamp} (${n++})`);
  try { fs.mkdirSync(take, { recursive: true }); } catch (e) { Max.outlet('status', 'Could not create folder'); return; }
  armed.forEach(i => Max.outlet('open', i, path.join(take, `${NAMES[i] || 'Src' + i}.wav`)));
  Max.outlet('go');
  Max.outlet('take', path.basename(take));
});
Max.addHandler('openfolder', () => { try { fs.mkdirSync(folder, { recursive: true }); } catch (e) {} exec(`open "${folder}"`); });

// File A / File B "record into buffer": a quick capture, separate from the take folders
// above, that gets loaded straight back into that loop player once recording stops.
const captureDir = path.join(os.homedir(), 'Documents', 'FX Patcher', 'Loop Captures');
Max.addHandler('capture', (which) => {
  try { fs.mkdirSync(captureDir, { recursive: true }); } catch (e) { Max.outlet('status', 'Could not create folder'); return; }
  const d = new Date(); const p = n => String(n).padStart(2, '0');
  const stamp = `${d.getFullYear()}-${p(d.getMonth() + 1)}-${p(d.getDate())} ${p(d.getHours())}${p(d.getMinutes())}${p(d.getSeconds())}`;
  const file = path.join(captureDir, `File ${which} ${stamp}.wav`);
  Max.outlet('capturepath', which, file);
});

showFolder();
