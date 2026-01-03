:[0]
b [21]

> gml_Script_BaseTweenActor (locals=0, argc=2)
:[1]
call.i gml_Script_GMTwerkActor(argc=0)
push.i [function]gml_Script_GMTwerkActor
conv.i.v
call.i @@CopyStatic@@(argc=1)
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [20]

:[2]
setstatic.e
b [9]

> gml_Script_onAct@anon@476@BaseTweenActor@GMTwerk_Tween (locals=0, argc=1)
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
push.v builtin.tweenPerform
callv.v 1
dup.v 1 8
dup.v 0
push.v stacktop.set
callv.v 1
popz.v
call.i @@This@@(argc=0)
push.v builtin.tweenIsDone
callv.v 0
conv.v.b
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
push.i [function]gml_Script_onAct@anon@476@BaseTweenActor@GMTwerk_Tween
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.onAct
b [13]

> gml_Script_done@anon@753@BaseTweenActor@GMTwerk_Tween (locals=0, argc=0)
:[10]
push.v builtin.state
push.l 0
cmp.l.v GTE
bf [12]

:[11]
push.v builtin.subject
push.v builtin.target
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
push.i [function]gml_Script_done@anon@753@BaseTweenActor@GMTwerk_Tween
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.done
b [19]

> gml_Script_stop@anon@967@BaseTweenActor@GMTwerk_Tween (locals=0, argc=0)
:[14]
push.v builtin.state
push.l 0
cmp.l.v GTE
bf [18]

:[15]
push.v builtin.snapOnStop
conv.v.b
bf [17]

:[16]
push.v builtin.subject
push.v builtin.target
dup.v 1 8
dup.v 0
push.v stacktop.set
callv.v 1
popz.v

:[17]
push.l -2
pop.v.l builtin.state
call.i @@This@@(argc=0)
push.v builtin.onStop
callv.v 0
popz.v

:[18]
exit.i

:[19]
push.i [function]gml_Script_stop@anon@967@BaseTweenActor@GMTwerk_Tween
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.stop

:[20]
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
pushi.e 1
pop.v.b builtin.snapOnStop
exit.i

:[21]
push.i [function]gml_Script_BaseTweenActor
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.BaseTweenActor
popz.v
b [39]

> gml_Script_TweenActor (locals=0, argc=4)
:[22]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [24]

:[23]
pushbltn.v builtin.undefined
pop.v.v builtin.argument3

:[24]
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_BaseTweenActor(argc=2)
push.i [function]gml_Script_BaseTweenActor
conv.i.v
call.i @@CopyStatic@@(argc=1)
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [36]

:[25]
setstatic.e
b [32]

> gml_Script_tweenPerform@anon@1897@TweenActor@GMTwerk_Tween (locals=0, argc=1)
:[26]
push.v builtin.elapsedTime
push.v arg.argument0
add.v.v
pop.v.v builtin.elapsedTime
push.v builtin.elapsedTime
push.v builtin.time
cmp.v.v GT
bf [28]

:[27]
push.v builtin.time
pop.v.v builtin.elapsedTime

:[28]
push.v builtin.blend
call.i is_undefined(argc=1)
conv.v.b
bf [30]

:[29]
push.v builtin.elapsedTime
push.v builtin.time
div.v.v
push.v builtin.target
push.v builtin.source
push.v builtin.type
call.i script_execute(argc=4)
ret.v

:[30]
push.v builtin.elapsedTime
push.v builtin.time
div.v.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.type
call.i script_execute(argc=4)
push.v builtin.target
push.v builtin.source
push.v builtin.blend
call.i script_execute(argc=4)
ret.v

:[31]
exit.i

:[32]
push.i [function]gml_Script_tweenPerform@anon@1897@TweenActor@GMTwerk_Tween
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.tweenPerform
b [35]

> gml_Script_tweenIsDone@anon@2342@TweenActor@GMTwerk_Tween (locals=0, argc=0)
:[33]
push.v builtin.elapsedTime
push.v builtin.time
cmp.v.v GTE
conv.b.v
ret.v

:[34]
exit.i

