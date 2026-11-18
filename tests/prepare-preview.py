"""Make a signed, separately identified visual/startup preview; never launch it."""
from pathlib import Path
import json
import plistlib
import re
import subprocess
import sys
import tempfile
import uuid

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT))
from mxf import Collective


def prepare(source: Path):
    folder = Path(tempfile.mkdtemp(prefix='fx-patcher-preview-', dir='/private/tmp'))
    # Max locates its startup .mxf/.rsrc by the application basename. Preserve
    # that basename; the private parent folder and bundle ID isolate the copy.
    app = folder / 'FX Patcher.app'
    identifier = 'com.modelcollapse.fxpatcher.handoff-preview-' + uuid.uuid4().hex[:10]
    preferences = 'FX Patcher Handoff Preview ' + identifier[-10:]
    copied = subprocess.run(['/usr/bin/ditto', '--noextattr', '--norsrc', '--noqtn', str(source), str(app)], capture_output=True,text=True)
    if copied.returncode:
        # macOS may deny copying provenance metadata while copying every byte.
        # Only accept that case after the complete copied signature verifies.
        subprocess.run(['/usr/bin/codesign','--verify','--deep','--strict',str(app)],check=True)
    resources = app / 'Contents/Resources'
    path = resources / 'FX Patcher.mxf'
    collective = Collective(path.read_bytes())
    data = json.loads(collective.resources()['fxpatcher.maxpat'].rstrip(b'\0'))
    for entry in data['patcher']['boxes']:
        box = entry['box']
        if box.get('text', '').startswith('standalone '):
            box['text'] = 'standalone @preffilename ' + json.dumps(preferences) + ' @usesearchpath 0 @statusvisible 0'
            box['saved_object_attributes']['preffilename'] = preferences
            box['saved_object_attributes']['bundleidentifier'] = identifier
    wrapper = (resources / 'fx-handoff-node.js').read_text().replace(
        "start({ role: 'fx-patcher' })", "start({ role: 'fx-patcher', root: " + json.dumps(str(folder/'exchange')) + ' })')
    # Preview-only startup sentinel diagnoses collective extraction paths. It
    # contains no environment variables or audio and never ships in production.
    marker = json.dumps(str(folder/'node-boot.json'))
    wrapper = wrapper.replace("let location =", "fs.writeFileSync("+marker+", JSON.stringify({phase:'entry',dirname:__dirname,execPath:process.execPath}));\nlet location =",1)
    wrapper += "\nfs.writeFileSync("+marker+", JSON.stringify({phase:'started',dirname:__dirname,execPath:process.execPath,module:location}));\n"
    qa = """inlets=1;outlets=0;
const host=this.patcher,folder=__FOLDER__;let inspectTask,quitTask;
function read(path){const f=new File(path,'read');if(!f.isopen)return null;let s='';while(f.position<f.eof)s+=f.readstring(Math.min(2048,f.eof-f.position));f.close();try{return JSON.parse(s);}catch(_){return{s};}}
function loadbang(){inspectTask=new Task(()=>{const boot=read(folder+'node-boot.json'),report={mainLoaded:true,nodeBoot:boot,objects:{},time:Date.now()};for(const name of ['fx_handoff_receiver','fx_handoff_worker','fileplayer','fileplayerB'])report.objects[name]=Boolean(host.getnamed(name));report.ok=Boolean(boot&&boot.phase==='started')&&Object.values(report.objects).every(Boolean);const f=new File(folder+'standalone-results.json','write');if(f.isopen){const s=JSON.stringify(report,null,2);f.eof=0;for(let i=0;i<s.length;i+=2048)f.writestring(s.slice(i,i+2048));f.close();}host.wind.dirty=false;quitTask=new Task(()=>messnamed('max','quit'),this);quitTask.schedule(1000);},this);inspectTask.schedule(25000);}
""".replace('__FOLDER__',json.dumps(str(folder)+'/'))
    data['patcher']['boxes'].append({'box':{'id':'fx_preview_qa','varname':'fx_preview_qa','maxclass':'newobj',
        'text':'v8 fx-preview-qa.js','numinlets':1,'numoutlets':0,'patching_rect':[3600,2100,220,22]}})
    updated, _ = collective.replace({'fxpatcher.maxpat': json.dumps(data,indent=2).encode()+b'\0',
                                     'fx-handoff-node.js': wrapper.encode(),'fx-preview-qa.js':qa.encode()})
    path.write_bytes(updated)
    (resources / 'fx-handoff-node.js').write_text(wrapper)
    (resources / 'fx-preview-qa.js').write_text(qa)
    # The patch's standalone attribute is not sufficient: Max reads this
    # resource before it opens the main patch and configures MIDI/audio.
    resource=resources/'FX Patcher.rsrc'
    text=subprocess.check_output(['/usr/bin/DeRez','-useDF',str(resource)]).decode('mac_roman')
    encoded=preferences.encode('mac_roman')
    replacement="data 'STR#' (4013) {\n    $\""+(b'\x00\x01'+bytes([len(encoded)])+encoded).hex().upper()+"\"\n};"
    text,count=re.subn(r"data 'STR#' \(4013\) \{.*?\n\};",lambda _:replacement,text,flags=re.S)
    if count!=1:raise ValueError('Expected one standalone preference resource STR#4013.')
    with tempfile.TemporaryDirectory(prefix='fx-preview-prefs-',dir='/private/tmp') as temporary:
        r=Path(temporary)/'preferences.r';r.write_bytes(text.encode('mac_roman'))
        result=Path(temporary)/'preferences.rsrc'
        subprocess.run(['/usr/bin/Rez','-useDF',str(r),'-o',str(result)],check=True)
        resource.write_bytes(result.read_bytes())
    metadata = app / 'Contents/Info.plist'
    with metadata.open('rb') as file:info = plistlib.load(file)
    info['CFBundleIdentifier'] = identifier
    info['CFBundleName'] = info['CFBundleDisplayName'] = 'FX Patcher'
    info.pop('CFBundleDocumentTypes', None)
    info.pop('CFBundleURLTypes', None)
    with metadata.open('wb') as file:plistlib.dump(info,file,sort_keys=False)
    subprocess.run(['/usr/bin/xattr','-cr',str(app)],check=True)
    subprocess.run(['/usr/bin/codesign','--force','--deep','--sign','-','--timestamp=none',
                    '--preserve-metadata=entitlements,flags,runtime',str(app)],check=True)
    subprocess.run(['/usr/bin/codesign','--verify','--deep','--strict',str(app)],check=True)
    report = {'app':str(app),'identifier':identifier,'preferences':preferences,
              'exchangeRoot':str(folder/'exchange'),'launchPerformed':False,'resourcePreferencesIsolated':True,
              'autoQuitAfterSeconds':26,'results':str(folder/'standalone-results.json')}
    (folder/'preview-info.json').write_text(json.dumps(report,indent=2)+'\n')
    return report


if __name__ == '__main__':
    print(json.dumps(prepare(Path(sys.argv[1]).resolve()),indent=2))
