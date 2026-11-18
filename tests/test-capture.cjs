'use strict';
const fs=require('node:fs'),path=require('node:path'),vm=require('node:vm'),assert=require('node:assert/strict');
const source=fs.readFileSync(path.join(__dirname,'../fxcapture.js'),'utf8');
function create(){const output=[],context=vm.createContext({jsarguments:['fxcapture.js','A'],outlet:(...args)=>output.push(args)});vm.runInContext(source,context);return{context,output};}
{
 const {context:c,output:o}=create();c.toggle(1);c.toggle(0);c.capturepath(1,'/private/late.wav');
 assert.deepEqual(o.filter(row=>row[0]===4),[[4,1],[4,0]]);
 assert.ok(o.some(row=>row[1]==='discardcapture'&&row[2]==='/private/late.wav'));
 assert.ok(!o.some(row=>row[0]===1&&row[1]==='start'));
}
{
 const {context:c,output:o}=create();c.toggle(1);c.capturepath(1,'/private/take.wav');c.toggle(0);
 assert.deepEqual(o.filter(row=>row[0]===4),[[4,1]],'closing WAV must remain busy after Record goes off');
 assert.ok(o.some(row=>row[0]===1&&row[1]==='stop'));
 assert.ok(o.some(row=>row[0]===0&&row[1]==='finishcapture'));
 c.capturecomplete(1,'/private/take.wav');
 assert.deepEqual(o.filter(row=>row[0]===4),[[4,1],[4,0]]);
 assert.deepEqual(o.find(row=>row[0]===2),[2,'/private/take.wav']);
}
{
 const {context:c,output:o}=create();c.toggle(1);c.capturefailed(1);
 assert.deepEqual(o.filter(row=>row[0]===4),[[4,1],[4,0]]);
 assert.ok(o.some(row=>row[0]===3&&row[1]==='set'&&row[2]===0));
}
{
 const {context:c,output:o}=create();c.toggle(1);c.capturepath(1,'/private/first.wav');c.toggle(0);c.toggle(1);
 c.capturecomplete(1,'/private/first.wav');c.capturefailed(1);
 assert.deepEqual(o.filter(row=>row[0]===4),[[4,1],[4,1]],'stale completion must not release current capture');
}
console.log('Passed 4 capture busy-barrier regressions.');