:[35]
push.i [function]gml_Script_tweenIsDone@anon@2342@TweenActor@GMTwerk_Tween
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.tweenIsDone

:[36]
push.v arg.argument2
pop.v.v self.time
pushref.i gml_Script_te_swing
pop.v.v builtin.type
pushbltn.v builtin.undefined
pop.v.v builtin.blend
push.v arg.argument3
call.i is_undefined(argc=1)
conv.v.b
not.b
bf [38]

:[37]
push.v arg.argument3
call.i @@This@@(argc=0)
push.v builtin.includeOpts
callv.v 1
popz.v

:[38]
push.v self.time
call.i @@This@@(argc=0)
push.v builtin.convertTime
callv.v 1
pop.v.v self.time
pushi.e 0
pop.v.i builtin.elapsedTime
exit.i

:[39]
push.i [function]gml_Script_TweenActor
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.TweenActor
popz.v
b [45]

> gml_Script_Tween (locals=1, argc=3)
:[40]
pushbltn.v builtin.argument_count
pushi.e 3
cmp.i.v GT
bf [42]

:[41]
pushi.e -15
pushi.e 3
push.v [array]self.argument
b [43]

:[42]
pushbltn.v builtin.undefined

:[43]
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
push.i [function]gml_Script_TweenActor
conv.i.v
call.i @@NewGMLObject@@(argc=5)
pop.v.v local.actor
pushloc.v local.actor
call.i gml_Script___gmtwerk_insert__(argc=1)
popz.v
pushloc.v local.actor
ret.v

:[44]
exit.i

:[45]
push.i [function]gml_Script_Tween
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.Tween
popz.v
b [76]

> gml_Script_ZenosTweenActor (locals=0, argc=4)
:[46]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [48]

:[47]
pushbltn.v builtin.undefined
pop.v.v builtin.argument3

:[48]
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_BaseTweenActor(argc=2)
push.i [function]gml_Script_BaseTweenActor
conv.i.v
call.i @@CopyStatic@@(argc=1)
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [73]

:[49]
setstatic.e
b [66]

> gml_Script_tweenPerform@anon@3777@ZenosTweenActor@GMTwerk_Tween (locals=1, argc=1)
:[50]
push.v builtin.deltaTime
conv.v.b
bf [55]

:[51]
pushi.e 1
push.v arg.argument0
pushi.e 1
conv.i.v
call.i game_get_speed(argc=1)
div.v.v
pushi.e 1
push.v builtin.fraction
sub.v.i
call.i power(argc=2)
sub.v.i
pop.v.v local.fractionPower
push.v builtin.blend
call.i is_undefined(argc=1)
conv.v.b
bf [53]

:[52]
pushloc.v local.fractionPower
push.v builtin.target
push.v builtin.subject
dup.v 0 8
dup.v 0
push.v stacktop.get
callv.v 0
call.i lerp(argc=3)
b [54]

:[53]
pushloc.v local.fractionPower
push.v builtin.target
push.v builtin.subject
dup.v 0 8
dup.v 0
push.v stacktop.get
callv.v 0
push.v builtin.blend
call.i script_execute(argc=4)

:[54]
pop.v.v builtin.latestValue
b [64]

:[55]
push.v arg.argument0
pushi.e 1
cmp.i.v EQ
bf [60]

:[56]
push.v builtin.blend
call.i is_undefined(argc=1)
conv.v.b
bf [58]

:[57]
push.v builtin.fraction
push.v builtin.target
push.v builtin.subject
dup.v 0 8
dup.v 0
push.v stacktop.get
callv.v 0
call.i lerp(argc=3)
b [59]

:[58]
push.v builtin.fraction
push.v builtin.target
push.v builtin.subject
dup.v 0 8
dup.v 0
push.v stacktop.get
callv.v 0
push.v builtin.blend
call.i script_execute(argc=4)

:[59]
pop.v.v builtin.latestValue
b [64]

:[60]
pushi.e 1
push.v arg.argument0
pushi.e 1
push.v builtin.fraction
sub.v.i
call.i power(argc=2)
sub.v.i
pop.v.v local.fractionPower
push.v builtin.blend
call.i is_undefined(argc=1)
conv.v.b
bf [62]

