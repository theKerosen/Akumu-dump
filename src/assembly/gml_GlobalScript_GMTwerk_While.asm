:[0]
b [19]

> gml_Script_WhileActor (locals=0, argc=4)
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
bt [16]

:[4]
setstatic.e
b [15]

> gml_Script_onAct@anon@763@WhileActor@GMTwerk_While (locals=0, argc=1)
:[5]
push.v builtin.time
push.v arg.argument0
sub.v.v
pop.v.v builtin.time

:[6]
push.v builtin.time
pushi.e 0
cmp.i.v LTE
bf [14]

:[7]
call.i @@This@@(argc=0)
push.v builtin.condition
callv.v 0
conv.v.b
bf [9]

:[8]
call.i @@This@@(argc=0)
push.v builtin.onIterate
callv.v 0
popz.v
b [10]

:[9]
call.i @@This@@(argc=0)
push.v builtin.done
callv.v 0
popz.v
push.v builtin.state
ret.v

:[10]
call.i @@This@@(argc=0)
push.v builtin.condition
callv.v 0
conv.v.b
bf [12]

:[11]
push.v builtin.time
push.v builtin.interval
add.v.v
pop.v.v builtin.time
b [13]

:[12]
call.i @@This@@(argc=0)
push.v builtin.done
callv.v 0
popz.v
push.v builtin.state
ret.v

:[13]
b [6]

:[14]
exit.i

:[15]
push.i [function]gml_Script_onAct@anon@763@WhileActor@GMTwerk_While
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.onAct

:[16]
push.v arg.argument0
pop.v.v self.time
push.v self.time
pop.v.v self.interval
push.v arg.argument1
pop.v.v self.condition
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
exit.i

:[19]
push.i [function]gml_Script_WhileActor
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.WhileActor
popz.v
b [24]

> gml_Script_While (locals=1, argc=4)
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
push.i [function]gml_Script_WhileActor
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
push.i [function]gml_Script_While
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.While
popz.v

:[end]