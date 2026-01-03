:[0]
b [30]

> gml_Script_BaseTrackActor (locals=0, argc=2)
:[1]
call.i gml_Script_GMTwerkActor(argc=0)
push.i [function]gml_Script_GMTwerkActor
conv.i.v
call.i @@CopyStatic@@(argc=1)
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [29]

:[2]
setstatic.e
b [18]

> gml_Script_onAct@anon@497@BaseTrackActor@GMTwerk_Track (locals=0, argc=1)
:[3]
push.v builtin.subject
dup.v 0 8
dup.v 0
push.v stacktop.exists
callv.v 0
conv.v.b
bf [5]

:[4]
push.v builtin.target
dup.v 0 8
dup.v 0
push.v stacktop.exists
callv.v 0
conv.v.b
b [6]

:[5]
push.e 0

:[6]
bf [16]

:[7]
push.v builtin.moving
conv.v.b
not.b
bf [10]

:[8]
push.v builtin.subject
dup.v 0 8
dup.v 0
push.v stacktop.get
callv.v 0
pop.v.v builtin.fromValue
push.v builtin.target
dup.v 0 8
dup.v 0
push.v stacktop.get
callv.v 0
pop.v.v builtin.toValue
push.v builtin.fromValue
push.v builtin.toValue
cmp.v.v NEQ
bf [10]

:[9]
pushi.e 1
pop.v.b builtin.moving
call.i @@This@@(argc=0)
push.v builtin.onNudge
callv.v 0
popz.v

:[10]
push.v builtin.moving
conv.v.b
bf [15]

:[11]
push.v builtin.continuous
conv.v.b
bf [13]

:[12]
push.v builtin.subject
dup.v 0 8
dup.v 0
push.v stacktop.get
callv.v 0
pop.v.v builtin.fromValue
push.v builtin.target
dup.v 0 8
dup.v 0
push.v stacktop.get
callv.v 0
pop.v.v builtin.toValue

:[13]
push.v builtin.subject
push.v arg.argument0
call.i @@This@@(argc=0)
push.v builtin.trackPerform
callv.v 1
dup.v 1 8
dup.v 0
push.v stacktop.set
callv.v 1
popz.v
call.i @@This@@(argc=0)
push.v builtin.trackReached
callv.v 0
conv.v.b
bf [15]

:[14]
pushi.e 0
pop.v.b builtin.moving
push.v builtin.subject
push.v builtin.toValue
dup.v 1 8
dup.v 0
push.v stacktop.set
callv.v 1
popz.v
call.i @@This@@(argc=0)
push.v builtin.onReach
callv.v 0
popz.v

:[15]
b [17]

:[16]
pushi.e 0
pop.v.b builtin.moving
push.l -3
pop.v.l builtin.state
call.i @@This@@(argc=0)
push.v builtin.onLost
callv.v 0
popz.v

:[17]
exit.i

:[18]
push.i [function]gml_Script_onAct@anon@497@BaseTrackActor@GMTwerk_Track
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.onAct
b [22]

> gml_Script_done@anon@1268@BaseTrackActor@GMTwerk_Track (locals=0, argc=0)
:[19]
push.v builtin.state
push.l 0
cmp.l.v GTE
bf [21]

:[20]
push.v builtin.subject
push.v builtin.target
dup.v 0 8
dup.v 0
push.v stacktop.get
callv.v 0
dup.v 1 8
dup.v 0
push.v stacktop.set
callv.v 1
popz.v
pushi.e 0
pop.v.b builtin.moving
push.l -1
pop.v.l builtin.state
call.i @@This@@(argc=0)
push.v builtin.onDone
callv.v 0
popz.v

:[21]
exit.i

:[22]
push.i [function]gml_Script_done@anon@1268@BaseTrackActor@GMTwerk_Track
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.done
b [28]

> gml_Script_stop@anon@1507@BaseTrackActor@GMTwerk_Track (locals=0, argc=0)
:[23]
push.v builtin.state
push.l 0
cmp.l.v GTE
bf [27]

:[24]
push.v builtin.snapOnStop
conv.v.b
bf [26]