:[61]
pushloc.v local.fractionPower
push.v builtin.target
push.v builtin.subject
dup.v 0 8
dup.v 0
push.v stacktop.get
callv.v 0
call.i lerp(argc=3)
b [63]

:[62]
pushloc.v local.fractionPower
push.v builtin.target
push.v builtin.subject
dup.v 0 8
dup.v 0
push.v stacktop.get
callv.v 0
push.v builtin.blend
call.i script_execute(argc=4)

:[63]
pop.v.v builtin.latestValue

:[64]
push.v builtin.latestValue
ret.v

:[65]
exit.i

:[66]
push.i [function]gml_Script_tweenPerform@anon@3777@ZenosTweenActor@GMTwerk_Tween
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.tweenPerform
b [72]

> gml_Script_tweenIsDone@anon@4613@ZenosTweenActor@GMTwerk_Tween (locals=0, argc=0)
:[67]
push.v builtin.blend
call.i is_undefined(argc=1)
conv.v.b
bf [69]

:[68]
push.v builtin.latestValue
push.v builtin.target
sub.v.v
call.i abs(argc=1)
b [70]

:[69]
pushbltn.v builtin.undefined
push.v builtin.target
push.v builtin.latestValue
push.v builtin.blend
call.i script_execute(argc=4)

:[70]
push.v builtin.tolerance
cmp.v.v LT
conv.b.v
ret.v

:[71]
exit.i

:[72]
push.i [function]gml_Script_tweenIsDone@anon@4613@ZenosTweenActor@GMTwerk_Tween
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.tweenIsDone

:[73]
push.v arg.argument2
pop.v.v self.fraction
pushi.e 1
pop.v.i builtin.tolerance
pushbltn.v builtin.undefined
pop.v.v builtin.blend
push.v arg.argument3
call.i is_undefined(argc=1)
conv.v.b
not.b
bf [75]

:[74]
push.v arg.argument3
call.i @@This@@(argc=0)
push.v builtin.includeOpts
callv.v 1
popz.v

:[75]
push.v self.subject
dup.v 0 8
dup.v 0
push.v stacktop.get
callv.v 0
pop.v.v builtin.latestValue
exit.i

:[76]
push.i [function]gml_Script_ZenosTweenActor
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.ZenosTweenActor
popz.v
b [81]

> gml_Script_ZenosTween (locals=1, argc=4)
:[77]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [79]

:[78]
pushbltn.v builtin.undefined
pop.v.v builtin.argument3

:[79]
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
push.i [function]gml_Script_ZenosTweenActor
conv.i.v
call.i @@NewGMLObject@@(argc=5)
pop.v.v local.actor
pushloc.v local.actor
call.i gml_Script___gmtwerk_insert__(argc=1)
popz.v
pushloc.v local.actor
ret.v

:[80]
exit.i

:[81]
push.i [function]gml_Script_ZenosTween
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.ZenosTween
popz.v
b [112]

> gml_Script_StepTweenActor (locals=0, argc=4)
:[82]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [84]

:[83]
pushbltn.v builtin.undefined
pop.v.v builtin.argument3

:[84]
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_BaseTweenActor(argc=2)
push.i [function]gml_Script_BaseTweenActor
conv.i.v
call.i @@CopyStatic@@(argc=1)
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [109]

:[85]
setstatic.e
b [102]

> gml_Script_tweenPerform@anon@6221@StepTweenActor@GMTwerk_Tween (locals=3, argc=1)
:[86]
push.v builtin.subject
dup.v 0 8
dup.v 0
push.v stacktop.get
callv.v 0
pop.v.v local.subjectGet
push.v builtin.blend
call.i is_undefined(argc=1)
conv.v.b
bf [88]

:[87]
push.v builtin.target
pushloc.v local.subjectGet
sub.v.v
call.i abs(argc=1)
b [89]

:[88]
pushbltn.v builtin.undefined
push.v builtin.target
pushloc.v local.subjectGet
push.v builtin.blend
call.i script_execute(argc=4)

