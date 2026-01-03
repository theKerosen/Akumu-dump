:[0]
b [23]

> gml_Script_BaseTwerkActor (locals=0, argc=3)
:[1]
call.i gml_Script_GMTwerkActor(argc=0)
push.i [function]gml_Script_GMTwerkActor
conv.i.v
call.i @@CopyStatic@@(argc=1)
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [22]

:[2]
setstatic.e
b [9]

> gml_Script_onAct@anon@535@BaseTwerkActor@GMTwerk_Twerk (locals=0, argc=1)
:[3]
push.v builtin.subject
dup.v 0 8
dup.v 0
push.v stacktop.exists
callv.v 0
conv.v.b
bf [7]

:[4]
push.v builtin.subject
push.v arg.argument0
call.i @@This@@(argc=0)
push.v builtin.twerkPerform
callv.v 1
dup.v 1 8
dup.v 0
push.v stacktop.set
callv.v 1
popz.v
push.v builtin.timesDone
push.v builtin.times
cmp.v.v GTE
bf [6]

:[5]
call.i @@This@@(argc=0)
push.v builtin.done
callv.v 0
popz.v

:[6]
b [8]

:[7]
push.l -3
pop.v.l builtin.state
call.i @@This@@(argc=0)
push.v builtin.onLost
callv.v 0
popz.v

:[8]
exit.i

:[9]
push.i [function]gml_Script_onAct@anon@535@BaseTwerkActor@GMTwerk_Twerk
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.onAct
b [13]

> gml_Script_done@anon@817@BaseTwerkActor@GMTwerk_Twerk (locals=0, argc=0)
:[10]
push.v builtin.state
push.l 0
cmp.l.v GTE
bf [12]

:[11]
push.v builtin.subject
push.v builtin.source
dup.v 1 8
dup.v 0
push.v stacktop.set
callv.v 1
popz.v
push.l -1
pop.v.l builtin.state
call.i @@This@@(argc=0)
push.v builtin.onDone
callv.v 0
popz.v

:[12]
exit.i

:[13]
push.i [function]gml_Script_done@anon@817@BaseTwerkActor@GMTwerk_Twerk
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.done
b [15]

> gml_Script_doneOnNext@anon@1075@BaseTwerkActor@GMTwerk_Twerk (locals=0, argc=0)
:[14]
push.v builtin.timesDone
pushi.e 1
add.i.v
pop.v.v builtin.times
exit.i

:[15]
push.i [function]gml_Script_doneOnNext@anon@1075@BaseTwerkActor@GMTwerk_Twerk
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.doneOnNext
b [21]

> gml_Script_stop@anon@1201@BaseTwerkActor@GMTwerk_Twerk (locals=0, argc=0)
:[16]
push.v builtin.state
push.l 0
cmp.l.v GTE
bf [20]

:[17]
push.v builtin.snapOnStop
conv.v.b
bf [19]

:[18]
push.v builtin.subject
push.v builtin.source
dup.v 1 8
dup.v 0
push.v stacktop.set
callv.v 1
popz.v

:[19]
push.l -2
pop.v.l builtin.state
call.i @@This@@(argc=0)
push.v builtin.onStop
callv.v 0
popz.v

:[20]
exit.i

:[21]
push.i [function]gml_Script_stop@anon@1201@BaseTwerkActor@GMTwerk_Twerk
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.stop

:[22]
push.v arg.argument0
pop.v.v self.subject
push.v self.subject
dup.v 0 8
dup.v 0
push.v stacktop.get
callv.v 0
pop.v.v builtin.source
push.v arg.argument1
pop.v.v self.target
push.v arg.argument2
pop.v.v self.times
pushi.e 0
pop.v.i builtin.timesDone
pushi.e 1
pop.v.b builtin.snapOnStop
exit.i

:[23]
push.i [function]gml_Script_BaseTwerkActor
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.BaseTwerkActor
popz.v
b [40]

> gml_Script_WaveTwerkActor (locals=0, argc=5)
:[24]
pushbltn.v builtin.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [26]

:[25]
pushbltn.v builtin.undefined
pop.v.v builtin.argument4

:[26]
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_BaseTwerkActor(argc=3)
push.i [function]gml_Script_BaseTwerkActor
conv.i.v
call.i @@CopyStatic@@(argc=1)
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [37]

:[27]
setstatic.e
b [36]

