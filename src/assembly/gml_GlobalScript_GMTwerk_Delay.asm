:[0]
b [16]

> gml_Script_DelayActor (locals=0, argc=3)
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

> gml_Script_onAct@anon@569@DelayActor@GMTwerk_Delay (locals=0, argc=1)
:[7]
push.v builtin.time
push.v arg.argument0
sub.v.v
pop.v.v builtin.time
push.v builtin.time
pushi.e 0
cmp.i.v LTE
bf [9]

:[8]
call.i @@This@@(argc=0)
push.v builtin.done
callv.v 0
popz.v

:[9]
exit.i

:[10]
push.i [function]gml_Script_onAct@anon@569@DelayActor@GMTwerk_Delay
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.onAct

:[11]
push.v arg.argument0
pop.v.v self.time
push.v arg.argument1
call.i is_undefined(argc=1)
conv.v.b
not.b
bf [13]

:[12]
push.v arg.argument1
pop.v.v self.onDone

:[13]
push.v arg.argument2
call.i is_undefined(argc=1)
conv.v.b
not.b
bf [15]

:[14]
push.v arg.argument2
call.i @@This@@(argc=0)
push.v builtin.includeOpts
callv.v 1
popz.v

:[15]
push.v self.time
call.i @@This@@(argc=0)
push.v builtin.convertTime
callv.v 1
pop.v.v self.time
exit.i

:[16]
push.i [function]gml_Script_DelayActor
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.DelayActor
popz.v
b [23]

> gml_Script_Delay (locals=1, argc=3)
:[17]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [19]

:[18]
pushbltn.v builtin.undefined
pop.v.v builtin.argument1

:[19]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [21]

:[20]
pushbltn.v builtin.undefined
pop.v.v builtin.argument2

:[21]
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
push.i [function]gml_Script_DelayActor
conv.i.v
call.i @@NewGMLObject@@(argc=4)
pop.v.v local.actor
pushloc.v local.actor
call.i gml_Script___gmtwerk_insert__(argc=1)
popz.v
pushloc.v local.actor
ret.v

:[22]
exit.i

:[23]
push.i [function]gml_Script_Delay
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.Delay
popz.v

:[end]