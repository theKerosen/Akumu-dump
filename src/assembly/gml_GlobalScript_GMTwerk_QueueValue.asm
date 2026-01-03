:[0]
b [46]

> gml_Script_QueueValueActor (locals=0, argc=3)
:[1]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushbltn.v builtin.undefined
pop.v.v builtin.argument2

:[3]
call.i gml_Script_GMTwerkActor(argc=0)
push.i [function]gml_Script_GMTwerkActor
conv.i.v
call.i @@CopyStatic@@(argc=1)
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [43]

:[4]
setstatic.e
b [15]

> gml_Script_onAct@anon@622@QueueValueActor@GMTwerk_QueueValue (locals=0, argc=1)
:[5]
push.v builtin._dequeuePos
pushi.e 0
cmp.i.v GTE
bf [13]

:[6]
push.v builtin.time
push.v arg.argument0
sub.v.v
pop.v.v builtin.time

:[7]
push.v builtin.time
pushi.e 0
cmp.i.v LTE
bf [12]

:[8]
push.v builtin._enqueuePos
push.v builtin._dequeuePos
sub.v.v
pushi.e 0
cmp.i.v GT
bf [10]

:[9]
call.i @@This@@(argc=0)
push.v builtin.pop
callv.v 0
popz.v
b [11]

:[10]
pushi.e -1
conv.i.v
call.i @@This@@(argc=0)
push.v builtin._clear
callv.v 1
popz.v
push.v builtin.interval
pop.v.v builtin.time
b [12]

:[11]
push.v builtin.time
push.v builtin.interval
add.v.v
pop.v.v builtin.time
b [7]

:[12]
b [14]

:[13]
push.v builtin.interval
pop.v.v builtin.time

:[14]
exit.i

:[15]
push.i [function]gml_Script_onAct@anon@622@QueueValueActor@GMTwerk_QueueValue
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.onAct
b [17]

> gml_Script__clear@anon@1158@QueueValueActor@GMTwerk_QueueValue (locals=0, argc=1)
:[16]
pushi.e 0
conv.i.v
push.v builtin.queue
call.i array_resize(argc=2)
popz.v
push.v arg.argument0
pop.v.v builtin._dequeuePos
push.v arg.argument0
pop.v.v builtin._enqueuePos
exit.i

:[17]
push.i [function]gml_Script__clear@anon@1158@QueueValueActor@GMTwerk_QueueValue
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static._clear
b [20]

> gml_Script_clear@anon@1390@QueueValueActor@GMTwerk_QueueValue (locals=0, argc=0)
:[18]
pushi.e -1
conv.i.v
call.i @@This@@(argc=0)
push.v builtin._clear
callv.v 1
popz.v
call.i @@This@@(argc=0)
push.v builtin.onClear
callv.v 0
popz.v
call.i @@This@@(argc=0)
ret.v

:[19]
exit.i

:[20]
push.i [function]gml_Script_clear@anon@1390@QueueValueActor@GMTwerk_QueueValue
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.clear
b [26]

> gml_Script_push@anon@1649@QueueValueActor@GMTwerk_QueueValue (locals=0, argc=1)
:[21]
push.v arg.argument0
call.i @@This@@(argc=0)
push.v builtin.onPush
callv.v 1
popz.v
push.v builtin._enqueuePos
pushi.e 0
cmp.i.v LT
bf [23]

:[22]
push.v arg.argument0
call.i @@This@@(argc=0)
push.v builtin.onPop
callv.v 1
popz.v
push.v builtin._dequeuePos
push.e 1
add.i.v
pop.v.v builtin._dequeuePos
push.v builtin._enqueuePos
push.e 1
add.i.v
pop.v.v builtin._enqueuePos
b [24]

:[23]
push.i 3407872
setowner.e
push.v arg.argument0
push.v builtin._enqueuePos
dup.v 0
push.e 1
add.i.v
pop.v.v builtin._enqueuePos
push.v builtin.queue
call.i array_set(argc=3)
popz.v

:[24]
call.i @@This@@(argc=0)
ret.v