> gml_Script_twerkPerform@anon@2308@WaveTwerkActor@GMTwerk_Twerk (locals=1, argc=1)
:[28]
push.v builtin.phase
push.v arg.argument0
push.v builtin.wavelength
div.v.v
add.v.v
pop.v.v builtin.phase
push.v builtin.timesDone
push.v builtin.phase
call.i floor(argc=1)
add.v.v
pop.v.v builtin.timesDone
push.v builtin.phase
call.i frac(argc=1)
pop.v.v builtin.phase
push.v builtin.phase
pushi.e 0
cmp.i.v EQ
bf [30]

:[29]
pushi.e 0
conv.i.v
b [31]

:[30]
push.v builtin.positiveOnly
push.v builtin.phase
push.v builtin.wave
call.i script_execute(argc=3)

:[31]
pop.v.v local.waveHeight
push.v builtin.blend
call.i is_undefined(argc=1)
conv.v.b
bf [33]

:[32]
pushloc.v local.waveHeight
push.v builtin.target
push.v builtin.source
call.i lerp(argc=3)
b [34]

:[33]
pushloc.v local.waveHeight
push.v builtin.target
push.v builtin.source
push.v builtin.blend
call.i script_execute(argc=4)

:[34]
ret.v

:[35]
exit.i

:[36]
push.i [function]gml_Script_twerkPerform@anon@2308@WaveTwerkActor@GMTwerk_Twerk
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.twerkPerform

:[37]
pushi.e 0
pop.v.i builtin.phase
push.v arg.argument3
pop.v.v self.wavelength
pushi.e 1
pop.v.b builtin.positiveOnly
pushref.i gml_Script_tw_sinusoid
pop.v.v builtin.wave
pushbltn.v builtin.undefined
pop.v.v builtin.blend
push.v arg.argument4
call.i is_undefined(argc=1)
conv.v.b
not.b
bf [39]

:[38]
push.v arg.argument4
call.i @@This@@(argc=0)
push.v builtin.includeOpts
callv.v 1
popz.v

:[39]
push.v self.wavelength
call.i @@This@@(argc=0)
push.v builtin.convertTime
callv.v 1
pop.v.v self.wavelength
exit.i

:[40]
push.i [function]gml_Script_WaveTwerkActor
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.WaveTwerkActor
popz.v
b [45]

> gml_Script_WaveTwerk (locals=1, argc=5)
:[41]
pushbltn.v builtin.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [43]

:[42]
pushbltn.v builtin.undefined
pop.v.v builtin.argument4

:[43]
push.v arg.argument4
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
push.i [function]gml_Script_WaveTwerkActor
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v local.actor
pushloc.v local.actor
call.i gml_Script___gmtwerk_insert__(argc=1)
popz.v
pushloc.v local.actor
ret.v

:[44]
exit.i

:[45]
push.i [function]gml_Script_WaveTwerk
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.WaveTwerk
popz.v
b [72]

> gml_Script_FlashTwerkActor (locals=0, argc=6)
:[46]
pushbltn.v builtin.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [48]

:[47]
push.v arg.argument3
pop.v.v builtin.argument4

:[48]
pushbltn.v builtin.argument5
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [50]

:[49]
pushbltn.v builtin.undefined
pop.v.v builtin.argument5

:[50]
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_BaseTwerkActor(argc=3)
push.i [function]gml_Script_BaseTwerkActor
conv.i.v
call.i @@CopyStatic@@(argc=1)
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [69]

:[51]
setstatic.e
b [68]

> gml_Script_twerkPerform@anon@4386@FlashTwerkActor@GMTwerk_Twerk (locals=0, argc=1)
:[52]
push.v builtin.flashTime
push.v arg.argument0
add.v.v
pop.v.v builtin.flashTime

:[53]
push.v builtin.flashTime
push.v builtin.flashOn
conv.v.b
bf [55]

:[54]
push.v builtin.onTime
b [56]

:[55]
push.v builtin.offTime

:[56]
cmp.v.v GT
bf [63]

:[57]
push.v builtin.flashTime
push.v builtin.flashOn
conv.v.b
bf [59]

:[58]
push.v builtin.onTime
b [60]

:[59]
push.v builtin.offTime

:[60]
sub.v.v
pop.v.v builtin.flashTime
push.v builtin.flashOn
conv.v.b
not.b
pop.v.b builtin.flashOn
push.v builtin.flashOn
conv.v.b
not.b
bf [62]

:[61]
push.v builtin.timesDone
push.e 1
add.i.v
pop.v.v builtin.timesDone

:[62]
b [53]

:[63]
push.v builtin.flashOn
conv.v.b
bf [65]

:[64]
push.v builtin.target
b [66]