:[25]
push.v builtin.subject
push.v builtin.target
dup.v 0 8
dup.v 0
push.v stacktop.get
callv.v 0
dup.v 1 8
dup.v 0
push.v stacktop.set
callv.v 1
popz.v

:[26]
pushi.e 0
pop.v.b builtin.moving
push.l -2
pop.v.l builtin.state
call.i @@This@@(argc=0)
push.v builtin.onStop
callv.v 0
popz.v

:[27]
exit.i

:[28]
push.i [function]gml_Script_stop@anon@1507@BaseTrackActor@GMTwerk_Track
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.stop

:[29]
push.v arg.argument0
pop.v.v self.subject
pushbltn.v builtin.undefined
pop.v.v builtin.fromValue
push.v arg.argument1
pop.v.v self.target
pushbltn.v builtin.undefined
pop.v.v builtin.toValue
pushi.e 0
pop.v.b builtin.moving
push.v builtin.noop
pop.v.v builtin.onNudge
push.v builtin.noop
pop.v.v builtin.onReach
pushi.e 1
pop.v.b builtin.snapOnStop
pushi.e 0
pop.v.b builtin.continuous
exit.i

:[30]
push.i [function]gml_Script_BaseTrackActor
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.BaseTrackActor
popz.v
b [50]

> gml_Script_TrackActor (locals=0, argc=4)
:[31]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [33]

:[32]
pushbltn.v builtin.undefined
pop.v.v builtin.argument3

:[33]
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_BaseTrackActor(argc=2)
push.i [function]gml_Script_BaseTrackActor
conv.i.v
call.i @@CopyStatic@@(argc=1)
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [47]

:[34]
setstatic.e
b [41]

> gml_Script_trackPerform@anon@2562@TrackActor@GMTwerk_Track (locals=0, argc=1)
:[35]
push.v builtin.elapsedTime
push.v arg.argument0
add.v.v
pop.v.v builtin.elapsedTime
push.v builtin.elapsedTime
push.v builtin.time
cmp.v.v GT
bf [37]

:[36]
push.v builtin.time
pop.v.v builtin.elapsedTime

:[37]
push.v builtin.blend
call.i is_undefined(argc=1)
conv.v.b
bf [39]

:[38]
push.v builtin.elapsedTime
push.v builtin.time
div.v.v
push.v builtin.toValue
push.v builtin.fromValue
push.v builtin.type
call.i script_execute(argc=4)
ret.v

:[39]
push.v builtin.elapsedTime
push.v builtin.time
div.v.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.type
call.i script_execute(argc=4)
push.v builtin.toValue
push.v builtin.fromValue
push.v builtin.blend
call.i script_execute(argc=4)
ret.v

:[40]
exit.i

:[41]
push.i [function]gml_Script_trackPerform@anon@2562@TrackActor@GMTwerk_Track
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.trackPerform
b [46]

> gml_Script_trackReached@anon@3017@TrackActor@GMTwerk_Track (locals=0, argc=0)
:[42]
push.v builtin.elapsedTime
push.v builtin.time
cmp.v.v GTE
bf [44]

:[43]
pushi.e 0
pop.v.i builtin.elapsedTime
pushi.e 1
conv.b.v
ret.v

:[44]
pushi.e 0
conv.b.v
ret.v

:[45]
exit.i

:[46]
push.i [function]gml_Script_trackReached@anon@3017@TrackActor@GMTwerk_Track
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.trackReached

:[47]
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
bf [49]

:[48]
push.v arg.argument3
call.i @@This@@(argc=0)
push.v builtin.includeOpts
callv.v 1
popz.v

:[49]
push.v self.time
call.i @@This@@(argc=0)
push.v builtin.convertTime
callv.v 1
pop.v.v self.time
pushi.e 0
pop.v.i builtin.elapsedTime
exit.i

:[50]
push.i [function]gml_Script_TrackActor
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.TrackActor
popz.v
b [55]

> gml_Script_Track (locals=1, argc=4)
:[51]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [53]

:[52]
pushbltn.v builtin.undefined
pop.v.v builtin.argument3

:[53]
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
push.i [function]gml_Script_TrackActor
conv.i.v
call.i @@NewGMLObject@@(argc=5)
pop.v.v local.actor
pushloc.v local.actor
call.i gml_Script___gmtwerk_insert__(argc=1)
popz.v
pushloc.v local.actor
ret.v

