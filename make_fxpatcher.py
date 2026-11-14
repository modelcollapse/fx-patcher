# FX Patcher v9 generator: main patch + slot strip + effect modules.
import json, os, sys
OUT = sys.argv[1] if len(sys.argv)>1 else "./"
APP={"major":9,"minor":0,"revision":0,"architecture":"x64","modernui":1}

class P:
    def __init__(s): s.boxes=[]; s.lines=[]; s.n=0
    def add(s,cls,text=None,pr=(0,0,80,22),pres=None,ins=1,outs=1,otype=None,**kw):
        s.n+=1; i=f"obj-{s.n}"
        b={"id":i,"maxclass":cls,"numinlets":ins,"numoutlets":outs,"patching_rect":[float(v) for v in pr]}
        if text is not None: b["text"]=text
        if outs: b["outlettype"]=otype or [""]*outs
        if pres is not None: b["presentation"]=1; b["presentation_rect"]=[float(v) for v in pres]
        b.update(kw); s.boxes.append({"box":b}); return i
    def obj(s,text,pr,ins=1,outs=1,otype=None,**kw): return s.add("newobj",text,pr,None,ins,outs,otype,**kw)
    def sig(s,text,pr,ins=1,outs=1,**kw): return s.add("newobj",text,pr,None,ins,outs,["signal"]*outs,**kw)
    def msg(s,text,pr): return s.add("message",text,pr,None,2,1)
    def com(s,text,pr,pres=None,**kw): return s.add("comment",text,pr,pres,1,0,**kw)
    def c(s,a,ao,b,bi): s.lines.append({"patchline":{"source":[a,ao],"destination":[b,bi]}})
    def patcher(s,rect,pres=False,ns="box"):
        d={"fileversion":1,"appversion":APP,"classnamespace":ns,"rect":rect,
           "openinpresentation":1 if pres else 0,"boxes":s.boxes,"lines":s.lines}
        return d
    def save(s,name,rect,pres=False):
        json.dump({"patcher":s.patcher(rect,pres)},open(os.path.join(OUT,name),"w"),indent=1)

def dial(p,name,label,pr,pres):
    return p.add("live.dial",None,pr,pres,1,2,["",""],parameter_enable=1,varname=name,showname=0,shownumber=1,
        saved_attribute_attributes={"valueof":{"parameter_longname":name,"parameter_shortname":label,"parameter_type":0,
        "parameter_mmin":0.0,"parameter_mmax":1.0,"parameter_unitstyle":1,"parameter_initial":[0.0],"parameter_initial_enable":1}})
def dial1(p,name,label,pr,pres):
    b=dial(p,name,label,pr,pres)
    p.boxes[-1]["box"]["saved_attribute_attributes"]["valueof"]["parameter_initial"]=[1.0]
    return b
def hgain(p,name,pr,pres):
    return p.add("live.gain~",None,pr,pres,2,5,["signal","signal","","float","list"],orientation=1,showname=0,shownumber=0,
        parameter_enable=1,varname=name,saved_attribute_attributes={"valueof":{"parameter_longname":name,"parameter_shortname":name,
        "parameter_type":0,"parameter_mmin":-70.0,"parameter_mmax":6.0,"parameter_initial":[0.0],"parameter_initial_enable":1,"parameter_unitstyle":4}})
def menu(p,name,items,init,pr,pres):
    return p.add("live.menu",None,pr,pres,1,3,["","",""],parameter_enable=1,varname=name,
        saved_attribute_attributes={"valueof":{"parameter_longname":name,"parameter_shortname":name,"parameter_type":2,
        "parameter_enum":items,"parameter_initial":[init],"parameter_initial_enable":1,"parameter_mmax":len(items)-1}})
def ltext(p,name,label,mode,pr,pres):
    return p.add("live.text",label,pr,pres,1,2,["",""],parameter_enable=1,varname=name,mode=mode,texton=label,
        saved_attribute_attributes={"valueof":{"parameter_longname":name,"parameter_shortname":label,"parameter_type":2,
        "parameter_enum":["off","on"],"parameter_mmax":1}})

# ======================= MODULES =======================
MODULES = {
 "Heat": {"labels":"Drive Tone Shape Bias Follow Attack Release Out Filter Reso Feedbk FbTime Input ToneHz FbTone Routing",
          "defaults":"0.3 0.5 0. 0.5 0. 0.1 0.3 0.66 1. 0. 0. 0.2 0.5 0.5 0.8 0."},
 "Drift":{"labels":"Time Wander Erase Smear Ratio Spread Tone Rate Lowcut FbDrive Freeze Input – – – –",
          "defaults":"0.55 0.3 0.35 0.3 0.3 0.5 0.6 0.3 0.3 0. 0. 1. 0. 0. 0. 0."},
 "Shimmer":{"labels":"Size Decay Shimmer Pitch Damp Diffuse Mod Freeze FrzIn Lowcut – – – – – –",
          "defaults":"0.7 0.55 0.4 1. 0.4 0.7 0.3 0. 0. 0.15 0. 0. 0. 0. 0. 0."},
 "Empty":{"labels":"– – – – – – – – – – – – – – – –","defaults":"0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0."},
}
MENU=["Empty","Heat","Drift","Shimmer"]

def module_base():
    q=P()
    i1=q.sig("in~ 1",(20,20,50,22),1,1); i2=q.sig("in~ 2",(300,20,50,22),1,1)
    ic=q.obj("in 3",(600,20,40,22),0,1)
    rt=q.obj("route "+" ".join(f"k{i}" for i in range(1,17)),(600,60,700,22),1,17)
    q.c(ic,0,rt,0)
    o1=q.add("newobj","out~ 1",(20,560,50,22),None,1,0); o2=q.add("newobj","out~ 2",(300,560,50,22),None,1,0)
    return q,i1,i2,rt,o1,o2

def param(q,rt,k,chain,targets,x,y):
    """route outlet k-1 -> chain of objects -> prepend -> targets"""
    prev=(rt,k-1)
    for j,t in enumerate(chain):
        o=q.obj(t,(x,y+j*26,150,22),2,1); q.c(prev[0],prev[1],o,0); prev=(o,0)
    for tg,inl in targets: q.c(prev[0],prev[1],tg,inl)

def build_empty():
    q,i1,i2,rt,o1,o2=module_base(); q.c(i1,0,o1,0); q.c(i2,0,o2,0)
    q.save("fxm.empty.maxpat",[100,100,700,620])

