:[0]
b [30]

> gml_Script_WorkflowActor (locals=0, argc=2)
:[1]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushbltn.v builtin.undefined
pop.v.v builtin.argument1

:[3]
call.i gml_Script_GMTwerkActor(argc=0)
push.i [function]gml_Script_GMTwerkActor
conv.i.v
call.i @@CopyStatic@@(argc=1)
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [27]

:[4]
setstatic.e
b [26]

> gml_Script_onAct@anon@562@WorkflowActor@GMTwerk_Workflow (locals=1, argc=1)
:[5]
push.v builtin.acted
conv.v.b
not.b
bf [7]

:[6]
pushi.e -6
push.v builtin.actionNumber
conv.v.i
push.v [array]self.actions
pop.v.v local.currentAction
call.i @@This@@(argc=0)
pushloc.v local.currentAction
callv.v 0
pop.v.v builtin.currentActor
pushi.e 1
pop.v.b builtin.acted

:[7]
push.v builtin.currentActor
call.i is_struct(argc=1)
conv.v.b
bf [22]

:[8]
push.v builtin.currentActor
pushi.e -9
push.v [stacktop]self.state
dup.v 0
push.l 1
cmp.l.v EQ
bt [14]

:[9]
dup.v 0
push.l 0
cmp.l.v EQ
bt [14]

:[10]
dup.v 0
push.l -1
cmp.l.v EQ
bt [15]

:[11]
dup.v 0
push.l -3
cmp.l.v EQ
bt [19]

:[12]
b [20]

:[13]
b [21]

:[14]
b [21]

:[15]
push.v builtin.actionNumber
push.e 1
add.i.v
dup.v 0
pop.v.v builtin.actionNumber
push.v builtin.actions
call.i array_length(argc=1)
cmp.v.v GTE
bf [17]

:[16]
call.i @@This@@(argc=0)
push.v builtin.done
callv.v 0
popz.v
b [18]

:[17]
pushi.e 0
pop.v.b builtin.acted

:[18]
b [21]

:[19]
push.l -3
pop.v.l builtin.state
call.i @@This@@(argc=0)
push.v builtin.onLost
callv.v 0
popz.v
b [21]

:[20]
call.i @@This@@(argc=0)
push.v builtin.stop
callv.v 0
popz.v
b [21]

:[21]
popz.v
b [25]

:[22]
push.v builtin.actionNumber
push.e 1
add.i.v
dup.v 0
pop.v.v builtin.actionNumber
push.v builtin.actions
call.i array_length(argc=1)
cmp.v.v GTE
bf [24]

:[23]
call.i @@This@@(argc=0)
push.v builtin.done
callv.v 0
popz.v
b [25]

:[24]
pushi.e 0
pop.v.b builtin.acted

:[25]
exit.i

:[26]
push.i [function]gml_Script_onAct@anon@562@WorkflowActor@GMTwerk_Workflow
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.onAct

:[27]
push.v arg.argument0
pop.v.v self.actions
pushi.e 0
pop.v.i builtin.actionNumber
pushi.e 0
pop.v.b builtin.acted
pushbltn.v builtin.undefined
pop.v.v builtin.currentActor
push.v arg.argument1
call.i is_undefined(argc=1)
conv.v.b
not.b
bf [29]

:[28]
push.v arg.argument1
call.i @@This@@(argc=0)
push.v builtin.includeOpts
callv.v 1
popz.v

:[29]
exit.i

:[30]
push.i [function]gml_Script_WorkflowActor
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.WorkflowActor
popz.v
b [35]

> gml_Script_Workflow (locals=1, argc=2)
:[31]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [33]

:[32]
pushbltn.v builtin.undefined
pop.v.v builtin.argument1

:[33]
push.v arg.argument1
push.v arg.argument0
push.i [function]gml_Script_WorkflowActor
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pop.v.v local.actor
pushloc.v local.actor
call.i gml_Script___gmtwerk_insert__(argc=1)
popz.v
pushloc.v local.actor
ret.v

:[34]
exit.i

:[35]
push.i [function]gml_Script_Workflow
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.Workflow
popz.v

:[end]