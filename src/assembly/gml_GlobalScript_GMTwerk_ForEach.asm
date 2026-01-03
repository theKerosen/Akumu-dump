:[0]
b [19]

> gml_Script_ForEachActor (locals=0, argc=4)
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
bt [13]

:[4]
setstatic.e
b [12]

> gml_Script_onAct@anon@776@ForEachActor@GMTwerk_ForEach (locals=0, argc=1)
:[5]
push.v builtin.time
push.v arg.argument0
sub.v.v
pop.v.v builtin.time

:[6]
push.v builtin.time
pushi.e 0
cmp.i.v LTE
bf [11]

:[7]
push.v builtin.iterable
pushi.e -9
push.v [stacktop]self.index
push.v builtin.iterable
pushi.e -9
push.v [stacktop]self.value
call.i @@This@@(argc=0)
push.v builtin.onIterate
callv.v 2
popz.v
push.v builtin.iterable
dup.v 0 8
dup.v 0
push.v stacktop.next
callv.v 0
popz.v
push.v builtin.iterable
dup.v 0 8
dup.v 0
push.v stacktop.hasNext
callv.v 0
conv.v.b
bf [9]

:[8]
push.v builtin.time
push.v builtin.interval
add.v.v
pop.v.v builtin.time
b [10]

:[9]
call.i @@This@@(argc=0)
push.v builtin.done
callv.v 0
popz.v
push.v builtin.state
ret.v

:[10]
b [6]

:[11]
exit.i

:[12]
push.i [function]gml_Script_onAct@anon@776@ForEachActor@GMTwerk_ForEach
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.onAct

:[13]
push.v arg.argument0
pop.v.v builtin.time
push.v builtin.time
pop.v.v self.interval
push.v arg.argument1
call.i is_array(argc=1)
conv.v.b
bf [15]

:[14]
push.v arg.argument1
push.i [function]gml_Script_GMTwerkArrayIterator
conv.i.v
call.i @@NewGMLObject@@(argc=2)
b [16]

:[15]
push.v arg.argument1

:[16]
pop.v.v self.iterable
push.v arg.argument2
pop.v.v self.onIterate
push.v arg.argument3
call.i is_undefined(argc=1)
conv.v.b
not.b
bf [18]

:[17]
push.v arg.argument3
call.i @@This@@(argc=0)
push.v builtin.includeOpts
callv.v 1
popz.v

:[18]
push.v builtin.time
call.i @@This@@(argc=0)
push.v builtin.convertTime
callv.v 1
pop.v.v builtin.time
push.v self.interval
call.i @@This@@(argc=0)
push.v builtin.convertTime
callv.v 1
pop.v.v self.interval
exit.i

:[19]
push.i [function]gml_Script_ForEachActor
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.ForEachActor
popz.v
b [24]

> gml_Script_ForEach (locals=1, argc=4)
:[20]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [22]

:[21]
pushbltn.v builtin.undefined
pop.v.v builtin.argument3

:[22]
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
push.i [function]gml_Script_ForEachActor
conv.i.v
call.i @@NewGMLObject@@(argc=5)
pop.v.v local.actor
pushloc.v local.actor
call.i gml_Script___gmtwerk_insert__(argc=1)
popz.v
pushloc.v local.actor
ret.v

:[23]
exit.i

:[24]
push.i [function]gml_Script_ForEach
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.ForEach
popz.v

:[end]