:[65]
push.v builtin.source

:[66]
ret.v

:[67]
exit.i

:[68]
push.i [function]gml_Script_twerkPerform@anon@4386@FlashTwerkActor@GMTwerk_Twerk
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.twerkPerform

:[69]
push.v arg.argument3
pop.v.v self.onTime
push.v arg.argument4
pop.v.v self.offTime
pushi.e 1
pop.v.b builtin.flashOn
pushi.e 0
pop.v.i builtin.flashTime
push.v arg.argument5
call.i is_undefined(argc=1)
conv.v.b
not.b
bf [71]

:[70]
push.v arg.argument5
call.i @@This@@(argc=0)
push.v builtin.includeOpts
callv.v 1
popz.v

:[71]
push.v self.onTime
call.i @@This@@(argc=0)
push.v builtin.convertTime
callv.v 1
pop.v.v self.onTime
push.v self.offTime
call.i @@This@@(argc=0)
push.v builtin.convertTime
callv.v 1
pop.v.v self.offTime
push.v self.flashTime
call.i @@This@@(argc=0)
push.v builtin.convertTime
callv.v 1
pop.v.v self.flashTime
exit.i

:[72]
push.i [function]gml_Script_FlashTwerkActor
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.FlashTwerkActor
popz.v
b [77]

> gml_Script_FlashTwerk (locals=1, argc=6)
:[73]
pushbltn.v builtin.argument5
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [75]

:[74]
pushbltn.v builtin.undefined
pop.v.v builtin.argument5

:[75]
push.v arg.argument5
push.v arg.argument4
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
push.i [function]gml_Script_FlashTwerkActor
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pop.v.v local.actor
pushloc.v local.actor
call.i gml_Script___gmtwerk_insert__(argc=1)
popz.v
pushloc.v local.actor
ret.v

:[76]
exit.i

:[77]
push.i [function]gml_Script_FlashTwerk
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.FlashTwerk
popz.v
b [100]

> gml_Script_ShakeTwerkActor (locals=0, argc=5)
:[78]
pushbltn.v builtin.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [80]

:[79]
pushbltn.v builtin.undefined
pop.v.v builtin.argument4

:[80]
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_BaseTwerkActor(argc=3)
push.i [function]gml_Script_BaseTwerkActor
conv.i.v
call.i @@CopyStatic@@(argc=1)
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [97]

:[81]
setstatic.e
b [96]

> gml_Script_twerkPerform@anon@6474@ShakeTwerkActor@GMTwerk_Twerk (locals=2, argc=1)
:[82]
push.v builtin.time
push.v arg.argument0
add.v.v
pop.v.v builtin.time

:[83]
push.v builtin.time
push.v builtin.length
cmp.v.v GTE
bf [85]

:[84]
push.v builtin.time
push.v builtin.length
sub.v.v
pop.v.v builtin.time
push.v builtin.timesDone
push.e 1
add.i.v
pop.v.v builtin.timesDone
b [83]

:[85]
push.v builtin.decay
call.i is_undefined(argc=1)
conv.v.b
bf [87]

:[86]
pushi.e 1
conv.i.v
b [88]

:[87]
push.v builtin.time
push.v builtin.length
div.v.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.decay
call.i script_execute(argc=4)

:[88]
pop.v.v local.amplitude
pushloc.v local.amplitude
call.i random(argc=1)
push.v builtin.positiveOnly
conv.v.b
bf [90]

:[89]
pushi.e 1
conv.i.v
b [91]

:[90]
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=2)

:[91]
mul.v.v
pop.v.v local.shakeT
push.v builtin.blend
call.i is_undefined(argc=1)
conv.v.b
bf [93]

:[92]
pushloc.v local.shakeT
push.v builtin.target
push.v builtin.source
call.i lerp(argc=3)
b [94]

:[93]
pushloc.v local.shakeT
push.v builtin.target
push.v builtin.source
push.v builtin.blend
call.i script_execute(argc=4)

:[94]
ret.v

:[95]
exit.i

:[96]
push.i [function]gml_Script_twerkPerform@anon@6474@ShakeTwerkActor@GMTwerk_Twerk
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.twerkPerform

:[97]
pushi.e 0
pop.v.i builtin.time
push.v arg.argument3
pop.v.v self.length
pushi.e 0
pop.v.b builtin.positiveOnly
pushbltn.v builtin.undefined
pop.v.v builtin.blend
pushref.i gml_Script_te_quadratic_out
pop.v.v builtin.decay
push.v arg.argument4
call.i is_undefined(argc=1)
conv.v.b
not.b
bf [99]

