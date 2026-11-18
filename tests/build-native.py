from pathlib import Path
import json,shutil,re,tempfile,argparse
ROOT=Path(__file__).resolve().parents[1]
SOURCE=ROOT
parser=argparse.ArgumentParser(description='Build an isolated native receiver fixture; does not launch Max.')
parser.add_argument('--exchange-root',type=Path,required=True,help='Same private exchange root as the Looper sender/Field Kit fixtures')
args=parser.parse_args()
folder=Path(tempfile.mkdtemp(prefix='fx-handoff-native-',dir='/private/tmp'))
for p in SOURCE.iterdir():
    if p.is_file() and p.suffix in {'.js','.maxpat'}:shutil.copy2(p,folder/p.name)
shutil.copytree(SOURCE/'handoff',folder/'handoff')
payload=json.loads((SOURCE/'fxpatcher.maxpat').read_text());patch=payload['patcher']
blocked={'adc~','dac~','ezadc~','ezdac~','adstatus','notein','midiin','midiout','noteout','ctlin','ctlout','bendin','bendout','pgmin','pgmout','touchin','touchout','polyin','polyout'}
removed=set()
for item in patch['boxes']:
    box=item['box'];parts=box.get('text','').split()
    if box.get('maxclass') in blocked or parts and parts[0] in blocked or parts and parts[0]=='node.script' and box.get('varname')!='fx_handoff_worker':removed.add(box['id'])
patch['boxes']=[item for item in patch['boxes'] if item['box']['id'] not in removed]
patch['lines']=[line for line in patch['lines'] if all(line['patchline'][end][0] not in removed for end in ['source','destination'])]
for item in patch['boxes']:
    box=item['box']
    if box.get('varname')=='fx_handoff_worker':box['text']='node.script fx-handoff-qa-node.js @autostart 1 @defer 1'
# Keep the fixture's local fx.* control buses separate from user Max documents.
def isolate(value):
    if isinstance(value,dict):
        for key,item in list(value.items()):
            if key=='text' and isinstance(item,str) and re.match(r'^(r|s|receive|send) fx\.',item):value[key]=re.sub(r' fx\.', ' fx_handoff_qa.', item, count=1)
            else:isolate(item)
    elif isinstance(value,list):
        for item in value:isolate(item)
for p in folder.glob('*.maxpat'):
    data=json.loads(p.read_text());isolate(data);p.write_text(json.dumps(data,indent=2)+'\n')
isolate(payload)
for p in folder.glob('*.js'):
    s=p.read_text();s=re.sub(r'(messnamed\([\"\'])fx\.',r'\1fx_handoff_qa.',s);p.write_text(s)
worker="""const max=require('max-api');
const adapted={outlet:(...args)=>max.outlet(...args),addHandler(name,handler){max.addHandler(name,(id,...args)=>{if(typeof id==='string'&&id.startsWith('qa-')){max.outlet('qa_ack',name,id,...args);return;}return handler(id,...args);});}};
require('./handoff/max-exchange').start({role:'fx-patcher',root:__EXCHANGE_ROOT__,max:adapted});
"""
(folder/'fx-handoff-qa-node.js').write_text(worker.replace('__EXCHANGE_ROOT__',json.dumps(str(args.exchange_root.resolve()))))
bs={item['box'].get('varname'):item['box']['id'] for item in patch['boxes']}
def add(name,text,inputs=1,outputs=1):
    patch['boxes'].append({'box':{'id':name,'varname':name,'maxclass':'newobj','text':text,'numinlets':inputs,'numoutlets':outputs,'outlettype':['']*outputs,'patching_rect':[30,3200,280,22]}});bs[name]=name

def wire(a,outlet,b,inlet=0):patch['lines'].append({'patchline':{'source':[bs[a],outlet],'destination':[bs[b],inlet]}})
add('fx_handoff_probe','v8 native-probe.js',3,0)
add('qa_content_a','prepend observecontent a');add('qa_content_b','prepend observecontent b')
wire('fileplayer',4,'qa_content_a');wire('qa_content_a',0,'fx_handoff_probe')
wire('fileplayerB',4,'qa_content_b');wire('qa_content_b',0,'fx_handoff_probe')
wire('fx_handoff_receiver',1,'fx_handoff_probe',1);wire('fx_handoff_worker',0,'fx_handoff_probe',2)
script=(ROOT/'tests/native-probe.js').read_text().replace('__FOLDER__',json.dumps(str(folder)+'/'))
(folder/'native-probe.js').write_text(script)
patch['dependency_cache']=[]
output=folder/'FX Patcher - Native Audio Handoff Receiver.maxpat'
output.write_text(json.dumps(payload,indent=2)+'\n');(folder/'native-results.json').write_text('{}\n')
print(output)
