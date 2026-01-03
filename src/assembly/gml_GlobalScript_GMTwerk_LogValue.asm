:[0]
b [43]

> gml_Script_LogValueActor (locals=0, argc=4)
:[1]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushbltn.v builtin.undefined
pop.v.v builtin.argument3

:[3]
call.i gml_Script_GMTwerkActor(argc=0)
push.i [function]gml_Script_GMTwerkActor
conv.i.v
call.i @@CopyStatic@@(argc=1)
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [37]

:[4]
setstatic.e
b [21]

> gml_Script_onAct@anon@887@LogValueActor@GMTwerk_LogValue (locals=2, argc=1)
:[5]
push.v builtin.subject
dup.v 0 8
dup.v 0
push.v stacktop.exists
callv.v 0
conv.v.b
bf [7]

:[6]
push.v builtin.subject
dup.v 0 8
dup.v 0
push.v stacktop.get
callv.v 0
pop.v.v local.currentValue
b [8]

:[7]
call.i @@This@@(argc=0)
push.v builtin.onLost
callv.v 0
popz.v
push.v builtin.state
ret.v

:[8]
push.v builtin.interval
pushi.e 0
cmp.i.v EQ
bf [12]

:[9]
pushloc.v local.currentValue
push.v builtin.lastValue
cmp.v.v NEQ
bf [11]

:[10]
pushloc.v local.currentValue
call.i @@This@@(argc=0)
push.v builtin.log
callv.v 1
popz.v
pushloc.v local.currentValue
pop.v.v builtin.lastValue

:[11]
b [20]

:[12]
push.v builtin.time
push.v arg.argument0
sub.v.v
pop.v.v builtin.time
push.v builtin.interval
call.i abs(argc=1)
pop.v.v local._absInterval

:[13]
push.v builtin.time
pushi.e 0
cmp.i.v LTE
bf [20]

:[14]
push.v builtin.interval
pushi.e 0
cmp.i.v GT
bt [16]

:[15]
pushloc.v local.currentValue
push.v builtin.lastValue
cmp.v.v NEQ
b [17]

:[16]
push.e 1

:[17]
bf [19]

:[18]
pushloc.v local.currentValue
call.i @@This@@(argc=0)
push.v builtin.log
callv.v 1
popz.v
pushloc.v local.currentValue
pop.v.v builtin.lastValue

:[19]
push.v builtin.time
pushloc.v local._absInterval
add.v.v
pop.v.v builtin.time
b [13]

:[20]
exit.i

:[21]
push.i [function]gml_Script_onAct@anon@887@LogValueActor@GMTwerk_LogValue
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.onAct
b [29]

> gml_Script_log@anon@1687@LogValueActor@GMTwerk_LogValue (locals=0, argc=1)
:[22]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [24]

:[23]
push.v builtin.subject
dup.v 0 8
dup.v 0
push.v stacktop.get
callv.v 0
pop.v.v builtin.argument0

:[24]
push.i 2949120
setowner.e
push.v arg.argument0
push.v builtin._logPos
push.v builtin._log
call.i array_set(argc=3)
popz.v
push.v builtin.size
call.i is_infinity(argc=1)
conv.v.b
bf [26]

:[25]
push.v builtin._logPos
push.e 1
add.i.v
pop.v.v builtin._logPos
b [27]

:[26]
push.v builtin._logPos
pushi.e 1
add.i.v
push.v builtin.size
mod.v.v
pop.v.v builtin._logPos

:[27]
push.v arg.argument0
call.i @@This@@(argc=0)
push.v builtin.onLog
callv.v 1
popz.v
call.i @@This@@(argc=0)
ret.v

:[28]
exit.i

:[29]
push.i [function]gml_Script_log@anon@1687@LogValueActor@GMTwerk_LogValue
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.log
b [36]

> gml_Script_get@anon@2205@LogValueActor@GMTwerk_LogValue (locals=0, argc=1)
:[30]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [32]

:[31]
pushi.e -1
pop.v.i builtin.argument0

:[32]
push.v builtin.size
call.i is_infinity(argc=1)
conv.v.b
bf [34]

:[33]
pushi.e -6
push.v builtin._logPos
push.v arg.argument0
sub.v.v
pushi.e 0
conv.i.v
call.i max(argc=2)
conv.v.i
push.v [array]self._log
ret.v

:[34]
pushi.e -6
push.v builtin._logPos
push.v builtin.size
pushi.e 1
sub.i.v
push.v builtin.size
neg.v
push.v arg.argument0
call.i clamp(argc=3)
add.v.v
push.v builtin.size
add.v.v
push.v builtin.size
mod.v.v
conv.v.i
push.v [array]self._log
ret.v

:[35]
exit.i

:[36]
push.i [function]gml_Script_get@anon@2205@LogValueActor@GMTwerk_LogValue
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get

:[37]
push.v arg.argument0
pop.v.v self.subject
push.v arg.argument1
pop.v.v self.size
push.v arg.argument2
pop.v.v self.interval
push.v arg.argument2
pop.v.v self.time
push.v arg.argument0
dup.v 0 8
dup.v 0
push.v stacktop.get
callv.v 0
pop.v.v builtin.startValue
push.v builtin.noop
pop.v.v builtin.onLog
push.v arg.argument3
call.i is_undefined(argc=1)
conv.v.b
not.b
bf [39]

:[38]
push.v arg.argument3
call.i @@This@@(argc=0)
push.v builtin.includeOpts
callv.v 1
popz.v

:[39]
push.v self.time
call.i @@This@@(argc=0)
push.v builtin.convertTime
callv.v 1
call.i abs(argc=1)
pop.v.v self.time
push.v self.interval
call.i @@This@@(argc=0)
push.v builtin.convertTime
callv.v 1
pop.v.v self.interval
push.i 2818042
setowner.e
push.v self.size
call.i is_infinity(argc=1)
conv.v.b
bf [41]

:[40]
call.i @@NewGMLArray@@(argc=0)
b [42]

:[41]
push.v builtin.startValue
push.v self.size
call.i array_create(argc=2)

:[42]
pop.v.v builtin._log
pushi.e 0
pop.v.i builtin._logPos
push.v builtin.startValue
pop.v.v builtin.lastValue
exit.i

:[43]
push.i [function]gml_Script_LogValueActor
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.LogValueActor
popz.v
b [48]

> gml_Script_LogValue (locals=1, argc=4)
:[44]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [46]

:[45]
pushbltn.v builtin.undefined
pop.v.v builtin.argument3

:[46]
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
push.i [function]gml_Script_LogValueActor
conv.i.v
call.i @@NewGMLObject@@(argc=5)
pop.v.v local.actor
pushloc.v local.actor
call.i gml_Script___gmtwerk_insert__(argc=1)
popz.v
pushloc.v local.actor
ret.v

:[47]
exit.i

:[48]
push.i [function]gml_Script_LogValue
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.LogValue
popz.v

:[end]