def build_heat():
    q,i1,i2,rt,o1,o2=module_base()
    rL=q.sig("abl.device.roar~ @mix 1.",(20,480,200,22),2,2); rR=q.sig("abl.device.roar~ @mix 1.",(300,480,200,22),2,2)
    q.c(i1,0,rL,0); q.c(i2,0,rR,0); q.c(rL,0,o1,0); q.c(rR,0,o2,0)
    T=[(rL,0),(rR,0)]
    # drive + follower
    av=q.sig("average~ 1000 rms",(20,100,130,22),1,1); q.c(i1,0,av,0)
    sn=q.obj("snapshot~ 20",(20,130,90,22),2,1); q.c(av,0,sn,0)
    sl=q.obj("slide 1. 30.",(20,160,90,22),3,1); q.c(sn,0,sl,0)
    pk=q.obj("pak f f f",(20,200,90,22),3,1); q.c(sl,0,pk,2)
    q.c(rt,0,pk,0); q.c(rt,4,pk,1)
    ex=q.obj("expr $f1+$f2*$f3*4.",(20,230,150,22),3,1); q.c(pk,0,ex,0)
    cl=q.obj("clip 0. 1.",(20,260,80,22),3,1); q.c(ex,0,cl,0)
    pd=q.obj("prepend shaper_amount_1",(20,290,160,22),1,1); q.c(cl,0,pd,0)
    for t in T: q.c(pd,0,*t)
    a=q.obj("scale 0. 1. 1. 50.",(200,100,120,22),6,1); q.c(rt,5,a,0); q.c(a,0,sl,1)
    r=q.obj("scale 0. 1. 1. 300.",(200,130,120,22),6,1); q.c(rt,6,r,0); q.c(r,0,sl,2)
    specs={2:["scale 0. 1. -1. 1.","prepend tone_amount"],3:["* 11.99","i","prepend shaper_type_1"],
           4:["prepend shaper_bias_1"],8:["scale 0. 1. -24. 12.","prepend output_gain"],
           9:["expr 20.*exp($f1*6.9078)","prepend filter_frequency_1"],10:["prepend filter_resonance_1"],
           11:["prepend feedback_amount"],12:["scale 0. 1. 0.001 0.5","prepend feedback_delay"],
           13:["scale 0. 1. -24. 24.","prepend input_gain"],14:["expr 80.*exp($f1*3.2189)","prepend tone_frequency"],
           15:["expr 50.*exp($f1*5.886)","prepend feedback_frequency"],16:["* 6.99","i","prepend routing"]}
    for n,(k,ch) in enumerate(specs.items()):
        param(q,rt,k,ch,T,600+(n%6)*170,110+(n//6)*110)
    q.save("fxm.heat.maxpat",[100,100,1700,620])

GEN_DRIFT = """Param time(400);
Param wander(0.3);
Param fb(0.65);
Param smear(0.3);
Param ratio(1.3);
Param spread(0.5);
Param tone(6000);
Param rate(0.1);
Param lowcut(80);
Param fbdrive(1);
Param freeze(0);
Param input(1);
Delay d1(samplerate*10);
Delay d2(samplerate*10);
Delay d3(samplerate*10);
Delay d4(samplerate*10);
History f1(0);
History f2(0);
History f3(0);
History f4(0);
History h1(0);
History h2(0);
History h3(0);
History h4(0);
fz = freeze > 0.5;
g = fz ? 1 : fb*0.97;
ig = fz ? 0 : input;
w = wander*0.25;
maxs = samplerate*9.9;
t1 = clip(mstosamps(time)*(1+w*cycle(rate)), 2, maxs);
t2 = clip(mstosamps(time*ratio)*(1+w*cycle(rate*1.37)), 2, maxs);
t3 = clip(mstosamps(time*ratio*ratio)*(1+w*cycle(rate*0.71)), 2, maxs);
t4 = clip(mstosamps(time*ratio*ratio*ratio)*(1+w*cycle(rate*1.93)), 2, maxs);
r1 = d1.read(t1);
r2 = d2.read(t2);
r3 = d3.read(t3);
r4 = d4.read(t4);
alp = 1 - exp(-twopi*tone/samplerate);
ahp = 1 - exp(-twopi*lowcut/samplerate);
l1 = f1 + alp*(r1-f1); f1 = l1; b1 = h1 + ahp*(l1-h1); h1 = b1; o1 = l1 - b1;
l2 = f2 + alp*(r2-f2); f2 = l2; b2 = h2 + ahp*(l2-h2); h2 = b2; o2 = l2 - b2;
l3 = f3 + alp*(r3-f3); f3 = l3; b3 = h3 + ahp*(l3-h3); h3 = b3; o3 = l3 - b3;
l4 = f4 + alp*(r4-f4); f4 = l4; b4 = h4 + ahp*(l4-h4); h4 = b4; o4 = l4 - b4;
avg = (o1+o2+o3+o4)*0.25;
dv = max(fbdrive, 1);
x1 = tanh(((1-smear)*o1 + smear*avg)*dv)/dv;
x2 = tanh(((1-smear)*o2 + smear*avg)*dv)/dv;
x3 = tanh(((1-smear)*o3 + smear*avg)*dv)/dv;
x4 = tanh(((1-smear)*o4 + smear*avg)*dv)/dv;
d1.write(in1*ig + g*x1);
d2.write(in2*ig + g*x2);
d3.write(in1*ig + g*x3);
d4.write(in2*ig + g*x4);
sl = (o1+o3)*0.5;
sr = (o2+o4)*0.5;
sp = spread*0.5;
out1 = sl*(1-sp) + sr*sp;
out2 = sr*(1-sp) + sl*sp;
"""

def gen_box(q,code,pr):
    g=P()
    cb=g.add("codebox",None,(50,60,600,700),None,2,2,["",""],code=code,fontface=0,fontname="<Monospaced>",fontsize=12.0)
    a=g.obj("in 1",(50,20,40,22),0,1); b=g.obj("in 2",(600,20,40,22),0,1)
    o=g.add("newobj","out 1",(50,780,40,22),None,1,0); o2=g.add("newobj","out 2",(600,780,40,22),None,1,0)
    g.c(a,0,cb,0); g.c(b,0,cb,1); g.c(cb,0,o,0); g.c(cb,1,o2,0)
    return q.add("newobj","gen~",pr,None,2,2,["signal","signal"],patcher=g.patcher([100,100,700,830],ns="dsp.gen"))

def build_drift():
    q,i1,i2,rt,o1,o2=module_base()
    gb=gen_box(q,GEN_DRIFT,(20,480,300,22)); q.c(i1,0,gb,0); q.c(i2,0,gb,1); q.c(gb,0,o1,0); q.c(gb,1,o2,0)
    T=[(gb,0)]
    specs={1:["expr 20.*exp($f1*5.0106)","prepend time"],2:["prepend wander"],3:["!- 1.","prepend fb"],
           4:["prepend smear"],5:["scale 0. 1. 1. 2.","prepend ratio"],6:["prepend spread"],
           7:["expr 300.*exp($f1*4.0943)","prepend tone"],8:["expr 0.02*exp($f1*4.6052)","prepend rate"],
           9:["expr 20.*exp($f1*3.912)","prepend lowcut"],10:["scale 0. 1. 1. 6.","prepend fbdrive"],
           11:["> 0.5","prepend freeze"],12:["prepend input"]}
    for n,(k,ch) in enumerate(specs.items()):
        param(q,rt,k,ch,T,600+(n%6)*170,110+(n//6)*110)
    q.save("fxm.drift.maxpat",[100,100,1700,620])

def build_shimmer():
    q,i1,i2,rt,o1,o2=module_base()
    fL=q.sig("svf~ 20. 0.3",(20,400,100,22),3,4); fR=q.sig("svf~ 20. 0.3",(300,400,100,22),3,4)
    sL=q.sig("abl.dsp.shimmer~ @mix 1.",(20,480,200,22),2,2); sR=q.sig("abl.dsp.shimmer~ @mix 1.",(300,480,200,22),2,2)
    q.c(i1,0,fL,0); q.c(i2,0,fR,0); q.c(fL,1,sL,0); q.c(fR,1,sR,0); q.c(sL,0,o1,0); q.c(sR,0,o2,0)
    T=[(sL,0),(sR,0)]
    specs={1:["prepend size"],2:["expr 0.5*exp($f1*4.787)","prepend decay"],3:["prepend shimmer"],
           4:["expr int($f1*24.+0.5)-12","prepend pitchshift"],5:["prepend damping"],6:["prepend diffusion"],
           7:["prepend mod"],8:["> 0.5","prepend freeze"],9:["> 0.5","prepend freezein"]}
    for n,(k,ch) in enumerate(specs.items()):
        param(q,rt,k,ch,T,600+(n%6)*170,110+(n//6)*110)
    lc=q.obj("expr 20.*exp($f1*4.605)",(600,400,170,22),2,1); q.c(rt,9,lc,0); q.c(lc,0,fL,1); q.c(lc,0,fR,1)
    q.save("fxm.shimmer.maxpat",[100,100,1700,620])

# ---------- extra modules (v11) ----------
import copy
FKBOX=json.load(open('/home/claude/ref/fk_drift_genbox.json'))

def gen_module(fname, code, specs, rect=(20,480,300,22)):
    q,i1,i2,rt,o1,o2=module_base()
    gb=gen_box(q,code,rect); q.c(i1,0,gb,0); q.c(i2,0,gb,1); q.c(gb,0,o1,0); q.c(gb,1,o2,0)
    for n,(k,ch) in enumerate(specs.items()):
        param(q,rt,k,ch,[(gb,0)],600+(n%6)*170,110+(n//6)*110)
    q.save(fname,[100,100,1700,620])

SHIFT_CODE = """Param pitch(12);
Param micro(0);
Param fb(0);
Param window(80);
Param pre(0);
Param spread(0);
Param tone(18000);
Param pitch2(0);
Param level2(0);
Delay dl(192000, interp="linear");
Delay dr(192000, interp="linear");
History pl(0);
History pr(0);
History pv(0);
History ll(0);
History lr(0);
win = mstosamps(clamp(window, 10, 500));
ps = mstosamps(clamp(pre, 0, 1000)) + 2;
rl = pow(2, (pitch + (micro + spread) * 0.01) / 12);
rr = pow(2, (pitch + (micro - spread) * 0.01) / 12);
r2 = pow(2, pitch2 / 12);
pl = wrap(pl + (1 - rl) / win, 0, 1);
pr = wrap(pr + (1 - rr) / win, 0, 1);
pv = wrap(pv + (1 - r2) / win, 0, 1);
al = wrap(pl + 0.5, 0, 1);
ar = wrap(pr + 0.5, 0, 1);
av = wrap(pv + 0.5, 0, 1);
sl = dl.read(ps + pl * win) * sin(pi * pl) + dl.read(ps + al * win) * sin(pi * al);
sg = dr.read(ps + pr * win) * sin(pi * pr) + dr.read(ps + ar * win) * sin(pi * ar);
vl = dl.read(ps + pv * win) * sin(pi * pv) + dl.read(ps + av * win) * sin(pi * av);
vr = dr.read(ps + pv * win) * sin(pi * pv) + dr.read(ps + av * win) * sin(pi * av);
ol = (sl + vl * level2) * 0.75;
og = (sg + vr * level2) * 0.75;
c = 1 - exp(-twopi * clamp(tone, 200, 20000) / samplerate);
ll = ll + c * (ol - ll);
lr = lr + c * (og - lr);
dl.write(in1 + tanh(ll * fb));
dr.write(in2 + tanh(lr * fb));
out1 = ll;
out2 = lr;
"""

def bank_code():
    L=["""ratio(k, sc) {
    r = k + 1;
    if (sc < 0.5) {
        r = k + 1;
    } else if (sc < 1.5) {
        r = pow(2, k * 7 / 12);
    } else if (sc < 2.5) {
        r = pow(2, selector(k + 1, 0, 3, 5, 7, 10, 12, 15, 17) / 12);
    } else {
        r = selector(k + 1, 1, 2.76, 5.4, 8.93, 13.34, 18.64, 24.81, 31.87);
    }
    return r;
}
Param root(110);
Param spread(0.5);
Param decay(0.9);
Param scale(0);
Param tilt(0.3);
Param drift(0);
Param bands(8);
Param input(1);"""]
    for v in range(8): L.append(f"History a{v}(0);\nHistory b{v}(0);")
    L.append("""rr = clamp(1 - (1 - clamp(decay, 0, 1)) * 0.012 - 0.00002, 0.9, 0.99998);
dm = 1 + drift * 0.02 * cycle(0.07);
sl = 0;
sg = 0;""")
    for v in range(8):
        x="in1" if v%2==0 else "in2"; acc="sl" if v%2==0 else "sg"
        L.append(f"""f{v} = clamp(root * pow(ratio({v}, scale), 0.25 + spread * 1.5) * dm, 20, 18000);
y{v} = (1 - rr) * {x} * input * 3 * pow({v} + 1, -tilt) * ({v} < bands) + 2 * rr * cos(twopi * f{v} / samplerate) * a{v} - rr * rr * b{v};
b{v} = a{v};
a{v} = y{v};
{acc} = {acc} + y{v};""")
    L.append("out1 = tanh(sl);\nout2 = tanh(sg);\n")
    return "\n".join(L)

FREEZE_CODE = """Param freeze(0);
Param size(250);
Param blur(0.3);
Param tone(12000);
Param pitch(0);
Param width(1);
Param feed(0);
Param level(1);
Data buf(768000, 2);
History w(0);
History fz(0);
History ph1(0);
History ph2(0.5);
History o1(0);
History o2(0);
History lpl(0);
History lpr(0);
len = dim(buf);
target = freeze > 0.5;
fz = fz + (target - fz) * 0.0006;
if (target < 0.5) {
    poke(buf, in1, w, 0);
    poke(buf, in2, w, 1);
    w = wrap(w + 1, 0, len);
}
S = mstosamps(clamp(size, 20, 2000));
rate = pow(2, pitch / 12);
ph1 = ph1 + rate / S;
if (ph1 >= 1) {
    ph1 = ph1 - 1;
    o1 = (noise() * 0.5 + 0.5) * blur * S * 4;
}
ph2 = ph2 + rate / S;
if (ph2 >= 1) {
    ph2 = ph2 - 1;
    o2 = (noise() * 0.5 + 0.5) * blur * S * 4;
}
p1 = w - S * 3 - o1 + ph1 * S;
p2 = w - S * 3 - o2 + ph2 * S;
g1 = sin(pi * ph1);
g2 = sin(pi * ph2);
xl = peek(buf, p1, 0, interp="linear", boundmode="wrap") * g1 + peek(buf, p2, 0, interp="linear", boundmode="wrap") * g2;
xr = peek(buf, p1, 1, interp="linear", boundmode="wrap") * g1 + peek(buf, p2, 1, interp="linear", boundmode="wrap") * g2;
mid = (xl + xr) * 0.5;
side = (xl - xr) * 0.5 * width;
c = 1 - exp(-twopi * clamp(tone, 200, 20000) / samplerate);
lpl = lpl + c * ((mid + side) - lpl);
lpr = lpr + c * ((mid - side) - lpr);
out1 = in1 * (1 - fz) + (lpl * level + in1 * feed) * fz;
out2 = in2 * (1 - fz) + (lpr * level + in2 * feed) * fz;
"""

def grain_code():
    L=["""Param size(120);
Param density(0.6);
Param pitch(0);
Param spray(0.3);
Param position(300);
Param reverse(0);
Param width(0.7);
Param fb(0);
Param pspray(0);
Data buf(768000, 2);
History w(0);
History fo1(0);
History fo2(0);"""]
    for v in range(4):
        L.append(f"History ph{v}({v*0.25});\nHistory st{v}(0);\nHistory rt{v}(1);\nHistory pn{v}(0.5);\nHistory on{v}(1);")
    L.append("""len = dim(buf);
S = mstosamps(clamp(size, 10, 1000));
poke(buf, in1 + fo1 * fb, w, 0);
poke(buf, in2 + fo2 * fb, w, 1);
sl = 0;
sg = 0;""")
    for v in range(4):
        L.append(f"""ph{v} = ph{v} + 1 / S;
if (ph{v} >= 1) {{
    ph{v} = ph{v} - 1;
    st{v} = w - mstosamps(position) - abs(noise()) * spray * mstosamps(2000) - S * 2;
    rt{v} = pow(2, (pitch + noise() * pspray * 12) / 12) * ((noise() * 0.5 + 0.5) < reverse ? -1 : 1);
    pn{v} = 0.5 + noise() * 0.5 * width;
    on{v} = (noise() * 0.5 + 0.5) < (density + 0.1);
}}
q{v} = st{v} + ph{v} * S * rt{v};
g{v} = sin(pi * ph{v}) * on{v};
sl = sl + peek(buf, q{v}, 0, interp="linear", boundmode="wrap") * g{v} * (1 - pn{v}) * 1.2;
sg = sg + peek(buf, q{v}, 1, interp="linear", boundmode="wrap") * g{v} * pn{v} * 1.2;""")
    L.append("""w = wrap(w + 1, 0, len);
fo1 = tanh(sl);
fo2 = tanh(sg);
out1 = fo1;
out2 = fo2;
""")
    return "\n".join(L)

TAPE_CODE = """Param wow(0.3);
Param flutter(0.2);
Param age(0.3);
Param hiss(0.05);
Param drop(0);
Param sat(0.3);
Param tone(0.6);
Param speed(0.5);
Delay dl(19200, interp="linear");
Delay dr(19200, interp="linear");
History n1(0);
History lpl(0);
History lpr(0);
History l2l(0);
History l2r(0);
History dg(1);
History dt(1);
base = mstosamps(25);
sm = 1 - exp(-twopi * 0.5 / samplerate);
n1 = n1 + sm * (noise() - n1);
m = wow * 0.5 * (cycle(0.3 + speed * 1.2) + n1) + flutter * 0.08 * cycle(6 + speed * 8);
dd = base * (1 + m * 0.6);
xl = dl.read(dd);
xr = dr.read(dd * 1.002);
dl.write(in1);
dr.write(in2);
if (noise() > 1 - drop * 0.0004) {
    dt = 1 - drop * 0.9;
}
dt = dt + (1 - dt) * 0.00005;
dg = dg + (dt - dg) * 0.002;
sg = 1 + sat * 6;
yl = tanh(xl * sg) / tanh(sg);
yr = tanh(xr * sg) / tanh(sg);
cut = clamp(18000 * pow(0.08, age) * (0.4 + tone * 0.6), 200, 18000);
c = 1 - exp(-twopi * cut / samplerate);
lpl = lpl + c * (yl - lpl);
lpr = lpr + c * (yr - lpr);
l2l = l2l + c * (lpl - l2l);
l2r = l2r + c * (lpr - l2r);
out1 = l2l * dg + noise() * hiss * 0.03;
out2 = l2r * dg + noise() * hiss * 0.03;
"""

SWELL_CODE = """Param attack(800);
Param thresh(0.02);
Param sens(0.5);
Param depth(1);
Param hold(50);
Param cyc(0);
History ct(0);
History ef(0);
History es(0);
History g(1);
History lock(0);
x = max(abs(in1), abs(in2));
ef = ef + (x - ef) * (1 - exp(-1 / (0.003 * samplerate)));
es = es + (x - es) * (1 - exp(-1 / (0.25 * samplerate)));
per = mstosamps(250 + (1 - cyc) * 7750);
ct = cyc > 0.001 ? ct + 1 : 0;
tick = cyc > 0.001 && ct >= per;
ct = tick ? 0 : ct;
onset = (((ef > thresh) && (ef > es * (1.2 + (1 - sens) * 3))) || tick) && (lock <= 0);
if (onset) {
    g = 1 - depth;
    lock = mstosamps(hold) + mstosamps(attack) * 0.5;
}
lock = lock - 1;
g = g + (1 - g) * (1 - exp(-1 / mstosamps(max(attack, 5))));
out1 = in1 * g;
out2 = in2 * g;
"""

FILTER_CODE = """Param cutoff(1000);
Param reso(0.3);
Param type(0);
Param drive(0);
Param lforate(0.2);
Param depth(0);
Param env(0);
Param envspeed(0.3);
Param spread(0);
History i1l(0);
History i2l(0);
History i1r(0);
History i2r(0);
History envf(0);
x = max(abs(in1), abs(in2));
envf = envf + (x - envf) * (1 - exp(-1 / mstosamps(5 + envspeed * 500)));
md = depth * cycle(lforate) + env * envf * 4;
fl = clamp(cutoff * pow(2, md * 4 + spread), 20, 18000);
fg = clamp(cutoff * pow(2, md * 4 - spread), 20, 18000);
k = 2 - 2 * clamp(reso, 0, 0.97);
dg = 1 + drive * 8;
xl = drive > 0.001 ? tanh(in1 * dg) / tanh(dg) : in1;
xr = drive > 0.001 ? tanh(in2 * dg) / tanh(dg) : in2;
t = floor(clamp(type, 0, 3) + 0.5);
gl = tan(pi * fl / samplerate);
a1 = 1 / (1 + gl * (gl + k));
a2 = gl * a1;
a3 = gl * a2;
v3 = xl - i2l;
v1 = a1 * i1l + a2 * v3;
v2 = i2l + a2 * i1l + a3 * v3;
i1l = 2 * v1 - i1l;
i2l = 2 * v2 - i2l;
hl = xl - k * v1 - v2;
yl = t < 0.5 ? v2 : t < 1.5 ? v1 : t < 2.5 ? hl : v2 + hl;
gr = tan(pi * fg / samplerate);
b1 = 1 / (1 + gr * (gr + k));
b2 = gr * b1;
b3 = gr * b2;
w3 = xr - i2r;
w1 = b1 * i1r + b2 * w3;
w2 = i2r + b2 * i1r + b3 * w3;
i1r = 2 * w1 - i1r;
i2r = 2 * w2 - i2r;
hr = xr - k * w1 - w2;
yr = t < 0.5 ? w2 : t < 1.5 ? w1 : t < 2.5 ? hr : w2 + hr;
out1 = yl;
out2 = yr;
"""

CRUSH_CODE = """Param bits(8);
Param holdrate(4);
Param drive(0);
Param tone(18000);
Param jitter(0);
Param foldamt(0);
Param level(1);
History hl(0);
History hr(0);
History cnt(0);
History lpl(0);
History lpr(0);
cnt = cnt + 1;
rt = max(1, holdrate * (1 + jitter * noise()));
if (cnt >= rt) {
    cnt = 0;
    hl = in1;
    hr = in2;
}
q = pow(2, clamp(bits, 1, 16) - 1);
yl = floor(hl * q + 0.5) / q;
yr = floor(hr * q + 0.5) / q;
dg = 1 + drive * 10;
yl = drive > 0.001 ? tanh(yl * dg) / tanh(dg) : yl;
yr = drive > 0.001 ? tanh(yr * dg) / tanh(dg) : yr;
yl = foldamt > 0.001 ? sin(yl * (1 + foldamt * 6) * pi * 0.5) : yl;
yr = foldamt > 0.001 ? sin(yr * (1 + foldamt * 6) * pi * 0.5) : yr;
c = 1 - exp(-twopi * clamp(tone, 200, 20000) / samplerate);
lpl = lpl + c * (yl - lpl);
lpr = lpr + c * (yr - lpr);
out1 = lpl * level;
out2 = lpr * level;
"""

LOOP_CODE = """Param recon(1);
Param looplen(2000);
Param spd(1);
Param erase(0.1);
Param dub(1);
Param rev(0);
Param tone(18000);
Param startpos(0);
Data lbuf(768000, 2);
History ph(0);
History lpl(0);
History lpr(0);
ln = clamp(mstosamps(looplen), 1000, 760000);
so = floor(clamp(startpos, 0, 1) * (767000 - ln));
idx = so + ph;
xl = peek(lbuf, idx, 0, interp="linear", boundmode="wrap");
xr = peek(lbuf, idx, 1, interp="linear", boundmode="wrap");
rg = recon > 0.5;
kp = 1 - erase * 0.02 * rg;
wi = floor(idx);
poke(lbuf, xl * kp + in1 * dub * rg, wi, 0);
poke(lbuf, xr * kp + in2 * dub * rg, wi, 1);
dirn = 1 - 2 * (rev > 0.5);
ph = wrap(ph + spd * dirn, 0, ln);
cf = 1 - exp(-twopi * clamp(tone, 200, 20000) / samplerate);
lpl = lpl + cf * (xl - lpl);
lpr = lpr + cf * (xr - lpr);
out1 = lpl;
out2 = lpr;
"""

def build_memory():
    q,i1,i2,rt,o1,o2=module_base()
    box=copy.deepcopy(FKBOX)
    q.n+=1; gid=f"obj-{q.n}"; box["id"]=gid; box["patching_rect"]=[20.0,480.0,300.0,22.0]
    q.boxes.append({"box":box})
    q.c(i1,0,gid,0); q.c(i2,0,gid,1); q.c(gid,0,o1,0); q.c(gid,1,o2,0)
    T=[(gid,0)]
    specs={1:["* 1.1","prepend feedback"],2:["prepend blur"],3:["prepend drift"],
           4:["* 4.99","i","prepend mode"],5:["* 2.99","i","prepend size"],6:["* 3.99","i","prepend record"],
           7:["> 0.5","prepend hold"],8:["* 2.","prepend width"],9:["scale 0. 1. -12. 0.","prepend pitch"],
           10:["> 0.5","prepend reverse"],11:["> 0.5","prepend half_speed"],12:["prepend drive"],
           14:["expr 200.*exp($f1*4.605)","prepend lpf_hz"],15:["* 6.99","i","prepend rhythm_style"],16:["prepend erase"]}
    for n,(k,ch) in enumerate(specs.items()):
        param(q,rt,k,ch,T,600+(n%6)*170,110+(n//6)*110)
    # HPF: on/off + frequency ; LPF on when below the top
    h1=q.obj("t f f",(600,500,60,22),1,2); q.c(rt,12,h1,0)
    hz=q.obj("expr 20.*exp($f1*4.605)",(600,530,160,22),1,1); q.c(h1,0,hz,0)
    hp=q.obj("prepend hpf_hz",(600,560,100,22),1,1); q.c(hz,0,hp,0); q.c(hp,0,gid,0)
    ho=q.obj("expr ($f1>0.01)*2",(780,530,130,22),1,1); q.c(h1,1,ho,0)
    hpo=q.obj("prepend hpf",(780,560,80,22),1,1); q.c(ho,0,hpo,0); q.c(hpo,0,gid,0)
    lo=q.obj("expr ($f1<0.99)*2",(960,530,130,22),1,1); q.c(rt,13,lo,0)
    lpo=q.obj("prepend lpf",(960,560,80,22),1,1); q.c(lo,0,lpo,0); q.c(lpo,0,gid,0)
    q.save("fxm.memory.maxpat",[100,100,1700,620])

def build_freq():
    q,i1,i2,rt,o1,o2=module_base()
    outs=[]
    fbm=[]; dly=[]
    for ch,(ii,oo,x) in enumerate([(i1,o1,20),(i2,o2,300)]):
        add=q.sig("+~",(x,100,40,22),2,1); q.c(ii,0,add,0)
        fs=q.sig("freqshift~",(x,140,80,22),2,2); q.c(add,0,fs,0)
        q.c(fs,0,oo,0)
        ti=q.obj("tapin~ 2000",(x,200,80,22),1,1,["tapconnect"]); to=q.sig("tapout~ 50",(x,230,80,22),2,1)
        mu=q.sig("*~ 0.",(x,260,50,22),2,1)
        q.c(fs,0,ti,0); q.c(ti,0,to,0); q.c(to,0,mu,0); q.c(mu,0,add,1)
        outs.append(fs); fbm.append(mu); dly.append(to)
    pk=q.obj("pak f f f",(600,200,90,22),3,1)
    c1=q.obj("expr (($f1>0.5)*2.-1.)*(exp(abs($f1*2.-1.)*6.9)-1.)",(600,140,330,22),1,1); q.c(rt,0,c1,0); q.c(c1,0,pk,0)
    c2=q.obj("scale 0. 1. -10. 10.",(950,140,130,22),6,1); q.c(rt,1,c2,0); q.c(c2,0,pk,1)
    q.c(rt,4,pk,2)
    eL=q.obj("expr $f1+$f2",(600,240,100,22),2,1); eR=q.obj("expr ($f1+$f2)*(1.-2.*$f3)",(720,240,180,22),3,1)
    up=q.obj("unpack f f f",(600,220,90,22),1,3)
    q.c(pk,0,up,0)
    tL=q.obj("pak f f",(600,270,60,22),2,1); q.c(up,0,tL,0); q.c(up,1,tL,1); q.c(tL,0,eL,0)
    tR=q.obj("pak f f f",(720,270,80,22),3,1); q.c(up,0,tR,0); q.c(up,1,tR,1); q.c(up,2,tR,2); q.c(tR,0,eR,0)
    q.c(eL,0,outs[0],1); q.c(eR,0,outs[1],1)
    fb=q.obj("* 0.95",(950,200,60,22),2,1); q.c(rt,2,fb,0); q.c(fb,0,fbm[0],1); q.c(fb,0,fbm[1],1)
    dl=q.obj("expr 1.+$f1*999.",(1050,200,120,22),1,1); q.c(rt,3,dl,0); q.c(dl,0,dly[0],0); q.c(dl,0,dly[1],0)
    q.save("fxm.freq.maxpat",[100,100,1700,620])

def build_extra_modules():
    gen_module("fxm.shift.maxpat",SHIFT_CODE,{1:["* 48.","- 24.","i","prepend pitch"],2:["scale 0. 1. -50. 50.","prepend micro"],
        3:["* 0.95","prepend fb"],4:["expr 10.*exp($f1*3.912)","prepend window"],5:["* 1000.","prepend pre"],
        6:["* 50.","prepend spread"],7:["expr 200.*exp($f1*4.605)","prepend tone"],8:["* 48.","- 24.","i","prepend pitch2"],
        9:["prepend level2"]})
    gen_module("fxm.bank.maxpat",bank_code(),{1:["expr 40.*exp($f1*3.9)","prepend root"],2:["prepend spread"],
        3:["prepend decay"],4:["* 3.99","i","prepend scale"],5:["* 8.","i","+ 1","prepend bands"],6:["* 2.","prepend tilt"],
        7:["prepend drift"],8:["* 2.","prepend input"]})
    gen_module("fxm.freeze.maxpat",FREEZE_CODE,{1:["> 0.5","prepend freeze"],2:["expr 20.*exp($f1*4.605)","prepend size"],
        3:["prepend blur"],4:["expr 200.*exp($f1*4.605)","prepend tone"],5:["* 24.","- 12.","i","prepend pitch"],
        6:["* 2.","prepend width"],7:["prepend feed"],8:["* 2.","prepend level"]})
    gen_module("fxm.grain.maxpat",grain_code(),{1:["expr 10.*exp($f1*4.605)","prepend size"],2:["prepend density"],
        3:["* 24.","- 12.","i","prepend pitch"],4:["prepend spray"],5:["* 2000.","prepend position"],6:["prepend reverse"],
        7:["prepend width"],8:["* 0.9","prepend fb"],9:["prepend pspray"]})
    gen_module("fxm.tape.maxpat",TAPE_CODE,{1:["prepend wow"],2:["prepend flutter"],3:["prepend age"],4:["prepend hiss"],
        5:["prepend drop"],6:["prepend sat"],7:["prepend tone"],8:["prepend speed"]})
    gen_module("fxm.swell.maxpat",SWELL_CODE,{1:["expr 5.*exp($f1*6.68)","prepend attack"],2:["expr 0.001*exp($f1*5.3)","prepend thresh"],
        3:["prepend sens"],4:["prepend depth"],5:["* 2000.","prepend hold"],6:["prepend cyc"]})
    gen_module("fxm.filter.maxpat",FILTER_CODE,{1:["expr 20.*exp($f1*6.8)","prepend cutoff"],2:["prepend reso"],
        3:["* 3.99","i","prepend type"],4:["prepend drive"],5:["expr 0.01*exp($f1*7.6)","prepend lforate"],6:["prepend depth"],
        7:["prepend env"],8:["prepend envspeed"],9:["scale 0. 1. -2. 2.","prepend spread"]})
    gen_module("fxm.crush.maxpat",CRUSH_CODE,{1:["scale 0. 1. 16. 1.","prepend bits"],2:["expr exp($f1*4.16)","prepend holdrate"],
        3:["prepend drive"],4:["expr 200.*exp($f1*4.605)","prepend tone"],5:["prepend jitter"],6:["prepend foldamt"],7:["* 2.","prepend level"]})
    gen_module("fxm.loop.maxpat",LOOP_CODE,{1:["> 0.5","prepend recon"],2:["expr 100.*exp($f1*5.7)","prepend looplen"],
        3:["expr 0.25*exp($f1*2.0794)","prepend spd"],4:["prepend erase"],5:["prepend dub"],6:["> 0.5","prepend rev"],
        7:["expr 200.*exp($f1*4.605)","prepend tone"],8:["prepend startpos"]})
    build_memory(); build_freq()

D="–"
def lab(xs): return " ".join(xs+[D]*(16-len(xs)))
def dfl(xs): return " ".join(str(float(v)) for v in xs+[0]*(16-len(xs)))
MODULES.update({
 "Memory":{"labels":lab("Feedbk Blur Drift Mode Size Capture Hold Width Pitch Reverse HalfSpd Drive HPF LPF Style Erase".split()),
           "defaults":dfl([0.745,0.32,0.45,0,0,1,0,0.5,1,0,0,0,0,1,0,0])},
 "Shift":{"labels":lab("Pitch Micro Feedbk Window Delay Spread Tone Pitch2 Level2".split()),
          "defaults":dfl([0.75,0.5,0,0.5,0,0.2,1,0.5,0])},
 "Bank":{"labels":lab("Root Spread Decay Scale Bands Tilt Drift Input".split()),"defaults":dfl([0.5,0.4,0.85,0,1,0.15,0.2,0.5])},
 "Freeze":{"labels":lab("Freeze Size Blur Tone Pitch Width Feed Level".split()),"defaults":dfl([0,0.5,0.3,0.8,0.5,0.5,0,0.5])},
 "Grain":{"labels":lab("Size Density Pitch Spray Position Reverse Width Feedbk PSpray".split()),"defaults":dfl([0.55,0.6,0.5,0.3,0.15,0,0.7,0,0])},
 "Tape":{"labels":lab("Wow Flutter Age Hiss Drop Sat Tone Speed".split()),"defaults":dfl([0.3,0.2,0.3,0.1,0,0.3,0.6,0.5])},
 "Freq":{"labels":lab("Shift Fine Feedbk Delay Spread".split()),"defaults":dfl([0.55,0.5,0.3,0.05,0])},
 "Loop":{"labels":lab("Rec Length Speed Erase Dub Reverse Tone Start".split()),"defaults":dfl([1,0.6,0.6667,0.1,1,0,1,0])},
 "Swell":{"labels":lab("Attack Thresh Sens Depth Hold Cycle".split()),"defaults":dfl([0.6,0.3,0.85,1,0.03,0])},
 "Filter":{"labels":lab("Cutoff Reso Type Drive Rate Depth Env EnvSpd Spread".split()),"defaults":dfl([0.6,0.3,0,0,0.3,0,0,0.3,0.5])},
 "Crush":{"labels":lab("Bits Rate Drive Tone Jitter Fold Level".split()),"defaults":dfl([0.5,0.3,0,1,0,0,0.5])},
})
MENU[:]=["Empty","Heat","Drift","Shimmer","Memory","Shift","Bank","Freeze","Grain","Tape","Freq","Loop","Swell","Filter","Crush"]

# ======================= SLOT STRIP =======================
def build_slot():
    s=P()
    W=154
    iL=s.obj("inlet",(20,20,50,22),0,1,["signal"]); iR=s.obj("inlet",(200,20,50,22),0,1,["signal"])
    ttl=s.com("Slot",(20,600,60,20),(2,2,62,20))
    lm=s.obj("loadmess #1",(100,600,80,22),1,1); ps=s.obj("prepend set Slot",(100,630,110,22),1,1)
    s.c(lm,0,ps,0); s.c(ps,0,ttl,0)
    fb=ltext(s,"focus","Focus",1,(220,600,62,18),(68,2,62,18)); s.boxes[-1]["box"].pop("varname",None)
    s.obj("autopattr",(1400,900,70,22),1,4)
    byp=ltext(s,"bypass","Bypass",1,(300,600,62,18),(2,46,62,18))
    mm=menu(s,"module",MENU,0,(380,600,128,15),(2,24,128,15))
    gin=hgain(s,"in",(20,60,115,26),(32.8,248,115,26))
    s.com("in",(150,60,30,20),(2,244,28,20)); s.com("out",(150,420,30,20),(2,266,28,20))
    s.c(iL,0,gin,0); s.c(iR,0,gin,1)
    poly=s.obj("poly~ fxm.empty 1",(20,120,160,22),3,3,["signal","signal",""])
    s.c(gin,0,poly,0); s.c(gin,1,poly,1)
    # dry/wet
    dL=s.sig("*~ 0.",(20,300,50,22),2,1); dR=s.sig("*~ 0.",(200,300,50,22),2,1)
    wL=s.sig("*~ 1.",(80,330,50,22),2,1); wR=s.sig("*~ 1.",(260,330,50,22),2,1)
    s.c(gin,0,dL,0); s.c(gin,1,dR,0); s.c(poly,0,wL,0); s.c(poly,1,wR,0)
    aL=s.sig("+~",(20,370,40,22),2,1); aR=s.sig("+~",(200,370,40,22),2,1)
    s.c(dL,0,aL,0); s.c(wL,0,aL,1); s.c(dR,0,aR,0); s.c(wR,0,aR,1)
    gout=hgain(s,"out",(20,400,115,26),(32.8,270,115,26))
    s.c(aL,0,gout,0); s.c(aR,0,gout,1)
    for ch,x in [(0,20),(1,200)]:
        tin=s.obj("tapin~ 100",(x,460,80,22),1,1,["tapconnect"]); tout=s.sig("tapout~ 0",(x,490,80,22),2,1)
        bq=s.sig("biquad~ 1. -1. 0. -0.9997 0.",(x,520,170,22),6,1); th=s.sig("tanh~",(x,550,50,22),1,1)
        o=s.add("newobj","outlet",(x,580,50,22),None,1,0)
        s.c(gout,ch,tin,0); s.c(tin,0,tout,0); s.c(tout,0,bq,0); s.c(bq,0,th,0); s.c(th,0,o,0)
    # mix + bypass
    mixd=dial1(s,"mix","Mix",(700,40,44,40),(2+2*46.2,68+2*57+14,44,40))
    s.com("Mix",(700,20,60,16),(2+2*46.2-8,68+2*57,60,16),textjustification=1)
    pk=s.obj("pak f f",(700,100,60,22),2,1); s.c(byp,0,pk,1)
    ex=s.obj("expr $f1*(1.-$f2)",(700,130,120,22),2,1); s.c(pk,0,ex,0)
    t2=s.obj("t f f",(700,160,50,22),1,2); s.c(ex,0,t2,0)
    ec=s.obj("expr cos($f1*1.5708)",(700,190,130,22),1,1); es=s.obj("expr sin($f1*1.5708)",(850,190,130,22),1,1)
    s.c(t2,0,ec,0); s.c(t2,1,es,0)
    for e,(xa,xb) in [(ec,(dL,dR)),(es,(wL,wR))]:
        pp=s.obj("pack f 30",(700,220,70,22),2,1); lw=s.sig("line~",(700,250,50,22),2,2)
        s.c(e,0,pp,0); s.c(pp,0,lw,0); s.c(lw,0,xa,1); s.c(lw,0,xb,1)
    pm=s.obj("prepend mute 1",(300,640,100,22),1,1); s.c(byp,0,pm,0); s.c(pm,0,poly,0)
    # 16 knobs (1-8 on the strip)
    gA=s.obj("gate 1 0",(1000,300,60,22),2,1); sA=s.obj("s fx.panel.in",(1000,330,90,22),1,0)
    s.c(gA,0,sA,0)
    rB=s.obj("r fx.panel.out",(1200,20,100,22),0,1); gB=s.obj("gate 1 0",(1200,50,60,22),2,1); s.c(rB,0,gB,1)
    rtB=s.obj("route "+" ".join(str(i) for i in range(1,17)),(1200,80,500,22),1,17); s.c(gB,0,rtB,0)
    modjs=s.obj("v8 fxmod.js",(1000,560,90,22),1,2)
    rk17=s.obj("route k17",(1000,590,70,22),1,2); s.c(modjs,0,rk17,0); s.c(rk17,0,pk,0); s.c(rk17,1,poly,2)
    rshow=s.obj("route "+" ".join(str(i) for i in range(1,18)),(1000,620,520,22),1,18); s.c(modjs,1,rshow,0)
    pb17=s.obj("prepend base 17",(700,70,90,22),1,1); s.c(mixd,0,pb17,0); s.c(pb17,0,modjs,0)
    pt17=s.obj("prepend #1 17",(800,70,90,22),1,1); s.c(mixd,0,pt17,0)
    ps17=s.obj("prepend set",(800,100,70,22),1,1); s.c(rshow,16,ps17,0); s.c(ps17,0,mixd,0)
    rmod=s.obj("r fx.mod",(1100,500,60,22),0,1); rtm=s.obj("route #1",(1100,530,60,22),2,2); s.c(rmod,0,rtm,0)
    pmod=s.obj("prepend mod",(1100,560,80,22),1,1); s.c(rtm,0,pmod,0); s.c(pmod,0,modjs,0)
    stouch=s.obj("s fx.touch",(1200,560,70,22),1,0); s.c(pt17,0,stouch,0)
    slab=s.obj("s fx.labels",(1300,700,70,22),1,0)
    rask=s.obj("r fx.labels.ask",(1400,600,90,22),0,1)
    plab1=s.obj("prepend #1",(1300,670,70,22),1,1); s.c(plab1,0,slab,0)
    appmix=s.obj("append Mix",(1300,640,80,22),1,1); s.c(appmix,0,plab1,0)
    zask=s.obj("zl reg",(1400,630,50,22),2,1); s.c(rask,0,zask,0); s.c(zask,0,appmix,0)
    dials=[]; labs=[]
    for i in range(16):
        on=i<8
        col,row=i%3,i//3
        px,py=2+col*46.2,68+row*57
        d=dial(s,f"k{i+1}",f"k{i+1}",(1000+i*50,150,44,40),(px,py+14,44,40) if on else None)
        if on:
            lb=s.com("–",(1000+i*50,120,60,16),(px-8,py,60,16),textjustification=1); labs.append(lb)
        pp=s.obj(f"prepend k{i+1}",(1000+i*50,200,70,22),1,1)
        s.c(d,0,pp,0); s.c(pp,0,gA,1); s.c(rtB,i,d,0); dials.append(d)
        pb=s.obj(f"prepend base {i+1}",(1000+i*50,230,80,22),1,1); s.c(d,0,pb,0); s.c(pb,0,modjs,0)
        pt=s.obj(f"prepend #1 {i+1}",(1000+i*50,260,80,22),1,1); s.c(d,0,pt,0); s.c(pt,0,stouch,0)
        psd=s.obj("prepend set",(1000+i*50,650,70,22),1,1); s.c(rshow,i,psd,0); s.c(psd,0,d,0)
        pkf=s.obj(f"prepend k{i+1}",(1000+i*50,680,70,22),1,1); s.c(rshow,i,pkf,0); s.c(pkf,0,gA,1)
    # focus logic
    ft=s.obj("t b",(220,640,30,22),1,1,["bang"]); s.c(fb,0,ft,0)
    fi=s.obj("i #1",(220,670,40,22),2,1); s.c(ft,0,fi,0)
    fs=s.obj("s fx.focus",(220,700,70,22),1,0); s.c(fi,0,fs,0)
    rf=s.obj("r fx.focus",(500,640,70,22),0,1); eq=s.obj("== #1",(500,670,50,22),2,1); s.c(rf,0,eq,0)
    t3=s.obj("t i i i",(500,700,60,22),1,3); s.c(eq,0,t3,0)
    pset=s.obj("prepend set",(500,730,80,22),1,1); s.c(t3,2,pset,0); s.c(pset,0,fb,0)
    s.c(t3,1,gA,0); s.c(t3,1,gB,0)
    sel1=s.obj("sel 1",(600,730,40,22),2,2); s.c(t3,0,sel1,0)
    # stored labels/title
    zlL=s.obj("zl reg",(800,640,50,22),2,1); zlT=s.obj("zl reg",(900,640,50,22),2,1)
    dump=s.obj("t b b b",(600,760,60,22),1,3); s.c(sel1,0,dump,0)
    s.c(dump,2,zlT,0); s.c(dump,1,zlL,0)
    for d in dials: s.c(dump,0,d,0)
    plab=s.obj("prepend labels",(800,700,100,22),1,1); s.c(zlL,0,plab,0); s.c(plab,0,gA,1)
    sl8=s.obj("zl slice 8",(800,730,80,22),2,2); s.c(zlL,0,sl8,0)
    up8=s.obj("unpack "+" ".join(["s"]*8),(800,760,200,22),1,8); s.c(sl8,0,up8,0)
    for i,lb in enumerate(labs):
        ps2=s.obj("prepend set",(800+i*90,790,80,22),1,1); s.c(up8,i,ps2,0); s.c(ps2,0,lb,0)
    ptl=s.obj("prepend title Slot #1 ·",(900,700,150,22),1,1); s.c(zlT,0,ptl,0); s.c(ptl,0,gA,1)
    # module menu
    sel=s.obj("sel "+" ".join(str(i) for i in range(len(MENU))),(380,700,300,22),2,len(MENU)+1); s.c(mm,0,sel,0)
    for k,name in enumerate(MENU):
        x=380+k*260
        tb=s.obj("t b b b b",(x,740,80,22),1,4); s.c(sel,k,tb,0)
        ma=s.msg(f"assignpatcher 1 fxm.{name.lower()}",(x,780,180,22)); s.c(tb,3,ma,0); s.c(ma,0,poly,0)
        mn=s.msg(name,(x,810,60,22)); s.c(tb,2,mn,0); s.c(mn,0,zlT,0)
        ml=s.msg(MODULES[name]["labels"],(x,840,250,22)); s.c(tb,1,ml,0); s.c(ml,0,zlL,0); s.c(ml,0,appmix,0); s.c(ml,0,zask,1)
        md=s.msg(MODULES[name]["defaults"],(x,870,250,22)); s.c(tb,0,md,0)
        up=s.obj("unpack "+" ".join(["f"]*16),(x,900,250,22),1,16); s.c(md,0,up,0)
        for i,d in enumerate(dials): s.c(up,i,d,0)
    # strip frame
    s.add("panel",None,(1400,600,154,295),(0,0,154,294.8),1,0,border=1,rounded=0,background=1)
    s.save("fx.slot.maxpat",[100,100,1800,950],pres=True)


def nov(p): p.boxes[-1]["box"].pop("varname",None)
# ======================= LFO CARD =======================
SHAPES=["Sine","Triangle","Saw up","Saw down","Square","S&H","Smooth rnd","Drift"]
SYNCS=["Free","8 bars","4 bars","2 bars","1 bar","1/2","1/4","1/8","1/16","1/4T","1/8T"]
def build_lfo():
    s=P()
    s.obj("autopattr",(900,900,70,22),1,4)
    sl=s.obj("s fx.lfo",(20,700,60,22),1,0)
    def rep(obj,key,x,y):
        pp=s.obj(f"prepend #1 {key}",(x,y,110,22),1,1); s.c(obj,0,pp,0); s.c(pp,0,sl,0)
    ttl=s.com("LFO",(20,500,60,20),(2,1,60,20),fontface=1)
    lm=s.obj("loadmess #1",(100,500,80,22),1,1); ps=s.obj("prepend set LFO",(100,530,100,22),1,1); s.c(lm,0,ps,0); s.c(ps,0,ttl,0)
    on=ltext(s,"on","On",1,(20,20,40,16),(110,2,42,16)); rep(on,"on",20,400)
    sh=menu(s,"shape",SHAPES,0,(80,20,74,15),(2,22,74,15)); rep(sh,"shape",140,400)
    sy=menu(s,"sync",SYNCS,0,(160,20,74,15),(78,22,74,15)); rep(sy,"sync",260,400)
    def ld(name,label,mn,mx,init,unit,exp,pr,pres):
        b=s.add("live.dial",None,pr,pres,1,2,["",""],parameter_enable=1,varname=name,showname=1,shownumber=1,
            saved_attribute_attributes={"valueof":{"parameter_longname":name,"parameter_shortname":label,"parameter_type":0,
            "parameter_mmin":mn,"parameter_mmax":mx,"parameter_unitstyle":unit,"parameter_exponent":exp,
            "parameter_initial":[init],"parameter_initial_enable":1}})
        return b
    rt=ld("rate","Rate",0.01,20.,0.25,3,3.,(20,60,44,48),(4,40,44,48)); rep(rt,"rate",380,400)
    lmr=s.obj("loadmess 1.",(20,40,70,22),1,1); s.c(lmr,0,rt,0)
    dp=ld("depth","Depth",-100.,100.,50.,5,1.,(80,60,44,48),(55,40,44,48)); rep(dp,"depth",500,400)
    smo=ld("smooth","Smooth",0.,100.,10.,5,1.,(140,60,44,48),(106,40,44,48)); rep(smo,"smooth",620,400)
    s.com("Slot   Parameter",(20,120,120,16),(2,90,130,16))
    rset=s.obj("r fx.lfo.set",(400,20,80,22),0,1); rtn=s.obj("route #1",(400,50,60,22),2,2); s.c(rset,0,rtn,0)
    keys=[f"r{r}{k}" for r in (1,2,3) for k in "skl"]+[f"r{r}items" for r in (1,2,3)]+[f"r{r}kset" for r in (1,2,3)]+["on"]
    rk=s.obj("route "+" ".join(keys),(400,80,500,22),1,len(keys)+1); s.c(rtn,0,rk,0)
    j=0; mitems=[]
    for r in (1,2,3):
        y=106+(r-1)*19
        m1=menu(s,f"r{r}slot",["—"]+[str(k) for k in range(1,9)]+["File A","File B"],0,(20,150+r*30,40,15),(2,y,38,15)); rep(m1,f"r{r}s",20,450+r*30)
        m2=s.add("umenu",None,(70,150+r*30,64,18),(42,y,64,15),1,3,["int","",""],varname=f"r{r}knob",items=sum([[str(k),","] for k in range(1,18)],[])[:-1],fontsize=9.0,arrow=1)
        rep(m2,f"r{r}k",140,450+r*30)
        lb=ltext(s,f"r{r}learn","Learn",1,(120,150+r*30,46,15),(108,y,44,15)); nov(s); rep(lb,f"r{r}l",260,450+r*30)
        for o in (m1,m2,lb): s.c(rk,j,o,0); j+=1
        mitems.append(m2)
    s.c(rk,15,on,0)
    for r,m2 in zip((1,2,3),mitems):
        keep=s.obj("i",(760+r*120,320,30,22),2,1); s.c(m2,0,keep,1)
        tl=s.obj("t b l b",(700+r*120,200,60,22),1,3,["bang","","bang"]); s.c(rk,9+(r-1),tl,0)
        clr_=s.msg("clear",(760+r*120,230,40,22)); s.c(tl,2,clr_,0); s.c(clr_,0,m2,0)
        it=s.obj("zl.iter 1",(700+r*120,230,60,22),2,2); s.c(tl,1,it,0)
        pa=s.obj("prepend append",(700+r*120,260,100,22),1,1); s.c(it,0,pa,0); s.c(pa,0,m2,0)
        s.c(tl,0,keep,0)
        pss=s.obj("prepend set",(700+r*120,350,70,22),1,1); s.c(keep,0,pss,0); s.c(pss,0,m2,0)
        s.c(rk,12+(r-1),keep,1); s.c(rk,12+(r-1),pss,0)
    # value bar
    rv=s.obj("r fx.lfo.val",(600,20,80,22),0,1); rv2=s.obj("route #1",(600,50,60,22),2,2); s.c(rv,0,rv2,0)
    bar=s.add("slider",None,(600,80,150,10),(2,166,150,8),1,1,[""],orientation=1,floatoutput=1,size=2.0,min=-1.0,ignoreclick=1)
    s.c(rv2,0,bar,0)
    # dump on request
    rd=s.obj("r fx.lfo.dump",(800,20,80,22),0,1); tb=s.obj("t b",(800,50,30,22),1,1,["bang"]); s.c(rd,0,tb,0)
    for b in s.boxes[:]:
        bb=b["box"]
        if bb.get("maxclass") in ("live.dial","live.menu","umenu") : s.c(tb,0,bb["id"],0)
    s.add("panel",None,(900,600,154,178),(0,0,154,178),1,0,border=1,rounded=0,background=1)
    s.save("fx.lfo.maxpat",[100,100,1200,900],pres=True)


FILE_LABELS=["Speed","Pitch","Start","Length","Volume","Width","Tone","Pan"]
FILE_DEF=[0.6667,0.5,0.0,1.0,0.8,0.5,1.0,0.5]
def build_filectl():
    s=P()
    s.obj("autopattr",(900,900,70,22),1,4)
    modjs=s.obj("v8 fxmod.js",(20,500,90,22),1,2)
    out=s.add("newobj","outlet",(20,560,30,22),None,1,0); s.c(modjs,0,out,0)
    rshow=s.obj("route "+" ".join(str(i) for i in range(1,17)),(20,530,500,22),1,17); s.c(modjs,1,rshow,0)
    rmod=s.obj("r fx.mod",(200,440,60,22),0,1); rtm=s.obj("route #1",(200,470,60,22),2,2); s.c(rmod,0,rtm,0)
    pmod=s.obj("prepend mod",(200,500,80,22),1,1); s.c(rtm,0,pmod,0); s.c(pmod,0,modjs,0)
    stouch=s.obj("s fx.touch",(300,500,70,22),1,0)
    s.com("FILE FX",(20,20,80,20),(4,2,80,20),fontface=1)
    s.com("LFO target: File · Learn works here too",(20,40,260,20),(4,22,170,32),fontsize=10.0)
    lb=s.obj("loadbang",(600,20,60,22),1,1); dl=s.obj("delay 500",(600,50,60,22),2,1); s.c(lb,0,dl,0)
    for i,(lab_,dv) in enumerate(zip(FILE_LABELS,FILE_DEF)):
        x=180+i*72
        s.com(lab_,(100+i*90,100,60,16),(x-8,0,60,16),textjustification=1)
        d=dial(s,f"k{i+1}",lab_,(100+i*90,130,44,40),(x,16,44,40))
        s.boxes[-1]["box"]["saved_attribute_attributes"]["valueof"]["parameter_initial"]=[dv]
        pb=s.obj(f"prepend base {i+1}",(100+i*90,180,80,22),1,1); s.c(d,0,pb,0); s.c(pb,0,modjs,0)
        pt=s.obj(f"prepend #1 {i+1}",(100+i*90,210,80,22),1,1); s.c(d,0,pt,0); s.c(pt,0,stouch,0)
        psd=s.obj("prepend set",(100+i*90,560,70,22),1,1); s.c(rshow,i,psd,0); s.c(psd,0,d,0)
        s.c(dl,0,d,0)
    flab=s.msg(" ".join(FILE_LABELS+["–"]*9),(600,80,400,22)); s.c(dl,0,flab,0)
    pfl=s.obj("prepend #1",(600,110,70,22),1,1); s.c(flab,0,pfl,0); sfl=s.obj("s fx.labels",(600,140,70,22),1,0); s.c(pfl,0,sfl,0)
    rlb=s.obj("r fx.labels.ask",(700,80,90,22),0,1); s.c(rlb,0,flab,0)
    s.add("panel",None,(900,600,100,20),(0,0,760,56),1,0,border=1,rounded=0,background=1)
    s.save("fx.filectl.maxpat",[100,100,1100,700],pres=True)

# ======================= MAIN (v10) =======================
def nov(p): p.boxes[-1]["box"].pop("varname",None)
def num(p,name,init,mn,mx,pr,pres,keep=False):
    b=p.add("live.numbox",None,pr,pres,1,2,["",""],parameter_enable=1,varname=name,
        saved_attribute_attributes={"valueof":{"parameter_longname":name,"parameter_shortname":name,"parameter_type":1,
        "parameter_mmin":mn,"parameter_mmax":mx,"parameter_initial":[init],"parameter_initial_enable":1}})
    if not keep: nov(p)
    return b
def build_main():
    p=P(); W=1262.8
    TOP=146; FY=TOP+274; FCY=FY+92
    FY2=FCY+62; FCY2=FY2+92
    SY=FCY2+62; MY=SY+302; MH=26+2*182; RY=MY+MH+6
    def sect(title,y,h,note=""):
        p.add("panel",None,(2400,y,W,h),(10,y,W,h),1,0,border=1,rounded=0,background=1)
        p.com("▾",(2400,y,16,20),(14,y+2,16,20)); p.com(title,(2420,y,200,20),(30,y+2,200,20),fontface=1)
        if note: p.com(note,(2620,y,800,20),(240,y+2,900,20))
    # ---------- header ----------
    p.com("FX PATCHER v12.7",(12,12,348,20),(12,12,348,20))
    au=ltext(p,"audio","Audio",1,(12,34,84,18),(12,36,84,18)); nov(p)
    pn=ltext(p,"panic","Panic",0,(100,34,84,18),(100,36,84,18)); nov(p)
    clr=ltext(p,"clear","Clear all",0,(188,34,84,18),(188,36,84,18)); nov(p)
    p.add("panel",None,(2400,10,420,50),(400,10,420,50),1,0,border=1,rounded=0,background=1)
    p.com("Scenes",(2400,60,80,24),(408,12,80,24),fontsize=16.0,fontface=1)
    cNow=p.com("Now  —",(2400,90,70,20),(408,36,70,20)); cNext=p.com("Next  —",(2480,90,70,20),(480,36,70,20))
    cBar=p.com("Bar  —",(2560,90,90,20),(552,36,90,20))
    bStart=ltext(p,"seq_start","Start",0,(2400,120,80,18),(650,14,80,18)); nov(p)
    bNB=ltext(p,"seq_nextbar","Next bar",0,(2490,120,80,18),(734,14,80,18)); nov(p)
    bStop=ltext(p,"seq_stop","Stop",0,(2580,120,80,18),(650,36,80,18)); nov(p)
    bRep=ltext(p,"seq_repeat","Repeat",1,(2670,120,80,18),(734,36,80,18)); nov(p)
    p.com("Master",(848,34,60,20),(848,36,60,20))
    gM=hgain(p,"master",(1300,800,240,26),(910,40,240,26)); nov(p)
    p.com("Out",(1156,34,40,20),(1156,36,40,20))
    uo=menu(p,"output",["1/2","3/4","5/6","7/8"],0,(1300,860,72,15),(1200,36,72,15)); nov(p)
    # ---------- scenes row ----------
    p.add("panel",None,(2400,150,W,28),(10,64,W,28),1,0,border=1,rounded=0,background=1)
    p.com("Scenes",(2400,180,56,20),(16,68,56,20),fontface=1)
    sbtn=[]
    for k in range(8):
        b=ltext(p,f"scene{k+1}",f"{k+1}",0,(2400+k*46,210,42,18),(76+k*46,68,42,18)); nov(p); sbtn.append(b)
    bStore=ltext(p,"scene_store","Store",1,(2800,210,60,18),(450,68,60,18)); nov(p)
    banks=p.add("umenu",None,(2870,210,90,20),(514,68,90,20),1,3,["int","",""],items=["Banks…",",","Save bank…",",","Load bank…"])
    p.com("Click to recall · Shift-click (or Store) to save",(2970,210,330,20),(610,68,300,20))
    recH=ltext(p,"rec_head","● Rec",1,(3000,240,60,18),(1050,68,60,18)); nov(p)
    tH=p.com("00:00.0",(3070,240,60,20),(1114,68,60,20),fontface=1)
    stH=p.com("Ready",(3140,240,90,20),(1176,68,94,20))
    # ---------- sequencer row ----------
    p.add("panel",None,(2400,270,W,44),(10,96,W,44),1,0,border=1,rounded=0,background=1)
    p.com("Sequencer",(2400,300,70,20),(16,98,70,20),fontface=1)
    p.com("BPM",(2400,330,32,20),(16,118,32,20))
    nBpm=num(p,"bpm",120,20,300,(2440,330,40,15),(48,120,40,15))
    stepUI=[]
    for s in range(8):
        x=100+s*130
        p.com(f"Step {s+1}",(2400+s*130,360,62,18),(x,98,62,18)); p.com("bars  %",(2470+s*130,360,60,18),(x+66,98,60,18))
        m=menu(p,f"step{s+1}_scene",[f"Scene {k}" for k in range(1,9)]+["—"],s%4,(2400+s*130,390,62,15),(x,118,62,15)); nov(p)
        nb=num(p,f"step{s+1}_bars",2,1,64,(2466+s*130,390,26,15),(x+66,118,26,15))
        nc=num(p,f"step{s+1}_chance",100,0,100,(2496+s*130,390,26,15),(x+96,118,26,15))
        stepUI.append((m,nb,nc))
    p.com("Beats/bar",(3500,300,60,18),(1144,98,60,18))
    nBpb=num(p,"beats",4,1,16,(3570,300,30,15),(1210,98,30,15))
    stepNow=p.com("",(3500,330,120,18),(1144,118,120,18))
    # ---------- main area ----------
    p.com("INPUT",(12,78,128,20),(12,TOP,128,20))
    OPTS=["Off","1/2","3/4","1 mono","2 mono","3 mono","4 mono","File A","File B"]
    p.com("A",(12,100,20,20),(12,TOP+22,20,20)); mA=menu(p,"srcA_in",OPTS,1,(56,100,92,15),(56,TOP+22,92,15))
    gA=hgain(p,"srcA",(12,126,172,26),(12,TOP+44,172,26))
    p.com("B",(12,166,20,20),(12,TOP+84,20,20)); mB=menu(p,"srcB_in",OPTS,2,(56,166,92,15),(56,TOP+84,92,15))
    gB=hgain(p,"srcB",(12,192,172,26),(12,TOP+106,172,26))
    p.com("ROUTING",(188,78,172,20),(188,TOP,172,20))
    cp=p.add("crosspatch",None,(600,100,436,246),(188,TOP+24,436,246),1,2,["",""],embed=1,showgain=1,numins=10,numouts=9,
        inlabels=["A","B"]+[f"Slot {k}" for k in range(1,9)],outlabels=[f"Slot {k}" for k in range(1,9)]+["Master"])
    FGEN="""Param fvol(1);
Param fpan(0.5);
Param fwid(1);
Param ftone(20000);
History sl(0);
History sr(0);
History gl(1);
History gr(1);
mm = (in1 + in2) * 0.5;
ss = (in1 - in2) * 0.5;
la = mm + ss * fwid;
ra = mm - ss * fwid;
tl = fvol * min(1, 2 * (1 - fpan));
tr = fvol * min(1, 2 * fpan);
gl = gl + (tl - gl) * 0.002;
gr = gr + (tr - gr) * 0.002;
cf = 1 - exp(-twopi * clamp(ftone, 100, 20000) / samplerate);
sl = sl + cf * (la - sl);
sr = sr + cf * (ra - sr);
out1 = sl * gl;
out2 = sr * gr;
"""
    def file_block(fy,fcy,slot_id,header,drop_title,names,dy=0):
        """One drag-drop loop player + its File FX chain. slot_id addresses it on the
        shared fx.mod/fx.touch/fx.labels buses (same mechanism as an effect slot), so it
        shows up as its own LFO target."""
        hy=fy-24
        p.com(header,(16,341+dy,40,20),(16,hy,38,20))
        fld_=ltext(p,names["load"],"Load",0,(56,342+dy,36,18),(56,hy,36,18)); nov(p)
        lp=ltext(p,names["loop"],"Loop",1,(94,342+dy,44,18),(94,hy,44,18)); nov(p)
        fclr=ltext(p,names["clear"],"Clear",0,(140,342+dy,44,18),(140,hy,44,18)); nov(p)
        pl=p.add("playlist~",None,(10,900+dy,600,88),(10,fy,W,88),1,5,["signal","signal","signal","",""],channelcount=2,varname=names["player"])
        plm=p.obj("prepend loop",(200,950+dy,90,22),1,1); p.c(lp,0,plm,0); p.c(plm,0,pl,0)
        p.add("panel",None,(620,870+dy,600,20),(10,fy,W,88),1,0,border=1,rounded=0,background=1,varname=names["dropbg"])
        p.com(drop_title,(620,900+dy,600,50),(10,fy+22,W,44),fontsize=28.0,fontface=1,textjustification=1,
              ignoreclick=1,varname=names["droplabel"])
        dz=p.add("dropfile",None,(620,860+dy,600,30),(10,fy,W,88),1,2,["",""],varname=names["dropzone"])
        tp=p.obj("thispatcher",(620,1100+dy,80,22),1,2)
        empty=p.msg(f"script show {names['dropbg']}, script show {names['droplabel']}, script show {names['dropzone']}, script hide {names['player']}",(620,1040+dy,420,22))
        full=p.msg(f"script hide {names['dropbg']}, script hide {names['droplabel']}, script hide {names['dropzone']}, script show {names['player']}",(620,1070+dy,420,22))
        p.c(empty,0,tp,0); p.c(full,0,tp,0)
        lbe=p.obj("loadbang",(620,1010+dy,60,22),1,1); p.c(lbe,0,empty,0)
        tdz=p.obj("t l b",(620,960+dy,40,22),1,2,["",""]); p.c(dz,0,tdz,0); p.c(tdz,1,full,0)
        pap=p.obj("prepend append",(620,990+dy,100,22),1,1); p.c(tdz,0,pap,0); p.c(pap,0,pl,0)
        tld=p.obj("t b",(300,950+dy,30,22),1,1,["bang"]); od=p.obj("opendialog sound",(300,980+dy,110,22),1,2,["",""])
        p.c(fld_,0,tld,0); p.c(tld,0,od,0); p.c(od,0,tdz,0)
        tcl=p.obj("t b b",(760,960+dy,40,22),1,2); p.c(fclr,0,tcl,0)
        clm=p.msg("clear",(760,990+dy,40,22)); p.c(tcl,1,clm,0); p.c(clm,0,pl,0); p.c(tcl,0,empty,0)
        fg=gen_box(p,FGEN,(200,1050+dy,200,22))
        p.c(pl,0,fg,0); p.c(pl,1,fg,1)
        fc=p.add("bpatcher",None,(200,1200+dy,760,56),(10,fcy,760,56),0,1,[""],name="fx.filectl.maxpat",args=[slot_id],embed=0,viewvisibility=1,varname=names["filectl"])
        frt=p.obj("route k1 k2 k3 k4 k5 k6 k7 k8",(200,1270+dy,300,22),1,9); p.c(fc,0,frt,0)
        e1=p.obj("expr 0.25*exp($f1*2.0794)",(200,1300+dy,160,22),1,1); p.c(frt,0,e1,0)
        m1_=p.obj("prepend speed",(200,1330+dy,90,22),1,1); p.c(e1,0,m1_,0); p.c(m1_,0,pl,0)
        e2=p.obj("expr ($f1-0.5)*2400.",(380,1300+dy,130,22),1,1); p.c(frt,1,e2,0)
        t2=p.obj("t f f",(380,1330+dy,40,22),1,2); p.c(e2,0,t2,0)
        m2=p.obj("prepend pitchshiftcent",(380,1390+dy,140,22),1,1); p.c(t2,0,m2,0); p.c(m2,0,pl,0)
        ab=p.obj("expr abs($f1)>5",(440,1360+dy,100,22),1,1); p.c(t2,1,ab,0)
        ch=p.obj("change",(440,1390+dy,50,22),3,3); p.c(ab,0,ch,0)
        m2b=p.obj("prepend timestretch",(440,1420+dy,120,22),1,1); p.c(ch,0,m2b,0); p.c(m2b,0,pl,0)
        pk34=p.obj("pak f f",(560,1300+dy,60,22),2,1); p.c(frt,2,pk34,0); p.c(frt,3,pk34,1)
        e34=p.obj("expr min($f1\\,0.98)",(560,1330+dy,110,22),1,1)
        se=p.obj("expr min($f1\\,0.98) + max(0.02\\, $f2*(1.-min($f1\\,0.98)))",(560,1360+dy,330,22),2,1)
        up34=p.obj("t l l",(560,1330+dy,40,22),1,2); p.c(pk34,0,up34,0)
        u1=p.obj("unpack f f",(560,1390+dy,70,22),1,2); p.c(up34,0,u1,0)
        tu=p.obj("t f f",(640,1390+dy,40,22),1,2); p.c(u1,1,se,1); p.c(u1,0,tu,0); p.c(tu,1,se,0); p.c(tu,0,e34,0)
        pk2=p.obj("pack f f",(560,1420+dy,60,22),2,1); p.c(se,0,pk2,1); p.c(e34,0,pk2,0)
        m34=p.obj("prepend selection",(560,1450+dy,110,22),1,1); p.c(pk2,0,m34,0); p.c(m34,0,pl,0)
        e5=p.obj("* 1.25",(900,1300+dy,50,22),2,1); p.c(frt,4,e5,0); m5=p.obj("prepend fvol",(900,1330+dy,80,22),1,1); p.c(e5,0,m5,0); p.c(m5,0,fg,0)
        e6=p.obj("* 2.",(1000,1300+dy,40,22),2,1); p.c(frt,5,e6,0); m6=p.obj("prepend fwid",(1000,1330+dy,80,22),1,1); p.c(e6,0,m6,0); p.c(m6,0,fg,0)
        e7=p.obj("expr 100.*exp($f1*5.298)",(1100,1300+dy,150,22),1,1); p.c(frt,6,e7,0); m7=p.obj("prepend ftone",(1100,1330+dy,80,22),1,1); p.c(e7,0,m7,0); p.c(m7,0,fg,0)
        m8=p.obj("prepend fpan",(1260,1330+dy,80,22),1,1); p.c(frt,7,m8,0); p.c(m8,0,fg,0)
        return fg
    adc=p.obj("adc~ 1 2 3 4",(700,900,100,22),1,4,["signal"]*4)
    im=p.obj("matrix~ 8 4",(700,960,140,22),8,5,["signal"]*4+["list"])
    lr=p.obj("loadmess ramp 30",(860,930,110,22),1,1); p.c(lr,0,im,0)
    for k in range(4): p.c(adc,k,im,k)
    fgA=file_block(FY,FCY,9,"FILE A","DROP LOOP A HERE  ·  or press Load",
        {"load":"file_load","loop":"file_loop","clear":"file_clear","player":"fileplayer",
         "dropbg":"dropbg","droplabel":"droplabel","dropzone":"dropzone","filectl":"filectl"})
    fgB=file_block(FY2,FCY2,10,"FILE B","DROP LOOP B HERE  ·  or press Load",
        {"load":"file_load_b","loop":"file_loop_b","clear":"file_clear_b","player":"fileplayerB",
         "dropbg":"dropbgB","droplabel":"droplabelB","dropzone":"dropzoneB","filectl":"filectlB"},dy=2000)
    p.c(fgA,0,im,4); p.c(fgA,1,im,5); p.c(fgB,0,im,6); p.c(fgB,1,im,7)
    def subp(name,pr,ins,outs,inner):
        q=P(); il=[q.obj("inlet",(20+i*300,10,30,22),0,1) for i in range(ins)]
        ol=[q.add("newobj","outlet",(20+i*120,560,30,22),None,1,0) for i in range(outs)]
        inner(q,il,ol)
        return p.add("newobj","p "+name,pr,None,ins,outs,[""]*outs,patcher=q.patcher([100,100,700,620]))
    pairs=[None,(0,1),(2,3),(0,0),(1,1),(2,2),(3,3),(4,5),(6,7)]
    def picker_inner(q,il,ol):
        for j,outs in enumerate([(0,1),(2,3)]):
            x=20+j*300
            sel=q.obj("sel 0 1 2 3 4 5 6 7 8",(x,50,190,22),2,10); q.c(il[j],0,sel,0)
            for k,pr in enumerate(pairs):
                parts=[f"{i} {o} 0." for o in outs for i in range(8)]
                if pr: parts+=[f"{pr[0]} {outs[0]} 1.",f"{pr[1]} {outs[1]} 1."]
                m=q.msg(", ".join(parts),(x,90+k*50,280,40)); q.c(sel,k,m,0); q.c(m,0,ol[0],0)
    pk=subp("input-picker",(700,930,110,22),2,1,picker_inner)
    p.c(mA,0,pk,0); p.c(mB,0,pk,1); p.c(pk,0,im,0)
    p.c(im,0,gA,0); p.c(im,1,gA,1); p.c(im,2,gB,0); p.c(im,3,gB,1)
    mxL=p.obj("matrix~ 10 9",(600,1000,500,22),10,10,["signal"]*9+["list"])
    mxR=p.obj("matrix~ 10 9",(600,1100,500,22),10,10,["signal"]*9+["list"])
    lr2=p.obj("loadmess ramp 30",(1120,970,110,22),1,1)
    for m in (mxL,mxR): p.c(cp,0,m,0); p.c(lr2,0,m,0)
    p.c(gA,0,mxL,0); p.c(gA,1,mxR,0); p.c(gB,0,mxL,1); p.c(gB,1,mxR,1)
    slots=[]
    for k in range(8):
        px=10+k*158.4
        b=p.add("bpatcher",None,(20+k*170,1150,154,295),(px,SY,154,294.8),2,2,["signal","signal"],
                name="fx.slot.maxpat",args=[k+1],embed=0,viewvisibility=1,varname=f"slot{k+1}")
        p.c(mxL,k,b,0); p.c(mxR,k,b,1); p.c(b,0,mxL,2+k); p.c(b,1,mxR,2+k); slots.append(b)
    viz=p.add("spectroscope~",None,(1500,900,172,104),(12,TOP+140,172,104),2,1,[""],logfreq=1,logamp=1,domain=[20.0,20000.0])
    vsum=p.sig("+~",(1500,870,40,22),2,1)
    limL=p.obj("omx.peaklim~",(1300,700,90,22),2,3,["signal","signal",""])
    limR=p.obj("omx.peaklim~",(1400,700,90,22),2,3,["signal","signal",""])
    monA=ltext(p,"monA","Mon",1,(152,100,32,15),(152,TOP+22,32,15)); nov(p)
    monB=ltext(p,"monB","Mon",1,(152,166,32,15),(152,TOP+84,32,15)); nov(p)
    sumL=p.sig("+~",(1300,660,40,22),2,1); sumR=p.sig("+~",(1400,660,40,22),2,1)
    sumL2=p.sig("+~",(1300,680,40,22),2,1); sumR2=p.sig("+~",(1400,680,40,22),2,1)
    p.c(mxL,8,sumL,0); p.c(mxR,8,sumR,0); p.c(sumL,0,sumL2,0); p.c(sumR,0,sumR2,0)
    for j,(mon,gsrc,tl,tr) in enumerate([(monA,gA,sumL,sumR),(monB,gB,sumL2,sumR2)]):
        x=1500+j*200
        pk_=p.obj("pack f 20",(x,600,60,22),2,1); ln=p.sig("line~",(x,630,40,22),2,2); p.c(mon,0,pk_,0); p.c(pk_,0,ln,0)
        mL=p.sig("*~",(x,660,40,22),2,1); mR=p.sig("*~",(x+50,660,40,22),2,1)
        p.c(gsrc,0,mL,0); p.c(gsrc,1,mR,0); p.c(ln,0,mL,1); p.c(ln,0,mR,1); p.c(mL,0,tl,1); p.c(mR,0,tr,1)
    p.c(sumL2,0,limL,0); p.c(sumR2,0,limR,0); p.c(limL,0,gM,0); p.c(limR,0,gM,1)
    om=p.obj("matrix~ 2 8",(1300,900,120,22),2,9,["signal"]*8+["list"])
    lr3=p.obj("loadmess ramp 20",(1430,870,110,22),1,1); p.c(lr3,0,om,0)
    p.c(gM,0,om,0); p.c(gM,1,om,1)
    p.c(gM,0,vsum,0); p.c(gM,1,vsum,1); p.c(vsum,0,viz,0)
    dac=p.add("newobj","dac~ 1 2 3 4 5 6 7 8",(1300,940,160,22),None,8,0)
    for k in range(8): p.c(om,k,dac,k)
    p.c(au,0,dac,0)
    def out_inner(q,il,ol):
        sel=q.obj("sel 0 1 2 3",(20,50,100,22),2,5); q.c(il[0],0,sel,0)
        for k in range(4):
            parts=[f"{i} {o} 0." for i in range(2) for o in range(8)]+[f"0 {2*k} 1.",f"1 {2*k+1} 1."]
            m=q.msg(", ".join(parts),(20,90+k*60,600,50)); q.c(sel,k,m,0); q.c(m,0,ol[0],0)
    op=subp("output-picker",(1300,870,110,22),1,1,out_inner); p.c(uo,0,op,0); p.c(op,0,om,0)
    lbo=p.obj("loadbang",(1500,1000,60,22),1,1); dlo=p.obj("delay 300",(1500,1030,60,22),2,1); p.c(lbo,0,dlo,0); p.c(dlo,0,uo,0)
    p.com("Out",(1500,1060,40,20),(848,12,40,20))
    sL=p.sig("+~",(1500,1090,40,22),2,1); sR=p.sig("+~",(1560,1090,40,22),2,1)
    sL2=p.sig("+~",(1500,1120,40,22),2,1); sR2=p.sig("+~",(1560,1120,40,22),2,1)
    sL3=p.sig("+~",(1500,1150,40,22),2,1); sR3=p.sig("+~",(1560,1150,40,22),2,1)
    p.c(om,0,sL,0); p.c(om,2,sL,1); p.c(om,4,sL2,0); p.c(om,6,sL2,1); p.c(sL,0,sL3,0); p.c(sL2,0,sL3,1)
    p.c(om,1,sR,0); p.c(om,3,sR,1); p.c(om,5,sR2,0); p.c(om,7,sR2,1); p.c(sR,0,sR3,0); p.c(sR2,0,sR3,1)
    mOL=p.add("live.meter~",None,(1500,1180,240,8),(910,14,240,8),1,1,["list"],orientation=1)
    mOR=p.add("live.meter~",None,(1500,1200,240,8),(910,24,240,8),1,1,["list"],orientation=1)
    p.c(sL3,0,mOL,0); p.c(sR3,0,mOR,0)
    def panic_inner(q,il,ol):
        t=q.obj("t b",(20,50,30,22),1,1,["bang"]); q.c(il[0],0,t,0)
        parts=[f"list {i} {o} 0" for i in range(2,10) for o in range(8)]
        m=q.msg(", ".join(parts),(20,90,600,200)); q.c(t,0,m,0); q.c(m,0,ol[0],0)
    pp=subp("panic",(100,700,70,22),1,1,panic_inner); p.c(pn,0,pp,0); p.c(pp,0,cp,0)
    ct=p.obj("t b",(190,700,30,22),1,1,["bang"]); cm=p.msg("clear",(190,730,40,22))
    p.c(clr,0,ct,0); p.c(ct,0,cm,0); p.c(cm,0,cp,0)
    # ---------- focus panel ----------
    p.add("panel",None,(1600,20,644.8,270),(628,TOP,644.8,270),1,0,border=1,rounded=0,background=1)
    title=p.com("FOCUSED · click Focus on a strip",(1600,0,348,20),(636,TOP,400,20))
    rin=p.obj("r fx.panel.in",(1600,320,90,22),0,1)
    rt=p.obj("route title labels "+" ".join(f"k{i}" for i in range(1,17)),(1600,350,800,22),1,19)
    p.c(rin,0,rt,0)
    pst=p.obj("prepend set FOCUSED ·",(1600,380,150,22),1,1); p.c(rt,0,pst,0); p.c(pst,0,title,0)
    upl=p.obj("unpack "+" ".join(["s"]*16),(1600,410,500,22),1,16); p.c(rt,1,upl,0)
    sout=p.obj("s fx.panel.out",(1600,560,100,22),1,0)
    for i in range(16):
        x=650+(i%8)*77; y=TOP+30+(i//8)*80
        lb=p.com("–",(1600+i*60,450,60,16),(x-10,y,64,16),textjustification=1)
        d=dial(p,f"panel_k{i+1}",f"k{i+1}",(1600+i*60,480,44,40),(x,y+16,44,40)); nov(p)
        ps=p.obj("prepend set",(1600+i*60,440,70,22),1,1); p.c(upl,i,ps,0); p.c(ps,0,lb,0)
        ps2=p.obj("prepend set",(1600+i*60,530,70,22),1,1); p.c(rt,2+i,ps2,0); p.c(ps2,0,d,0)
        pn2=p.obj(f"prepend {i+1}",(1600+i*60,520,60,22),1,1); p.c(d,0,pn2,0); p.c(pn2,0,sout,0)
    p.com("Knobs 1–8 mirror the strip · 9–16 live only here",(1600,600,300,20),(650,TOP+240,400,20))
    # ---------- scenes engine ----------
    ap=p.obj("autopattr",(2400,500,70,22),1,4)
    cab=p.obj("pattr cables",(2400,700,90,22),1,3,["","",""],varname="cables")
    ps_=p.obj("pattrstorage fxscenes @savemode 0",(2400,600,220,22),1,1,[""])
    seq=p.obj("v8 fxseq.js",(2700,500,100,22),1,3)
    rseq=p.obj("route recall store",(2700,540,140,22),1,3)
    p.c(seq,0,rseq,0)
    # recall
    prc=p.obj("prepend recall",(2700,570,90,22),1,1); p.c(rseq,0,prc,0); p.c(prc,0,ps_,0)
    # store: dump cables -> pattr, store, write, refresh dots
    tst=p.obj("t i b",(2850,570,40,22),1,2); p.c(rseq,1,tst,0)
    dmp=p.msg("dumpconnections",(2850,600,100,22)); p.c(tst,1,dmp,0); p.c(dmp,0,cp,0)
    ser=p.obj("dict.serialize",(2850,630,90,22),1,1); p.c(cp,1,ser,0); p.c(ser,0,cab,0)
    tst2=p.obj("t b b i",(2900,660,60,22),1,3); p.c(tst,0,tst2,0)
    pso=p.obj("prepend store",(2900,690,90,22),1,1); p.c(tst2,2,pso,0); p.c(pso,0,ps_,0)
    wr=p.msg("write fxscenes.json",(2950,720,120,22)); p.c(tst2,1,wr,0); p.c(wr,0,ps_,0)
    gsl=p.msg("getslotlist",(3000,750,80,22)); p.c(tst2,0,gsl,0); p.c(gsl,0,ps_,0)
    # cables recall -> crosspatch
    sz=p.obj("sel 0",(2400,720,40,22),2,2); des=p.obj("dict.deserialize",(2400,740,100,22),1,1); p.c(cab,0,sz,0); p.c(sz,1,des,0); p.c(des,0,cp,0)
    # slotlist -> seq ; read at load ; priorities
    rps=p.obj("route slotlist",(2400,640,90,22),1,2); p.c(ps_,0,rps,0)
    psl=p.obj("prepend slotlist",(2400,670,100,22),1,1); p.c(rps,0,psl,0); p.c(psl,0,seq,0)
    lb_=p.obj("loadbang",(2600,420,60,22),1,1); dl=p.obj("delay 800",(2600,450,70,22),2,1); p.c(lb_,0,dl,0)
    init=p.msg("read fxscenes.json, getslotlist, "+", ".join(f"priority slot{k}::module -1" for k in range(1,9)),(2600,480,400,40))
    p.c(dl,0,init,0); p.c(init,0,ps_,0)
    # banks menu
    bsel=p.obj("sel 1 2",(2870,250,60,22),3,3); p.c(banks,0,bsel,0)
    bw=p.msg("write",(2870,280,40,22)); br=p.msg("read, getslotlist",(2920,280,100,22))
    p.c(bsel,0,bw,0); p.c(bsel,1,br,0); p.c(bw,0,ps_,0); p.c(br,0,ps_,0)
    bset=p.msg("set 0",(2990,250,40,22)); p.c(bsel,0,bset,0); p.c(bsel,1,bset,0); p.c(bset,0,banks,0)
    # scene buttons + shift + store mode
    mods=p.obj("modifiers",(2700,180,80,22),1,5); psh=p.obj("prepend shiftkey",(2700,210,110,22),1,1)
    p.c(mods,0,psh,0); p.c(psh,0,seq,0)
    for k,b in enumerate(sbtn):
        m=p.msg(f"click {k+1}",(2400+k*60,240,56,22)); tb=p.obj("t b b",(2400+k*60,230,40,22),1,2,["bang","bang"])
        p.c(b,0,tb,0); p.c(tb,1,mods,0); p.c(tb,0,m,0); p.c(m,0,seq,0)
    psm=p.obj("prepend store_mode",(2800,240,110,22),1,1); p.c(bStore,0,psm,0); p.c(psm,0,seq,0)
    # sequencer controls
    for b,msgt in [(bStart,"start"),(bNB,"nextbar"),(bStop,"stop")]:
        tb=p.obj("t b",(2400,150,30,22),1,1,["bang"]); m=p.msg(msgt,(2440,150,60,22)); p.c(b,0,tb,0); p.c(tb,0,m,0); p.c(m,0,seq,0)
    prr=p.obj("prepend setrepeat",(2680,150,110,22),1,1); p.c(bRep,0,prr,0); p.c(prr,0,seq,0)
    lrep=p.obj("loadmess 1",(2680,120,70,22),1,1); p.c(lrep,0,bRep,0)
    pb=p.obj("prepend setbpm",(2440,350,100,22),1,1); p.c(nBpm,0,pb,0); p.c(pb,0,seq,0)
    pbb=p.obj("prepend setbpb",(3570,330,100,22),1,1); p.c(nBpb,0,pbb,0); p.c(pbb,0,seq,0)
    for s,(m,nb,nc) in enumerate(stepUI):
        for o,key in [(m,"scene"),(nb,"bars"),(nc,"chance")]:
            pp2=p.obj(f"prepend setstep {s+1} {key}",(2400+s*130,420,150,22),1,1); p.c(o,0,pp2,0); p.c(pp2,0,seq,0)
    # clock
    rclk=p.obj("route run interval",(2700,800,120,22),1,3); p.c(seq,2,rclk,0)
    met=p.obj("metro 500",(2700,830,70,22),2,1); p.c(rclk,0,met,0); p.c(rclk,1,met,1)
    tk=p.msg("tick",(2700,860,40,22)); p.c(met,0,tk,0); p.c(tk,0,seq,0)
    # UI from seq
    rui=p.obj("route now next bar label storemode step",(2900,800,260,22),1,7); p.c(seq,1,rui,0)
    for o,c_ in [(0,cNow),(1,cNext),(2,cBar)]:
        ps3=p.obj("prepend set",(2900+o*90,830,80,22),1,1); p.c(rui,o,ps3,0); p.c(ps3,0,c_,0)
    rl=p.obj("route 1 2 3 4 5 6 7 8",(2900,860,200,22),1,9); p.c(rui,3,rl,0)
    for k,b in enumerate(sbtn):
        pt=p.obj("prepend text",(2900+k*80,890,80,22),1,1); p.c(rl,k,pt,0); p.c(pt,0,b,0)
    pss=p.obj("prepend set",(3200,830,80,22),1,1); p.c(rui,4,pss,0); p.c(pss,0,bStore,0)
    stp=p.obj("sprintf set Playing step %d",(3300,830,160,22),1,1); p.c(rui,5,stp,0); p.c(stp,0,stepNow,0)
    # ---------- modulation placeholder ----------
    sect("MODULATION",MY,MH,"16 LFOs · each can drive 3 knobs · press Learn, then move any knob on a strip or in Focus")
    lfojs=p.obj("v8 fxlfo.js",(4400,100,90,22),1,3)
    rl_=p.obj("r fx.lfo",(4400,40,60,22),0,1); p.c(rl_,0,lfojs,0)
    rto=p.obj("r fx.touch",(4500,40,70,22),0,1); pto=p.obj("prepend touch",(4500,70,90,22),1,1); p.c(rto,0,pto,0); p.c(pto,0,lfojs,0)
    mlfo=p.obj("metro 20 @active 1",(4600,40,110,22),2,1); p.c(mlfo,0,lfojs,0)
    pbl=p.obj("prepend setbpm",(4700,70,100,22),1,1); p.c(nBpm,0,pbl,0); p.c(pbl,0,lfojs,0)
    pbbl=p.obj("prepend setbpb",(4800,70,100,22),1,1); p.c(nBpb,0,pbbl,0); p.c(pbbl,0,lfojs,0)
    smod=p.obj("s fx.mod",(4400,140,60,22),1,0); p.c(lfojs,0,smod,0)
    rlab=p.obj("r fx.labels",(4900,40,70,22),0,1); plab=p.obj("prepend labels",(4900,70,90,22),1,1); p.c(rlab,0,plab,0); p.c(plab,0,lfojs,0)
    sset=p.obj("s fx.lfo.set",(4500,140,80,22),1,0); p.c(lfojs,1,sset,0)
    sval=p.obj("s fx.lfo.val",(4600,140,80,22),1,0); p.c(lfojs,2,sval,0)
    lbl=p.obj("loadbang",(4700,140,60,22),1,1); dll=p.obj("delay 1500",(4700,170,70,22),2,1); p.c(lbl,0,dll,0)
    sdump=p.obj("s fx.lfo.dump",(4700,200,90,22),1,0); p.c(dll,0,sdump,0)
    dla=p.obj("delay 1200",(4800,170,70,22),2,1); p.c(lbl,0,dla,0); sask=p.obj("s fx.labels.ask",(4800,200,90,22),1,0); p.c(dla,0,sask,0)
    for k in range(16):
        px=10+(k%8)*158.4; py=MY+26+(k//8)*182
        p.add("bpatcher",None,(4400+k*160,300,154,178),(px,py,154,178),0,0,[],
              name="fx.lfo.maxpat",args=[k+1],embed=0,viewvisibility=1,varname=f"lfo{k+1}")
    # ---------- RECORD ----------
    sect("RECORD",RY,170,"One WAV per armed source · every take gets its own dated folder · nothing is overwritten")
    p.com("Output recording",(3600,0,200,24),(20,RY+28,200,24),fontsize=16.0,fontface=1)
    tR=p.com("00:00.0",(3600,30,90,24),(230,RY+28,90,24),fontsize=16.0,fontface=1)
    stR=p.com("Ready to record",(3700,30,400,20),(330,RY+32,560,20))
    recB=ltext(p,"rec_go","● Record",1,(3600,60,140,30),(20,RY+60,140,30)); nov(p)
    opB=ltext(p,"rec_open","Open folder",0,(3750,60,90,18),(166,RY+66,90,18)); nov(p)
    fmt=p.add("umenu",None,(3850,60,120,20),(262,RY+65,130,20),1,3,["int","",""],items=["24-bit WAV",",","32-bit float WAV"])
    p.com("Arm",(3600,100,40,18),(20,RY+100,40,18),fontface=1)
    SRC=["Master","A","B"]+[f"Slot {k}" for k in range(1,9)]
    sigs=[(gM,0,1),(gA,0,1),(gB,0,1)]+[(b,0,1) for b in slots]
    arms=[]; recs=[]
    golist=p.obj("r fx.rec.go",(3600,400,80,22),0,1)
    stoplist=p.obj("r fx.rec.stop",(3700,400,80,22),0,1)
    for i,name in enumerate(SRC):
        x=60+i*108
        a=ltext(p,f"arm{i}",name,1,(3600+i*110,130,100,18),(x,RY+100,100,18)); nov(p); arms.append(a)
        mt=p.add("live.meter~",None,(3600+i*110,160,100,18),(x,RY+122,100,18),1,1,["list"],orientation=1)
        src,o1,o2=sigs[i]; p.c(src,o1,mt,0)
        sf=p.obj("sfrecord~ 2",(3600+i*110,300,90,22),2,1,["signal"]); recs.append(sf)
        p.c(src,o1,sf,0); p.c(src,o2,sf,1)
        ai=p.obj("i",(3600+i*110,430,30,22),2,1); p.c(a,0,ai,1); p.c(golist,0,ai,0)
        s1=p.obj("sel 1",(3600+i*110,460,40,22),2,2); p.c(ai,0,s1,0)
        one=p.msg("1",(3600+i*110,490,30,22)); p.c(s1,0,one,0); p.c(one,0,sf,0)
        zero=p.msg("0",(3640+i*110,490,30,22)); p.c(stoplist,0,zero,0); p.c(zero,0,sf,0)
    la0=p.obj("loadmess 1",(3600,100,70,22),1,1); p.c(la0,0,arms[0],0)
    p.com("Save to",(3600,200,60,18),(20,RY+146,60,18))
    fld=p.com("…",(3660,200,420,18),(80,RY+146,520,18))
    chB=ltext(p,"rec_choose","Choose…",0,(4100,200,80,18),(604,RY+146,80,18)); nov(p)
    tk_=p.com("",(4200,200,300,18),(700,RY+146,560,18))
    # recorder logic
    node=p.obj("node.script fxrec.js @autostart 1",(3600,600,220,22),1,2)
    rn=p.obj("route folder open go take status",(3600,640,240,22),1,6); p.c(node,0,rn,0)
    pf=p.obj("prepend set",(3600,670,80,22),1,1); p.c(rn,0,pf,0); p.c(pf,0,fld,0)
    ro=p.obj("route 0 1 2 3 4 5 6 7 8 9 10",(3700,670,260,22),1,12); p.c(rn,1,ro,0)
    for i,sf in enumerate(recs):
        po=p.obj("prepend open",(3700+i*60,700,80,22),1,1); p.c(ro,i,po,0); p.c(po,0,sf,0)
    sgo=p.obj("s fx.rec.go",(3600,730,80,22),1,0); p.c(rn,2,sgo,0)
    ptk=p.obj("prepend set Take:",(3800,730,110,22),1,1); p.c(rn,3,ptk,0); p.c(ptk,0,tk_,0)
    pstat=p.obj("prepend set",(3950,730,80,22),1,1); p.c(rn,4,pstat,0); p.c(pstat,0,stR,0)
    # format
    fsel=p.obj("sel 0 1",(3850,90,60,22),3,3); p.c(fmt,0,fsel,0)
    f24=p.msg("samptype int24",(3850,120,100,22)); f32=p.msg("samptype float32",(3960,120,110,22))
    p.c(fsel,0,f24,0); p.c(fsel,1,f32,0)
    for sf in recs: p.c(f24,0,sf,0); p.c(f32,0,sf,0)
    lf=p.obj("loadmess 0",(3850,60,70,22),1,1); p.c(lf,0,fmt,0)
    # choose folder / open folder
    od=p.obj("opendialog fold",(4100,230,100,22),2,2); tcb=p.obj("t b",(4100,215,30,22),1,1,["bang"])
    p.c(chB,0,tcb,0); p.c(tcb,0,od,0)
    psf=p.obj("prepend setfolder",(4100,260,110,22),1,1); p.c(od,0,psf,0); p.c(psf,0,node,0)
    tob=p.obj("t b",(3750,90,30,22),1,1,["bang"]); omsg=p.msg("openfolder",(3790,90,70,22))
    p.c(opB,0,tob,0); p.c(tob,0,omsg,0); p.c(omsg,0,node,0)
    lin=p.obj("loadbang",(3600,540,60,22),1,1); dl2=p.obj("delay 1500",(3600,565,70,22),2,1); mi=p.msg("init",(3600,585,40,22))
    p.c(lin,0,dl2,0); p.c(dl2,0,mi,0); p.c(mi,0,node,0)
    # record start/stop: both buttons share state
    rr=p.obj("r fx.recbtn",(3600,800,80,22),0,1)
    for b in (recB,recH):
        sb=p.obj("s fx.recbtn",(3600,770,80,22),1,0); p.c(b,0,sb,0)
        ps4=p.obj("prepend set",(3700,830,80,22),1,1); p.c(rr,0,ps4,0); p.c(ps4,0,b,0)
    sel01=p.obj("sel 1 0",(3600,860,60,22),3,3); p.c(rr,0,sel01,0)
    # start: collect armed indices
    pak=p.obj("pak "+" ".join(["0"]*11),(3600,890,400,22),11,1)
    for i,a in enumerate(arms): p.c(a,0,pak,i)
    zr=p.obj("zl reg",(3600,920,50,22),2,1); p.c(pak,0,zr,1); p.c(sel01,0,zr,0)
    vx=p.obj("vexpr $i1*$i2 @scalarmode 0",(3600,950,200,22),2,1); p.c(zr,0,vx,0)
    idx=p.msg("1 2 3 4 5 6 7 8 9 10 11",(3820,920,160,22)); lbi=p.obj("loadbang",(3820,890,60,22),1,1)
    p.c(lbi,0,idx,0); p.c(idx,0,vx,1)
    zf=p.obj("zl filter 0",(3600,980,80,22),2,2); p.c(vx,0,zf,0)
    vm=p.obj("vexpr $i1-1 @scalarmode 1",(3600,1010,180,22),2,1); p.c(zf,0,vm,0)
    pst2=p.obj("prepend start",(3600,1040,90,22),1,1); p.c(vm,0,pst2,0); p.c(pst2,0,node,0)
    srec=p.msg("set Recording…",(3700,1040,100,22)); p.c(sel01,0,srec,0); p.c(srec,0,stR,0)
    # stop
    sstop=p.obj("s fx.rec.stop",(3900,1040,90,22),1,0); bstop=p.obj("t b",(3900,1010,30,22),1,1,["bang"])
    p.c(sel01,1,bstop,0); p.c(bstop,0,sstop,0)
    ssaved=p.msg("set Saved · Open folder to listen",(4000,1040,200,22)); p.c(bstop,0,ssaved,0); p.c(ssaved,0,stR,0)
    # timer
    tg=p.obj("t b b",(3600,1100,40,22),1,2); p.c(sel01,0,tg,0)
    m100=p.obj("metro 100",(3600,1130,70,22),2,1); one1=p.msg("1",(3680,1100,30,22)); z0=p.msg("0",(3720,1100,30,22))
    p.c(tg,0,one1,0); p.c(one1,0,m100,0); p.c(bstop,0,z0,0); p.c(z0,0,m100,0)
    cnt=p.obj("counter",(3600,1160,60,22),5,4); rs=p.msg("set 0",(3680,1130,40,22)); p.c(tg,1,rs,0); p.c(rs,0,cnt,0)
    p.c(m100,0,cnt,0)
    ex=p.obj("expr ($i1/600)",(3600,1190,90,22),1,1); ex2=p.obj("expr ($i1/10)%60",(3700,1190,110,22),1,1); ex3=p.obj("expr $i1%10",(3820,1190,80,22),1,1)
    tt=p.obj("t i i i",(3600,1220,60,22),1,3); p.c(cnt,0,tt,0); p.c(tt,2,ex3,0); p.c(tt,1,ex2,0); p.c(tt,0,ex,0)
    pk3=p.obj("pak 0 0 0",(3600,1250,80,22),3,1); p.c(ex,0,pk3,0); p.c(ex2,0,pk3,1); p.c(ex3,0,pk3,2)
    spf=p.obj("sprintf set %02d:%02d.%d",(3600,1280,150,22),3,1); p.c(pk3,0,spf,0); p.c(spf,0,tR,0); p.c(spf,0,tH,0)
    p.com("Audio on · pick sources · cable it · pick effects · Focus to edit · Shift-click a scene to store · arm sources and press Record",
          (3600,1400,900,20),(12,RY+176,900,20))
    p.save("fxpatcher.maxpat",[40,30,1300,RY+210],pres=True)
build_empty(); build_heat(); build_drift(); build_shimmer(); build_extra_modules(); build_slot(); build_lfo(); build_filectl(); build_main()
print("built")