:[54]
exit.i

:[55]
push.i [function]gml_Script_Track
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.Track
popz.v
b [86]

> gml_Script_ZenosTrackActor (locals=0, argc=4)
:[56]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [58]

:[57]
pushbltn.v builtin.undefined
pop.v.v builtin.argument3

:[58]
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_BaseTrackActor(argc=2)
push.i [function]gml_Script_BaseTrackActor
conv.i.v
call.i @@CopyStatic@@(argc=1)
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [83]

:[59]
setstatic.e
b [76]

> gml_Script_trackPerform@anon@4547@ZenosTrackActor@GMTwerk_Track (locals=1, argc=1)
:[60]
push.v builtin.deltaTime
conv.v.b
bf [65]

:[61]
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
bf [63]

:[62]
pushloc.v local.fractionPower
push.v builtin.toValue
push.v builtin.fromValue
call.i lerp(argc=3)
b [64]

:[63]
pushloc.v local.fractionPower
push.v builtin.toValue
push.v builtin.fromValue
push.v builtin.blend
call.i script_execute(argc=4)

:[64]
pop.v.v builtin.latestValue
b [74]

:[65]
push.v arg.argument0
pushi.e 1
cmp.i.v EQ
bf [70]

:[66]
push.v builtin.blend
call.i is_undefined(argc=1)
conv.v.b
bf [68]

:[67]
push.v builtin.fraction
push.v builtin.toValue
push.v builtin.fromValue
call.i lerp(argc=3)
b [69]

:[68]
push.v builtin.fraction
push.v builtin.toValue
push.v builtin.fromValue
push.v builtin.blend
call.i script_execute(argc=4)

:[69]
pop.v.v builtin.latestValue
b [74]

:[70]
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
bf [72]

:[71]
pushloc.v local.fractionPower
push.v builtin.toValue
push.v builtin.fromValue
call.i lerp(argc=3)
b [73]

:[72]
pushloc.v local.fractionPower
push.v builtin.toValue
push.v builtin.fromValue
push.v builtin.blend
call.i script_execute(argc=4)

:[73]
pop.v.v builtin.latestValue

:[74]
push.v builtin.latestValue
ret.v

:[75]
exit.i

:[76]
push.i [function]gml_Script_trackPerform@anon@4547@ZenosTrackActor@GMTwerk_Track
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.trackPerform
b [82]

> gml_Script_trackReached@anon@5539@ZenosTrackActor@GMTwerk_Track (locals=0, argc=0)
:[77]
push.v builtin.blend
call.i is_undefined(argc=1)
conv.v.b
bf [79]

:[78]
push.v builtin.latestValue
push.v builtin.toValue
sub.v.v
call.i abs(argc=1)
b [80]

:[79]
pushbltn.v builtin.undefined
push.v builtin.toValue
push.v builtin.latestValue
push.v builtin.blend
call.i script_execute(argc=4)

:[80]
push.v builtin.tolerance
cmp.v.v LT
conv.b.v
ret.v

:[81]
exit.i

:[82]
push.i [function]gml_Script_trackReached@anon@5539@ZenosTrackActor@GMTwerk_Track
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.trackReached

:[83]
push.v arg.argument2
pop.v.v self.fraction
pushi.e 1
pop.v.i builtin.tolerance
pushbltn.v builtin.undefined
pop.v.v builtin.blend
pushi.e 1
pop.v.b builtin.continuous
push.v arg.argument3
call.i is_undefined(argc=1)
conv.v.b
not.b
bf [85]

:[84]
push.v arg.argument3
call.i @@This@@(argc=0)
push.v builtin.includeOpts
callv.v 1
popz.v

:[85]
push.v arg.argument0
dup.v 0 8
dup.v 0
push.v stacktop.get
callv.v 0
pop.v.v builtin.latestValue
exit.i

:[86]
push.i [function]gml_Script_ZenosTrackActor
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.ZenosTrackActor
popz.v
b [91]

> gml_Script_ZenosTrack (locals=1, argc=4)
:[87]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [89]

:[88]
pushbltn.v builtin.undefined
pop.v.v builtin.argument3

