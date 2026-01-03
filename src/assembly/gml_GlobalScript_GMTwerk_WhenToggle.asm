:[0]
b [24]

> gml_Script_WhenToggleActor (locals=0, argc=4)
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
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [7]

:[6]
pushbltn.v builtin.undefined
pop.v.v builtin.argument3

:[7]
call.i gml_Script_GMTwerkActor(argc=0)
push.i [function]gml_Script_GMTwerkActor
conv.i.v
call.i @@CopyStatic@@(argc=1)
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [15]

:[8]
setstatic.e
b [14]

> gml_Script_onAct@anon@731@WhenToggleActor@GMTwerk_WhenToggle (locals=1, argc=0)
:[9]
call.i @@This@@(argc=0)
push.v builtin.condition
callv.v 0
pop.v.v local.currentState
pushloc.v local.currentState
conv.v.b
push.v builtin.toggleState
conv.v.b
xor.b.b
bf [13]

:[10]
pushloc.v local.currentState
conv.v.b
bf [12]

:[11]
call.i @@This@@(argc=0)
push.v builtin.onFalseTrue
callv.v 0
popz.v
b [13]

:[12]
call.i @@This@@(argc=0)
push.v builtin.onTrueFalse
callv.v 0
popz.v

:[13]
pushloc.v local.currentState
pop.v.v builtin.toggleState
exit.i

:[14]
push.i [function]gml_Script_onAct@anon@731@WhenToggleActor@GMTwerk_WhenToggle
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.onAct

:[15]
push.v arg.argument0
pop.v.v self.condition
push.v arg.argument1
call.i is_undefined(argc=1)
conv.v.b
bf [17]

:[16]
push.v builtin.noop
b [18]

:[17]
push.v arg.argument1

:[18]
pop.v.v self.onFalseTrue
push.v arg.argument2
call.i is_undefined(argc=1)
conv.v.b
bf [20]

:[19]
push.v builtin.noop
b [21]

:[20]
push.v arg.argument2

:[21]
pop.v.v self.onTrueFalse
push.v arg.argument3
call.i is_undefined(argc=1)
conv.v.b
not.b
bf [23]

:[22]
push.v arg.argument3
call.i @@This@@(argc=0)
push.v builtin.includeOpts
callv.v 1
popz.v

:[23]
call.i @@This@@(argc=0)
push.v arg.argument0
callv.v 0
pop.v.v builtin.toggleState
exit.i

:[24]
push.i [function]gml_Script_WhenToggleActor
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.WhenToggleActor
popz.v
b [33]

> gml_Script_WhenToggle (locals=1, argc=4)
:[25]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [27]

:[26]
pushbltn.v builtin.undefined
pop.v.v builtin.argument1

:[27]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [29]

:[28]
pushbltn.v builtin.undefined
pop.v.v builtin.argument2

:[29]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [31]

:[30]
pushbltn.v builtin.undefined
pop.v.v builtin.argument3

:[31]
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
push.i [function]gml_Script_WhenToggleActor
conv.i.v
call.i @@NewGMLObject@@(argc=5)
pop.v.v local.actor
pushloc.v local.actor
call.i gml_Script___gmtwerk_insert__(argc=1)
popz.v
pushloc.v local.actor
ret.v

:[32]
exit.i

:[33]
push.i [function]gml_Script_WhenToggle
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.WhenToggle
popz.v

:[end]