:[98]
push.v arg.argument4
call.i @@This@@(argc=0)
push.v builtin.includeOpts
callv.v 1
popz.v

:[99]
push.v self.time
call.i @@This@@(argc=0)
push.v builtin.convertTime
callv.v 1
pop.v.v self.time
push.v self.length
call.i @@This@@(argc=0)
push.v builtin.convertTime
callv.v 1
pop.v.v self.length
exit.i

:[100]
push.i [function]gml_Script_ShakeTwerkActor
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.ShakeTwerkActor
popz.v
b [105]

> gml_Script_ShakeTwerk (locals=1, argc=5)
:[101]
pushbltn.v builtin.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [103]

:[102]
pushbltn.v builtin.undefined
pop.v.v builtin.argument4

:[103]
push.v arg.argument4
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
push.i [function]gml_Script_ShakeTwerkActor
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v local.actor
pushloc.v local.actor
call.i gml_Script___gmtwerk_insert__(argc=1)
popz.v
pushloc.v local.actor
ret.v

:[104]
exit.i

:[105]
push.i [function]gml_Script_ShakeTwerk
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.ShakeTwerk
popz.v
b [127]

> gml_Script_ChannelTwerkActor (locals=0, argc=6)
:[106]
pushbltn.v builtin.argument5
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [108]

:[107]
pushbltn.v builtin.undefined
pop.v.v builtin.argument5

:[108]
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_BaseTwerkActor(argc=3)
push.i [function]gml_Script_BaseTwerkActor
conv.i.v
call.i @@CopyStatic@@(argc=1)
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [119]

:[109]
setstatic.e
b [118]

> gml_Script_twerkPerform@anon@8746@ChannelTwerkActor@GMTwerk_Twerk (locals=1, argc=1)
:[110]
push.v builtin.time
push.v arg.argument0
add.v.v
pop.v.v builtin.time

:[111]
push.v builtin.time
push.v builtin.length
cmp.v.v GTE
bf [113]

:[112]
push.v builtin.time
push.v builtin.length
sub.v.v
pop.v.v builtin.time
push.v builtin.timesDone
push.e 1
add.i.v
pop.v.v builtin.timesDone
b [111]

:[113]
push.v builtin.time
push.v builtin.length
div.v.v
push.v builtin.channel
call.i animcurve_channel_evaluate(argc=2)
push.v builtin.y0
sub.v.v
push.v builtin.y1
push.v builtin.y0
sub.v.v
div.v.v
pop.v.v local.t
push.v builtin.blend
call.i is_undefined(argc=1)
conv.v.b
bf [115]

:[114]
pushloc.v local.t
push.v builtin.target
push.v builtin.source
call.i lerp(argc=3)
b [116]

:[115]
pushloc.v local.t
push.v builtin.target
push.v builtin.source
push.v builtin.blend
call.i script_execute(argc=4)

:[116]
ret.v

:[117]
exit.i

:[118]
push.i [function]gml_Script_twerkPerform@anon@8746@ChannelTwerkActor@GMTwerk_Twerk
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.twerkPerform

:[119]
pushi.e 0
pop.v.i builtin.time
push.v arg.argument4
call.i is_struct(argc=1)
conv.v.b
bf [121]

:[120]
push.v arg.argument4
b [124]

:[121]
push.v arg.argument4
call.i is_array(argc=1)
conv.v.b
bf [123]

:[122]
pushi.e -15
pushi.e 1
push.v [array]self.argument4
pushi.e -15
pushi.e 0
push.v [array]self.argument4
call.i animcurve_get_channel(argc=2)
b [124]

:[123]
pushi.e 0
conv.i.v
push.v arg.argument4
call.i animcurve_get_channel(argc=2)

:[124]
pop.v.v self.channel
pushi.e 0
pop.v.i builtin.y0
pushi.e 1
pop.v.i builtin.y1
push.v arg.argument3
pop.v.v self.length
pushbltn.v builtin.undefined
pop.v.v builtin.blend
push.v arg.argument5
call.i is_undefined(argc=1)
conv.v.b
not.b
bf [126]

:[125]
push.v arg.argument5
call.i @@This@@(argc=0)
push.v builtin.includeOpts
callv.v 1
popz.v

:[126]
push.v self.time
call.i @@This@@(argc=0)
push.v builtin.convertTime
callv.v 1
pop.v.v self.time
push.v self.length
call.i @@This@@(argc=0)
push.v builtin.convertTime
callv.v 1
pop.v.v self.length
exit.i