:[89]
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
push.i [function]gml_Script_ZenosTrackActor
conv.i.v
call.i @@NewGMLObject@@(argc=5)
pop.v.v local.actor
pushloc.v local.actor
call.i gml_Script___gmtwerk_insert__(argc=1)
popz.v
pushloc.v local.actor
ret.v

:[90]
exit.i

:[91]
push.i [function]gml_Script_ZenosTrack
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.ZenosTrack
popz.v
b [122]

> gml_Script_StepTrackActor (locals=0, argc=4)
:[92]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [94]

:[93]
pushbltn.v builtin.undefined
pop.v.v builtin.argument3

:[94]
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_BaseTrackActor(argc=2)
push.i [function]gml_Script_BaseTrackActor
conv.i.v
call.i @@CopyStatic@@(argc=1)
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [119]

:[95]
setstatic.e
b [112]

> gml_Script_trackPerform@anon@7196@StepTrackActor@GMTwerk_Track (locals=2, argc=1)
:[96]
push.v builtin.blend
call.i is_undefined(argc=1)
conv.v.b
bf [98]

:[97]
push.v builtin.toValue
push.v builtin.fromValue
sub.v.v
call.i abs(argc=1)
b [99]

:[98]
pushbltn.v builtin.undefined
push.v builtin.toValue
push.v builtin.fromValue
push.v builtin.blend
call.i script_execute(argc=4)

:[99]
pop.v.v local.remainingDistance
pushloc.v local.remainingDistance
push.v builtin.step
div.v.v
push.v builtin.deltaTime
conv.v.b
bf [101]

:[100]
push.v arg.argument0
pushi.e 1
conv.i.v
call.i game_get_speed(argc=1)
div.v.v
b [102]

:[101]
push.v arg.argument0

:[102]
call.i min(argc=2)
pop.v.v local.stepMultiple
push.v builtin.blend
call.i is_undefined(argc=1)
conv.v.b
bf [104]

:[103]
push.v builtin.fromValue
push.v builtin.step
pushloc.v local.stepMultiple
mul.v.v
push.v builtin.toValue
push.v builtin.fromValue
sub.v.v
call.i sign(argc=1)
mul.v.v
add.v.v
pop.v.v builtin.latestValue
b [105]

:[104]
push.v builtin.step
pushloc.v local.stepMultiple
mul.v.v
pushloc.v local.remainingDistance
div.v.v
push.v builtin.toValue
push.v builtin.fromValue
push.v builtin.blend
call.i script_execute(argc=4)
pop.v.v builtin.latestValue

:[105]
push.v builtin.integerOnly
conv.v.b
bf [107]

:[106]
push.v builtin.latestValue
call.i frac(argc=1)
pushi.e 0
cmp.i.v NEQ
b [108]

:[107]
push.e 0

:[108]
bf [110]

:[109]
push.v builtin.latestValue
call.i floor(argc=1)
pop.v.v builtin.latestValue

:[110]
push.v builtin.latestValue
ret.v

:[111]
exit.i

:[112]
push.i [function]gml_Script_trackPerform@anon@7196@StepTrackActor@GMTwerk_Track
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.trackPerform
b [118]

> gml_Script_trackReached@anon@7946@StepTrackActor@GMTwerk_Track (locals=0, argc=0)
:[113]
push.v builtin.blend
call.i is_undefined(argc=1)
conv.v.b
bf [115]

:[114]
push.v builtin.latestValue
push.v builtin.toValue
sub.v.v
call.i abs(argc=1)
b [116]

:[115]
pushbltn.v builtin.undefined
push.v builtin.toValue
push.v builtin.latestValue
push.v builtin.blend
call.i script_execute(argc=4)

:[116]
push.v builtin.step
cmp.v.v LT
conv.b.v
ret.v

:[117]
exit.i

:[118]
push.i [function]gml_Script_trackReached@anon@7946@StepTrackActor@GMTwerk_Track
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.trackReached

:[119]
push.v arg.argument2
pop.v.v self.step
pushbltn.v builtin.undefined
pop.v.v builtin.blend
pushi.e 0
pop.v.b builtin.integerOnly
pushi.e 1
pop.v.b builtin.continuous
push.v arg.argument3
call.i is_undefined(argc=1)
conv.v.b
not.b
bf [121]