:[89]
pop.v.v local.remainingDistance
pushloc.v local.remainingDistance
push.v builtin.step
div.v.v
push.v builtin.deltaTime
conv.v.b
bf [91]

:[90]
push.v arg.argument0
pushi.e 1
conv.i.v
call.i game_get_speed(argc=1)
div.v.v
b [92]

:[91]
push.v arg.argument0

:[92]
call.i min(argc=2)
pop.v.v local.stepMultiple
push.v builtin.blend
call.i is_undefined(argc=1)
conv.v.b
bf [94]

:[93]
pushloc.v local.subjectGet
push.v builtin.step
pushloc.v local.stepMultiple
mul.v.v
push.v builtin.target
pushloc.v local.subjectGet
sub.v.v
call.i sign(argc=1)
mul.v.v
add.v.v
pop.v.v builtin.latestValue
b [95]

:[94]
push.v builtin.step
pushloc.v local.stepMultiple
mul.v.v
pushloc.v local.remainingDistance
div.v.v
push.v builtin.target
pushloc.v local.subjectGet
push.v builtin.blend
call.i script_execute(argc=4)
pop.v.v builtin.latestValue

:[95]
push.v builtin.integerOnly
conv.v.b
bf [97]

:[96]
push.v builtin.latestValue
call.i frac(argc=1)
pushi.e 0
cmp.i.v NEQ
b [98]

:[97]
push.e 0

:[98]
bf [100]

:[99]
push.v builtin.latestValue
call.i floor(argc=1)
pop.v.v builtin.latestValue

:[100]
push.v builtin.latestValue
ret.v

:[101]
exit.i

:[102]
push.i [function]gml_Script_tweenPerform@anon@6221@StepTweenActor@GMTwerk_Tween
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.tweenPerform
b [108]

> gml_Script_tweenIsDone@anon@7004@StepTweenActor@GMTwerk_Tween (locals=0, argc=0)
:[103]
push.v builtin.blend
call.i is_undefined(argc=1)
conv.v.b
bf [105]

:[104]
push.v builtin.latestValue
push.v builtin.target
sub.v.v
call.i abs(argc=1)
b [106]

:[105]
pushbltn.v builtin.undefined
push.v builtin.target
push.v builtin.latestValue
push.v builtin.blend
call.i script_execute(argc=4)

:[106]
push.v builtin.step
cmp.v.v LT
conv.b.v
ret.v

:[107]
exit.i

:[108]
push.i [function]gml_Script_tweenIsDone@anon@7004@StepTweenActor@GMTwerk_Tween
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.tweenIsDone

:[109]
push.v arg.argument2
pop.v.v self.step
pushbltn.v builtin.undefined
pop.v.v builtin.blend
pushi.e 0
pop.v.b builtin.integerOnly
push.v arg.argument3
call.i is_undefined(argc=1)
conv.v.b
not.b
bf [111]

:[110]
push.v arg.argument3
call.i @@This@@(argc=0)
push.v builtin.includeOpts
callv.v 1
popz.v

:[111]
push.v self.subject
dup.v 0 8
dup.v 0
push.v stacktop.get
callv.v 0
pop.v.v builtin.latestValue
exit.i

:[112]
push.i [function]gml_Script_StepTweenActor
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.StepTweenActor
popz.v
b [117]

> gml_Script_StepTween (locals=1, argc=4)
:[113]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [115]

:[114]
pushbltn.v builtin.undefined
pop.v.v builtin.argument3

:[115]
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
push.i [function]gml_Script_StepTweenActor
conv.i.v
call.i @@NewGMLObject@@(argc=5)
pop.v.v local.actor
pushloc.v local.actor
call.i gml_Script___gmtwerk_insert__(argc=1)
popz.v
pushloc.v local.actor
ret.v

:[116]
exit.i

:[117]
push.i [function]gml_Script_StepTween
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.StepTween
popz.v
b [140]

> gml_Script_ChannelTweenActor (locals=0, argc=5)
:[118]
pushbltn.v builtin.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [120]

:[119]
pushbltn.v builtin.undefined
pop.v.v builtin.argument4

