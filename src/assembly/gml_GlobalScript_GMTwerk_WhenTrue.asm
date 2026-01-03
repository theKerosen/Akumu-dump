:[0]
b [17]

> gml_Script_WhenTrueActor (locals=0, argc=3)
:[1]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushbltn.v builtin.undefined
pop.v.v builtin.argument1

:[3]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [5]

:[4]
pushbltn.v builtin.undefined
pop.v.v builtin.argument2

:[5]
call.i gml_Script_GMTwerkActor(argc=0)
push.i [function]gml_Script_GMTwerkActor
conv.i.v
call.i @@CopyStatic@@(argc=1)
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [11]

:[6]
setstatic.e
b [10]

> gml_Script_onAct@anon@543@WhenTrueActor@GMTwerk_WhenTrue (locals=0, argc=0)
:[7]
call.i @@This@@(argc=0)
push.v builtin.condition
callv.v 0
conv.v.b
bf [9]

:[8]
call.i @@This@@(argc=0)
push.v builtin.done
callv.v 0
popz.v

:[9]
exit.i

:[10]
push.i [function]gml_Script_onAct@anon@543@WhenTrueActor@GMTwerk_WhenTrue
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.onAct

:[11]
push.v arg.argument0
pop.v.v self.condition
push.v arg.argument1
call.i is_undefined(argc=1)
conv.v.b
bf [13]

:[12]
push.v self.onDone
b [14]

:[13]
push.v arg.argument1

:[14]
pop.v.v self.onDone
push.v arg.argument2
call.i is_undefined(argc=1)
conv.v.b
not.b
bf [16]

:[15]
push.v arg.argument2
call.i @@This@@(argc=0)
push.v builtin.includeOpts
callv.v 1
popz.v

:[16]
exit.i

:[17]
push.i [function]gml_Script_WhenTrueActor
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.WhenTrueActor
popz.v
b [24]

> gml_Script_WhenTrue (locals=1, argc=3)
:[18]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [20]

:[19]
pushbltn.v builtin.undefined
pop.v.v builtin.argument1

:[20]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [22]

:[21]
pushbltn.v builtin.undefined
pop.v.v builtin.argument2

:[22]
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
push.i [function]gml_Script_WhenTrueActor
conv.i.v
call.i @@NewGMLObject@@(argc=4)
pop.v.v local.actor
pushloc.v local.actor
call.i gml_Script___gmtwerk_insert__(argc=1)
popz.v
pushloc.v local.actor
ret.v

:[23]
exit.i

:[24]
push.i [function]gml_Script_WhenTrue
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.WhenTrue
popz.v

:[end]