:[120]
push.v arg.argument3
call.i @@This@@(argc=0)
push.v builtin.includeOpts
callv.v 1
popz.v

:[121]
push.v arg.argument0
dup.v 0 8
dup.v 0
push.v stacktop.get
callv.v 0
pop.v.v builtin.latestValue
exit.i

:[122]
push.i [function]gml_Script_StepTrackActor
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.StepTrackActor
popz.v
b [127]

> gml_Script_StepTrack (locals=1, argc=4)
:[123]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [125]

:[124]
pushbltn.v builtin.undefined
pop.v.v builtin.argument3

:[125]
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
push.i [function]gml_Script_StepTrackActor
conv.i.v
call.i @@NewGMLObject@@(argc=5)
pop.v.v local.actor
pushloc.v local.actor
call.i gml_Script___gmtwerk_insert__(argc=1)
popz.v
pushloc.v local.actor
ret.v

:[126]
exit.i

:[127]
push.i [function]gml_Script_StepTrack
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.StepTrack
popz.v
b [152]

> gml_Script_ChannelTrackActor (locals=0, argc=5)
:[128]
pushbltn.v builtin.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [130]

:[129]
pushbltn.v builtin.undefined
pop.v.v builtin.argument4

:[130]
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_BaseTrackActor(argc=2)
push.i [function]gml_Script_BaseTrackActor
conv.i.v
call.i @@CopyStatic@@(argc=1)
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [144]

:[131]
setstatic.e
b [138]

> gml_Script_trackPerform@anon@9730@ChannelTrackActor@GMTwerk_Track (locals=1, argc=1)
:[132]
push.v builtin.elapsedTime
push.v arg.argument0
add.v.v
pop.v.v builtin.elapsedTime
push.v builtin.elapsedTime
push.v builtin.time
cmp.v.v GT
bf [134]

:[133]
push.v builtin.time
pop.v.v builtin.elapsedTime

:[134]
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
bf [136]

:[135]
pushloc.v local.channelY
push.v builtin.toValue
push.v builtin.fromValue
call.i lerp(argc=3)
ret.v

:[136]
pushloc.v local.channelY
push.v builtin.toValue
push.v builtin.fromValue
push.v builtin.blend
call.i script_execute(argc=4)
ret.v

:[137]
exit.i

:[138]
push.i [function]gml_Script_trackPerform@anon@9730@ChannelTrackActor@GMTwerk_Track
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.trackPerform
b [143]

> gml_Script_trackReached@anon@10274@ChannelTrackActor@GMTwerk_Track (locals=0, argc=0)
:[139]
push.v builtin.elapsedTime
push.v builtin.time
cmp.v.v GTE
bf [141]

:[140]
pushi.e 0
pop.v.i builtin.elapsedTime
pushi.e 1
conv.b.v
ret.v

:[141]
pushi.e 0
conv.b.v
ret.v

:[142]
exit.i

:[143]
push.i [function]gml_Script_trackReached@anon@10274@ChannelTrackActor@GMTwerk_Track
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.trackReached

:[144]
push.v arg.argument2
pop.v.v self.time
push.v arg.argument3
call.i is_struct(argc=1)
conv.v.b
bf [146]

:[145]
push.v arg.argument3
b [149]

:[146]
push.v arg.argument3
call.i is_array(argc=1)
conv.v.b
bf [148]

:[147]
pushi.e -15
pushi.e 1
push.v [array]self.argument3
pushi.e -15
pushi.e 0
push.v [array]self.argument3
call.i animcurve_get_channel(argc=2)
b [149]

:[148]
pushi.e 0
conv.i.v
push.v arg.argument3
call.i animcurve_get_channel(argc=2)

:[149]
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
pushi.e 0
pop.v.i builtin.elapsedTime
exit.i

:[152]
push.i [function]gml_Script_ChannelTrackActor
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.ChannelTrackActor
popz.v
b [157]

> gml_Script_ChannelTrack (locals=1, argc=5)
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
push.i [function]gml_Script_ChannelTrackActor
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
push.i [function]gml_Script_ChannelTrack
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.ChannelTrack
popz.v

:[end]