inlets=3;outlets=0;
const host=this.patcher,folder=__FOLDER__,report={checks:[],completed:false,pipeline:{waiting:true}};
let task,closing,pipelineTimeout,contents={a:null,b:null},receiverState,events=[],ready=false,pipelineId=null;
function obj(name){const value=host.getnamed(name);if(!value)throw Error('Missing '+name);return value;}
function send(name,...args){obj(name).message(...args);}
function receiver(...args){send('fx_handoff_receiver',...args);}
function assert(ok,message,detail){if(!ok)throw Error(message+(detail===undefined?'':' '+JSON.stringify(detail)));}
function check(name,run){try{report.checks.push({name,pass:true,data:run()});}catch(error){report.checks.push({name,pass:false,error:String(error.message||error)});}}
function after(callback,ms){task=new Task(()=>{try{callback();}catch(error){report.error=String(error.message||error);publish();}},this);task.schedule(ms);}
function observecontent(slot,selector,name){
 if(!report.rawMessages)report.rawMessages=[];
 report.rawMessages.push({slot,selector,name});if(report.rawMessages.length>8)report.rawMessages.shift();
 if(selector==='dictionary')contents[slot]=JSON.parse(new Dict(name).stringify());
}
function anything(...args){
 if(inlet===1&&messagename==='handoff_state')receiverState=JSON.parse(args[0]);
 if(inlet===1&&messagename==='handoff_event'){
  events.push(args);
  if(args[0]==='loaded'&&!String(args[1]).startsWith('qa-')){pipelineId=args[1];after(verifyPipeline,100);}
 }
 if(inlet===2&&messagename==='exchange_ready'){ready=true;report.exchange=args;publish();}
}
function clips(slot){send(slot==='a'?'fileplayer':'fileplayerB','getcontent');return contents[slot]?.clips||[];}
function value(name){const v=obj(name).getvalueof();return Number(Array.isArray(v)?v[0]:v);}
function playing(clip){const play=clip.content_state&&clip.content_state.play;return play===undefined?0:Number(Array.isArray(play)?play[0]:play);}
function statevalue(clip,key){const value=clip.content_state&&clip.content_state[key];return Number(Array.isArray(value)?value[0]:value);}
function floatWave(filename,amplitude){
 const frames=4800,bytes=frames*8,file=new File(filename,'write');assert(file.isopen,'Cannot create private WAV');
 try{file.byteorder='little';file.writestring('RIFF');file.writeint32([48+bytes]);file.writestring('WAVEfmt ');file.writeint32([16]);file.writeint16([3,2]);file.writeint32([48000,384000]);file.writeint16([8,32]);file.writestring('fact');file.writeint32([4,frames]);file.writestring('data');file.writeint32([bytes]);for(let first=0;first<frames;first+=1000){const block=[];for(let i=first;i<Math.min(frames,first+1000);i++)block.push(amplitude,-amplitude);file.writefloat32(block);}file.eof=file.position;}finally{file.close();}
}
function loadbang(){
 pipelineTimeout=new Task(()=>{report.pipeline={waiting:false,error:'No shared pipeline result arrived within 600 seconds.'};report.pipelineCompleted=true;report.ok=false;publish();close();},this);
 pipelineTimeout.schedule(600000);after(run,1800);
}
function run(){
 check('fixture contains no audio hardware, MIDI or audio-device switch endpoints',()=>{const forbidden=/^(adc~|dac~|ezadc~|ezdac~|adstatus|notein|midiin|midiout|noteout|ctlin|ctlout|bendin|bendout|pgmin|pgmout|touchin|touchout|polyin|polyout)$/;const found=[];for(let box=host.firstobject;box;box=box.nextobject)if(forbidden.test(box.maxclass))found.push(box.maxclass);assert(!found.length,'Hardware endpoint remains',found);return{found};});
 floatWave(folder+'old-a.wav',.1);floatWave(folder+'old-b.wav',.2);floatWave(folder+'incoming.wav',.3);
 send('fileplayer','append',folder+'old-a.wav');send('fileplayer',0);send('fileplayer','setclip',1,'speed',.75);send('fileplayer','setclip',1,'pitchshiftcent',-200);send('fileplayer','selection',1,.15,.85);
 send('fileplayerB','append',folder+'old-b.wav');send('fileplayerB',0);send('srcA_in',1);send('srcB_in',2);
 receiver('exchange_load','qa-valid',folder+'incoming.wav','Incoming native proof','slice','a');after(verifySuccess,400);
}
function verifySuccess(){
 receiver('getstate');const actual=clips('a');
 report.diagnostic={receiverState,rawContentA:contents.a,rawContentB:contents.b,events};publish();
 check('actual native playlist verifies incoming path before loaded ACK, without autoplay',()=>{
  assert(events.some(event=>event[0]==='loaded'&&event[1]==='qa-valid'),'No loaded acknowledgment',events);
  assert(actual.length===1&&String(actual[0].absolutepath||actual[0].filename).endsWith('incoming.wav'),'Wrong incoming path',actual);
  assert(playing(actual[0])===0,'Incoming clip autoplays',actual[0]);
  assert(statevalue(actual[0],'speed')===.75&&statevalue(actual[0],'pitchshiftcent')===-200,'Existing file FX settings changed',actual[0]);
  assert(value('srcA_in')===3&&value('srcB_in')===2,'Wrong input selector changed');return{clips:actual,receiverState};
 });
 receiver('exchange_load','qa-invalid',folder+'missing.wav','Missing proof','slice','b');after(verifyFailure,12600);
}
function verifyFailure(){
 const actual=clips('b');check('failed native decoding leaves previous file loaded and stopped',()=>{
  assert(events.some(event=>event[0]==='failed'&&event[1]==='qa-invalid'),'No failed acknowledgment',events);
  assert(actual.length===1&&String(actual[0].absolutepath||actual[0].filename).endsWith('old-b.wav'),'Previous file was lost',actual);
  assert(playing(actual[0])===0&&value('srcB_in')===2,'Failure changed playback or input source');return actual;
 });
 report.completed=true;report.ok=!report.error&&report.checks.every(item=>item.pass);publish();
}
function verifyPipeline(){
 receiver('getstate');const actual=clips('b'),accepted=receiverState&&receiverState.accepted.b;
 report.pipeline={waiting:false,id:pipelineId,accepted,clips:actual};
 check('actual shared pipeline loads ordered Looper chain into File B, stopped',()=>{
  assert(accepted&&accepted.id===pipelineId&&accepted.frames===26460,'Wrong native pipeline audio frames',accepted);
  assert(actual.length===1&&playing(actual[0])===0,'Pipeline load autoplays or has extra clips',actual);
  assert(value('srcB_in')===4,'Pipeline did not select File B source');return report.pipeline;
 });
 report.ok=!report.error&&report.checks.every(item=>item.pass);publish();
 report.pipelineCompleted=true;publish();close();
}
function publish(){const file=new File(folder+'native-results.json','write');if(file.isopen){const text=JSON.stringify(report,null,2);file.position=0;for(let i=0;i<text.length;i+=2048)file.writestring(text.slice(i,i+2048));file.eof=file.position;file.close();}}
function close(){if(pipelineTimeout)pipelineTimeout.cancel();host.wind.dirty=false;closing=new Task(()=>host.message('dispose'),this);closing.schedule(700);}