:[127]
push.i [function]gml_Script_ChannelTwerkActor
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.ChannelTwerkActor
popz.v
b [132]

> gml_Script_ChannelTwerk (locals=1, argc=6)
:[128]
pushbltn.v builtin.argument5
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [130]

:[129]
pushbltn.v builtin.undefined
pop.v.v builtin.argument5

:[130]
push.v arg.argument5
push.v arg.argument4
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
push.i [function]gml_Script_ChannelTwerkActor
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pop.v.v local.actor
pushloc.v local.actor
call.i gml_Script___gmtwerk_insert__(argc=1)
popz.v
pushloc.v local.actor
ret.v

:[131]
exit.i

:[132]
push.i [function]gml_Script_ChannelTwerk
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.ChannelTwerk
popz.v
b [152]

> gml_Script_DubstepTwerkActor (locals=0, argc=5)
:[133]
pushbltn.v builtin.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [135]

:[134]
pushbltn.v builtin.undefined
pop.v.v builtin.argument4

:[135]
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_BaseTwerkActor(argc=3)
push.i [function]gml_Script_BaseTwerkActor
conv.i.v
call.i @@CopyStatic@@(argc=1)
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [149]

:[136]
setstatic.e
b [148]

> gml_Script_twerkPerform@anon@11048@DubstepTwerkActor@GMTwerk_Twerk (locals=2, argc=1)
:[137]
push.v builtin.time
push.v arg.argument0
add.v.v
pop.v.v builtin.time

:[138]
push.v builtin.time
push.v builtin.length
cmp.v.v GTE
bf [140]

:[139]
push.v builtin.time
push.v builtin.length
sub.v.v
pop.v.v builtin.time
push.v builtin.timesDone
push.e 1
add.i.v
pop.v.v builtin.timesDone
b [138]

:[140]
push.v builtin.time
push.v builtin.length
div.v.v
pop.v.v local.p
pushloc.v local.p
push.d 0.5
cmp.d.v LT
bf [142]

:[141]
pushloc.v local.p
pushi.e 2
mul.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.forward
call.i script_execute(argc=4)
b [143]

:[142]
pushloc.v local.p
push.d 0.5
sub.d.v
pushi.e 2
mul.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.backward
call.i script_execute(argc=4)

:[143]
pop.v.v local.t
push.v builtin.blend
call.i is_undefined(argc=1)
conv.v.b
bf [145]

:[144]
pushloc.v local.t
push.v builtin.target
push.v builtin.source
call.i lerp(argc=3)
b [146]

:[145]
pushloc.v local.t
push.v builtin.target
push.v builtin.source
push.v builtin.blend
call.i script_execute(argc=4)

:[146]
ret.v

:[147]
exit.i

:[148]
push.i [function]gml_Script_twerkPerform@anon@11048@DubstepTwerkActor@GMTwerk_Twerk
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.twerkPerform

:[149]
pushi.e 0
pop.v.i builtin.time
push.v arg.argument3
pop.v.v self.length
pushbltn.v builtin.undefined
pop.v.v builtin.blend
pushref.i gml_Script_te_swing
pop.v.v builtin.forward
pushref.i gml_Script_te_swing
pop.v.v builtin.backward
push.v arg.argument4
call.i is_undefined(argc=1)
conv.v.b
not.b
bf [151]

:[150]
push.v arg.argument4
call.i @@This@@(argc=0)
push.v builtin.includeOpts
callv.v 1
popz.v

:[151]
push.v self.time
call.i @@This@@(argc=0)
push.v builtin.convertTime
callv.v 1
pop.v.v self.time
push.v self.length
call.i @@This@@(argc=0)
push.v builtin.convertTime
callv.v 1
pop.v.v self.length
exit.i

:[152]
push.i [function]gml_Script_DubstepTwerkActor
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.DubstepTwerkActor
popz.v
b [157]

> gml_Script_DubstepTwerk (locals=1, argc=5)
:[153]
pushbltn.v builtin.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [155]

:[154]
pushbltn.v builtin.undefined
pop.v.v builtin.argument4

:[155]
push.v arg.argument4
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
push.i [function]gml_Script_DubstepTwerkActor
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v local.actor
pushloc.v local.actor
call.i gml_Script___gmtwerk_insert__(argc=1)
popz.v
pushloc.v local.actor
ret.v

:[156]
exit.i

:[157]
push.i [function]gml_Script_DubstepTwerk
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.DubstepTwerk
popz.v

:[end]