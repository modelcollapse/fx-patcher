'use strict';
const fs=require('node:fs'),path=require('node:path'),vm=require('node:vm'),assert=require('node:assert/strict');
const script=fs.readFileSync(path.join(__dirname,'../fxhandoff.js'),'utf8');
const checks=[];function test(name,run){run();checks.push(name);}
function fixture(){
 const messages=[],events=[],tasks=[],dicts=new Map(),buffers=new Map(),objects=new Map();let now=1000,context,serial=0,failAppend=false,failSettings=false,deferredAppend=false,nativeShape=false;
 const clips={a:[{id:'old-a',absolutepath:'/samples/old a.wav',filename:'old a.wav',loop:1,selection:[.2,.8],content_state:{play:[0],speed:[.5],pitchshiftcent:[300],timestretch:[1]}}],b:[{id:'old-b',absolutepath:'/samples/old b.wav',filename:'old b.wav',loop:0,selection:[0,1],content_state:{play:[0],speed:[1]}}]};
 function emit(slot){const name='dict-'+(++serial);dicts.set(name,structuredClone({clips:clips[slot]}));context.playlistcontent(slot,'dictionary',name);}
 function playlist(slot){return{message(command,...args){messages.push([slot,command,...args]);
  if(command==='getcontent')emit(slot);
  if(command==='append'){
   if(failAppend)return;
   const [file,index]=args;const clip={id:'new-'+(++serial),absolutepath:file,filename:path.basename(file),loop:0,selection:[0,1],content_state:{play:[0],speed:[1]}};
   if(nativeShape){delete clip.id;delete clip.selection;clip.content_state={};}
   clips[slot].splice(nativeShape?0:index===undefined?clips[slot].length:index-1,0,clip);if(!deferredAppend)emit(slot);
  }
  if(command==='remove'){clips[slot].splice(args[0]-1,1);emit(slot);}
  if(command===0)clips[slot].forEach(clip=>{if(nativeShape)delete clip.content_state.play;else clip.content_state.play=[0];});
  if(command==='setclip'){
   if(failSettings){failSettings=false;throw Error('Injected native settings failure');}
   const [index,key,...value]=args;if(key==='loop')clips[slot][index-1].loop=value[0];else clips[slot][index-1].content_state[key]=value;
  }
  if(command==='selection')clips[slot][args[0]-1].selection=args.slice(1);
 },setboxattr(name,value){messages.push([slot,'box',name,value]);}};}
 const values={srcA_in:1,srcB_in:2,file_rec:0,file_rec_b:0};
 const host={getnamed(name){
  if(objects.has(name))return objects.get(name);
  const object={getvalueof(){return values[name]||0;},message(...args){messages.push([name,...args]);if(typeof args[0]==='number')values[name]=args[0];},setboxattr(...args){messages.push([name,'box',...args]);}};objects.set(name,object);return object;
 },newdefault(x,y,type,...args){const object={type,args,message(command,file){messages.push([type,command,file]);if(type==='buffer~'&&command==='replace'&&file!=='/missing.wav'){buffers.set(args[0],{frames:9600,length:200,channels:2});context.staged(vm.runInContext('active.id',context));}}};return object;},connect(){},remove(object){if(object.type==='buffer~')buffers.delete(object.args[0]);}};
 objects.set('fileplayer',playlist('a'));objects.set('fileplayerB',playlist('b'));
 function Task(callback){this.callback=callback;tasks.push(this);}Task.prototype.cancel=function(){this.due=null;};Task.prototype.schedule=function(delay){this.due=now+delay;};
 class DateValue extends Date{static now(){return now;}}
 function Dict(name){this.stringify=()=>JSON.stringify(dicts.get(name));}
 function BufferValue(name){this.framecount=()=>buffers.get(name)?.frames||0;this.length=()=>buffers.get(name)?.length||0;this.channelcount=()=>buffers.get(name)?.channels||0;}
 context=vm.createContext({patcher:host,Task,Date:DateValue,Dict,Buffer:BufferValue,outlet:(...args)=>events.push(args)});vm.runInContext(script,context);
 return{context,clips,messages,events,values,buffers,flush(ms=0){const end=now+ms;for(let n=0;n<1000;n++){const task=tasks.filter(t=>t.due!==null&&t.due!==undefined&&t.due<=end).sort((a,b)=>a.due-b.due)[0];if(!task){now=end;return;}now=task.due;task.due=null;task.callback();}throw Error('Task loop');},failAppend(){failAppend=true;},failSettings(){failSettings=true;},deferAppend(){deferredAppend=true;},nativeShape(){nativeShape=true;for(const list of Object.values(clips))for(const clip of list)delete clip.id;}};
}
test('loads selected File B with preserved settings, no clear or autoplay, and verifies before ACK',()=>{
 const f=fixture();f.context.exchange_load('job-1','/owned/new.wav','New melody','chain','b');assert.ok(!f.events.some(e=>e[1]==='loaded'));f.flush();
 assert.equal(f.clips.b.length,1);assert.equal(f.clips.b[0].absolutepath,'/owned/new.wav');assert.deepEqual(f.clips.b[0].content_state.speed,[1]);assert.deepEqual(f.clips.b[0].content_state.play,[0]);
 assert.equal(f.clips.a[0].id,'old-a');assert.equal(f.values.srcA_in,1);assert.equal(f.values.srcB_in,4);assert.ok(f.events.some(e=>e[0]===0&&e[1]==='loaded'&&e[2]==='job-1'));
 assert.ok(!f.messages.some(e=>e[1]==='clear'||e[1]===1||e[1]==='start'));
 const append=f.messages.findIndex(e=>e[0]==='b'&&e[1]==='append'),remove=f.messages.findIndex(e=>e[0]==='b'&&e[1]==='remove');assert.ok(append>=0&&remove>append);
});
test('File A retains rate/pitch/selection and does not alter FX routing or start DSP',()=>{
 const f=fixture();f.context.exchange_load('job-2','/owned/selected.wav','Selected','slice','a');f.flush();const clip=f.clips.a[0];
 assert.deepEqual(clip.content_state.speed,[.5]);assert.deepEqual(clip.content_state.pitchshiftcent,[300]);assert.deepEqual(clip.selection,[.2,.8]);assert.equal(clip.loop,1);assert.equal(f.values.srcA_in,3);
 assert.ok(f.messages.some(e=>e[0]==='fx_loop_a'&&e[1]==='loadstopped'));assert.ok(!f.messages.some(e=>/audio|dac|routing/.test(e[0])));
});
test('bad decode keeps original clip and source selection intact',()=>{
 const f=fixture(),before=structuredClone(f.clips.a);f.context.exchange_load('job-3','/missing.wav','Missing','slice','a');f.flush(12000);
 assert.deepEqual(f.clips.a,before);assert.equal(f.values.srcA_in,1);assert.ok(f.events.some(e=>e[1]==='failed'&&e[2]==='job-3'));assert.equal(f.buffers.size,0);
});
test('native append failure never removes the previously loaded file',()=>{
 const f=fixture(),before=structuredClone(f.clips.b);f.failAppend();f.context.exchange_load('job-4','/owned/valid.wav','Valid','file','b');f.flush(12100);
 assert.deepEqual(f.clips.b,before);assert.ok(!f.messages.some(e=>e[0]==='b'&&e[1]==='remove'));assert.ok(f.events.some(e=>e[1]==='failed'));
});
test('commit failure restores and verifies prior media before reporting failure',()=>{
 const f=fixture();f.failSettings();f.context.exchange_load('job-5','/owned/valid.wav','Valid','file','a');f.flush();
 assert.equal(f.clips.a.length,1);assert.equal(f.clips.a[0].absolutepath,'/samples/old a.wav');assert.deepEqual(f.clips.a[0].content_state.speed,[.5]);assert.equal(f.values.srcA_in,1);assert.ok(f.events.some(e=>e[1]==='failed'&&e[2]==='job-5'));
});
test('recording/finishing and concurrent requests return busy without changing playlists',()=>{
 const f=fixture();f.context.capturestate('a',1);f.context.exchange_load('busy-a','/owned/valid.wav','Valid','file','a');assert.ok(f.events.some(e=>e[1]==='busy'&&e[2]==='busy-a'));f.context.capturestate('a',0);
 f.context.exchange_load('active-b','/missing.wav','Pending','file','b');f.context.exchange_load('busy-b','/owned/valid.wav','Valid','file','a');assert.ok(f.events.some(e=>e[1]==='busy'&&e[2]==='busy-b'));assert.equal(f.clips.a[0].id,'old-a');
});
test('an asynchronous prefix edit removes only the rejected incoming clip',()=>{
 const f=fixture();f.deferAppend();f.context.exchange_load('job-race','/owned/new.wav','New','file','a');
 assert.equal(f.clips.a.length,2);f.clips.a[0].absolutepath='/samples/manually changed.wav';
 f.context.patcher.getnamed('fileplayer').message('getcontent');
 assert.equal(f.clips.a.length,1);assert.equal(f.clips.a[0].absolutepath,'/samples/manually changed.wav');
 assert.ok(f.events.some(e=>e[1]==='failed'&&e[2]==='job-race'));assert.equal(f.values.srcA_in,1);
});
test('native volume path matching distinguishes external drives',()=>{
 const f=fixture();assert.equal(f.context.pathMatches({absolutepath:'Drive A:/samples/audio.wav'},'Drive B:/samples/audio.wav'),false);
 assert.equal(f.context.pathMatches({absolutepath:'Drive A:/samples/audio.wav'},'/Volumes/Drive A/samples/audio.wav'),true);
 assert.equal(f.context.pathMatches({absolutepath:'Macintosh HD:/private/tmp/audio.wav'},'/private/tmp/audio.wav'),true);
 assert.ok(!f.messages.some(e=>e[1]==='setclip'&&e[3]==='play'));
});
test('a concurrently appended user clip survives incoming transaction rejection',()=>{
 const f=fixture();f.deferAppend();f.context.exchange_load('job-extra','/owned/new.wav','New','file','a');
 f.clips.a.push({id:'manual-extra',absolutepath:'/samples/manual.wav',content_state:{play:[0]}});
 f.context.patcher.getnamed('fileplayer').message('getcontent');
 assert.deepEqual(f.clips.a.map(clip=>clip.absolutepath),['/samples/old a.wav','/samples/manual.wav']);
 assert.ok(f.events.some(e=>e[1]==='failed'&&e[2]==='job-extra'));
});
test('native sparse dictionaries without IDs or stopped-play state load and clean up safely',()=>{
 const f=fixture();f.nativeShape();f.context.exchange_load('native-ok','/owned/native.wav','Native','file','a');f.flush();
 assert.equal(f.clips.a.length,1);assert.equal(f.clips.a[0].absolutepath,'/owned/native.wav');assert.equal(f.clips.a[0].content_state.play,undefined);
 assert.ok(f.events.some(e=>e[1]==='loaded'&&e[2]==='native-ok'));
 const g=fixture();g.nativeShape();g.deferAppend();g.context.exchange_load('native-race','/owned/native.wav','Native','file','a');g.clips.a[1].absolutepath='/samples/manual.wav';g.context.patcher.getnamed('fileplayer').message('getcontent');
 assert.deepEqual(g.clips.a.map(clip=>clip.absolutepath),['/samples/manual.wav']);assert.ok(g.events.some(e=>e[1]==='failed'&&e[2]==='native-race'));
});
console.log('Passed '+checks.length+' FX handoff receiver regressions.');checks.forEach(name=>console.log('  '+name));