:[120]
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_BaseTweenActor(argc=2)
push.i [function]gml_Script_BaseTweenActor
conv.i.v
call.i @@CopyStatic@@(argc=1)
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [132]

:[121]
setstatic.e
b [128]

> gml_Script_tweenPerform@anon@8728@ChannelTweenActor@GMTwerk_Tween (locals=1, argc=1)
:[122]
push.v builtin.elapsedTime
push.v arg.argument0
add.v.v
pop.v.v builtin.elapsedTime
push.v builtin.elapsedTime
push.v builtin.time
cmp.v.v GT
bf [124]

:[123]
push.v builtin.time
pop.v.v builtin.elapsedTime

:[124]
push.v builtin.elapsedTime
push.v builtin.time
div.v.v
push.v builtin.channel
call.i animcurve_channel_evaluate(argc=2)
push.v builtin.y0
sub.v.v
push.v builtin.y1
push.v builtin.y0
sub.v.v
div.v.v
pop.v.v local.channelY
push.v builtin.blend
call.i is_undefined(argc=1)
conv.v.b
bf [126]

:[125]
pushloc.v local.channelY
push.v builtin.target
push.v builtin.source
call.i lerp(argc=3)
ret.v

:[126]
pushloc.v local.channelY
push.v builtin.target
push.v builtin.source
push.v builtin.blend
call.i script_execute(argc=4)
ret.v

:[127]
exit.i

:[128]
push.i [function]gml_Script_tweenPerform@anon@8728@ChannelTweenActor@GMTwerk_Tween
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.tweenPerform
b [131]

> gml_Script_tweenIsDone@anon@9205@ChannelTweenActor@GMTwerk_Tween (locals=0, argc=0)
:[129]
push.v builtin.elapsedTime
push.v builtin.time
cmp.v.v GTE
conv.b.v
ret.v

:[130]
exit.i

:[131]
push.i [function]gml_Script_tweenIsDone@anon@9205@ChannelTweenActor@GMTwerk_Tween
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.tweenIsDone

:[132]
push.v arg.argument2
pop.v.v self.time
push.v arg.argument3
call.i is_struct(argc=1)
conv.v.b
bf [134]

:[133]
push.v arg.argument3
b [137]

:[134]
push.v arg.argument3
call.i is_array(argc=1)
conv.v.b
bf [136]

:[135]
pushi.e -15
pushi.e 1
push.v [array]self.argument3
pushi.e -15
pushi.e 0
push.v [array]self.argument3
call.i animcurve_get_channel(argc=2)
b [137]

:[136]
pushi.e 0
conv.i.v
push.v arg.argument3
call.i animcurve_get_channel(argc=2)

:[137]
pop.v.v self.channel
pushi.e 0
pop.v.i builtin.y0
pushi.e 1
pop.v.i builtin.y1
pushbltn.v builtin.undefined
pop.v.v builtin.blend
push.v arg.argument4
call.i is_undefined(argc=1)
conv.v.b
not.b
bf [139]

:[138]
push.v arg.argument4
call.i @@This@@(argc=0)
push.v builtin.includeOpts
callv.v 1
popz.v

:[139]
push.v self.time
call.i @@This@@(argc=0)
push.v builtin.convertTime
callv.v 1
pop.v.v self.time
pushi.e 0
pop.v.i builtin.elapsedTime
exit.i

:[140]
push.i [function]gml_Script_ChannelTweenActor
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.ChannelTweenActor
popz.v
b [145]

> gml_Script_ChannelTween (locals=1, argc=5)
:[141]
pushbltn.v builtin.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [143]

:[142]
pushbltn.v builtin.undefined
pop.v.v builtin.argument4

:[143]
push.v arg.argument4
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
push.i [function]gml_Script_ChannelTweenActor
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v local.actor
pushloc.v local.actor
call.i gml_Script___gmtwerk_insert__(argc=1)
popz.v
pushloc.v local.actor
ret.v

:[144]
exit.i

:[145]
push.i [function]gml_Script_ChannelTween
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.ChannelTween
popz.v

:[end]