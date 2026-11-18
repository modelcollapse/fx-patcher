"""Build the handoff delta on the verified installed FX Patcher 13.2.1 main patch.

This intentionally does not regenerate unrelated effect modules or user scenes.
"""
from pathlib import Path
import json,shutil

ROOT=Path(__file__).resolve().parent
SOURCE=ROOT
VERSION='13.2.2'

def build():
    payload=json.loads((ROOT/'baseline/fxpatcher-13.2.1.maxpat').read_text())
    patch=payload['patcher'];boxes=patch['boxes'];lines=patch['lines']
    for entry in boxes:
        if entry['box'].get('text')=='FX PATCHER v13.2.1':entry['box']['text']='FX PATCHER v'+VERSION
    byname={item['box'].get('varname'):item['box'] for item in boxes}
    byid={item['box']['id']:item['box'] for item in boxes}
    def add(name,text=None,kind='newobj',inputs=1,outputs=1,rect=None,**attributes):
        box={'id':name,'varname':name,'maxclass':kind,'numinlets':inputs,'numoutlets':outputs,
             'patching_rect':rect or [3600,1800+25*(len(boxes)-482),270,22],**attributes}
        if text is not None:box['text']=text
        if outputs:box['outlettype']=['']*outputs
        boxes.append({'box':box});byname[name]=box;byid[name]=box;return name
    def wire(a,outlet,b,inlet=0):lines.append({'patchline':{'source':[a,outlet],'destination':[b,inlet]}})
    receiver=add('fx_handoff_receiver','v8 fxhandoff.js',outputs=2)
    worker=add('fx_handoff_worker','node.script fx-handoff-node.js @autostart 1 @defer 1',outputs=2)
    wire(worker,0,receiver);wire(receiver,0,worker)
    for slot,player,record in [('a','fileplayer','file_rec'),('b','fileplayerB','file_rec_b')]:
        target=byname[player]
        loops=[b for b in byid.values() if b.get('text')=='v8 fxloop.js' and any(
            line['patchline']['source'][0]==b['id'] and line['patchline']['destination'][0]==target['id'] for line in lines)]
        assert len(loops)==1,slot
        loops[0]['varname']='fx_loop_'+slot
        captures=[b for b in byid.values() if b.get('text')=='v8 fxcapture.js '+slot.upper()]
        assert len(captures)==1,slot
        captures[0].update(varname='fx_capture_'+slot,numoutlets=5,outlettype=['']*5)
        bridge=add('fx_handoff_content_'+slot,'prepend playlistcontent '+slot)
        wire(target['id'],4,bridge);wire(bridge,0,receiver)
        busy=add('fx_handoff_capture_'+slot,'prepend capturestate '+slot)
        wire(captures[0]['id'],4,busy);wire(busy,0,receiver)
        x,y,w,h=target['presentation_rect']
        add('handoff_status_'+slot,'Ready to receive from Max Looper — loads stopped.',kind='comment',outputs=0,
            rect=[410,y-24,848,20],presentation=1,presentation_rect=[410,y-24,848,20],fontsize=11.0,
            fontname='Arial',textcolor=[.68,.75,.78,1.0],ignoreclick=1)
    assert len({item['box']['id'] for item in boxes})==len(boxes)
    assert all(line['patchline'][end][0] in byid for line in lines for end in ['source','destination'])
    output=SOURCE/'fxpatcher.maxpat';output.write_text(json.dumps(payload,indent=2)+'\n')
    (ROOT/'build-info.json').write_text(json.dumps({'baseline':'Installed FX Patcher 13.2.1','originalBoxes':482,
        'boxes':len(boxes),'originalConnections':636,'connections':len(lines),'preservedExistingGraph':True,
        'scenesIncluded':False},indent=2)+'\n')
    return output

if __name__=='__main__':print(build())