:[25]
exit.i

:[26]
push.i [function]gml_Script_push@anon@1649@QueueValueActor@GMTwerk_QueueValue
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.push
b [31]

> gml_Script_pop@anon@1964@QueueValueActor@GMTwerk_QueueValue (locals=1, argc=0)
:[27]
pushi.e -6
push.v builtin._dequeuePos
dup.v 0
push.e 1
add.i.v
pop.v.v builtin._dequeuePos
conv.v.i
push.v [array]self.queue
pop.v.v local.val
push.v builtin._dequeuePos
push.v builtin._enqueuePos
cmp.v.v GTE
bf [29]

:[28]
pushi.e 0
conv.i.v
call.i @@This@@(argc=0)
push.v builtin._clear
callv.v 1
popz.v

:[29]
pushloc.v local.val
call.i @@This@@(argc=0)
push.v builtin.onPop
callv.v 1
popz.v
pushloc.v local.val
ret.v

:[30]
exit.i

:[31]
push.i [function]gml_Script_pop@anon@1964@QueueValueActor@GMTwerk_QueueValue
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.pop
b [34]

> gml_Script_size@anon@2222@QueueValueActor@GMTwerk_QueueValue (locals=0, argc=0)
:[32]
push.v builtin._enqueuePos
push.v builtin._dequeuePos
sub.v.v
ret.v

:[33]
exit.i

:[34]
push.i [function]gml_Script_size@anon@2222@QueueValueActor@GMTwerk_QueueValue
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.size
b [42]

> gml_Script_top@anon@2509@QueueValueActor@GMTwerk_QueueValue (locals=1, argc=1)
:[35]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [37]

:[36]
pushi.e 0
pop.v.i builtin.argument0

:[37]
push.v arg.argument0
push.v builtin._dequeuePos
add.v.v
pop.v.v local._targetPos
pushloc.v local._targetPos
push.v builtin._enqueuePos
cmp.v.v LT
bf [39]

:[38]
pushi.e -6
pushloc.v local._targetPos
conv.v.i
push.v [array]self.queue
b [40]

:[39]
pushbltn.v builtin.undefined

:[40]
ret.v

:[41]
exit.i

:[42]
push.i [function]gml_Script_top@anon@2509@QueueValueActor@GMTwerk_QueueValue
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.top

:[43]
push.v arg.argument0
pop.v.v self.interval
push.v arg.argument0
pop.v.v builtin.time
push.v arg.argument1
pop.v.v self.onPop
push.v builtin.noop
pop.v.v builtin.onPush
push.v builtin.noop
pop.v.v builtin.onClear
push.v arg.argument2
call.i is_undefined(argc=1)
conv.v.b
not.b
bf [45]

:[44]
push.v arg.argument2
call.i @@This@@(argc=0)
push.v builtin.includeOpts
callv.v 1
popz.v

:[45]
push.v self.time
call.i @@This@@(argc=0)
push.v builtin.convertTime
callv.v 1
pop.v.v self.time
push.v self.interval
call.i @@This@@(argc=0)
push.v builtin.convertTime
callv.v 1
pop.v.v self.interval
push.i 3145722
setowner.e
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.queue
pushi.e -1
pop.v.i builtin._dequeuePos
pushi.e -1
pop.v.i builtin._enqueuePos
exit.i

:[46]
push.i [function]gml_Script_QueueValueActor
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.QueueValueActor
popz.v
b [51]

> gml_Script_QueueValue (locals=1, argc=3)
:[47]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [49]

:[48]
pushbltn.v builtin.undefined
pop.v.v builtin.argument2

:[49]
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
push.i [function]gml_Script_QueueValueActor
conv.i.v
call.i @@NewGMLObject@@(argc=4)
pop.v.v local.actor
pushloc.v local.actor
call.i gml_Script___gmtwerk_insert__(argc=1)
popz.v
pushloc.v local.actor
ret.v

:[50]
exit.i

:[51]
push.i [function]gml_Script_QueueValue
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.QueueValue
popz.v

:[end]