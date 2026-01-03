:[0]
pushbltn.v builtin.undefined
pop.v.v builtin.myDialogue
pushbltn.v builtin.undefined
pop.v.v builtin.myDialogue2
pushbltn.v builtin.undefined
pop.v.v builtin.myDialogue3
pushbltn.v builtin.undefined
pop.v.v builtin.myDialogue4
pushbltn.v builtin.undefined
pop.v.v builtin.myDialogue5
pushbltn.v builtin.undefined
pop.v.v builtin.myDialogue6
pushbltn.v builtin.undefined
pop.v.v builtin.myDialogue7
pushbltn.v builtin.undefined
pop.v.v builtin.myDialogue8
pushbltn.v builtin.undefined
pop.v.v builtin.myDialogue9
pushbltn.v builtin.undefined
pop.v.v builtin.myDialogue10
b [2]

> gml_Script_anon@268@gml_Object_cutTrigger_Create_0 (locals=0, argc=2)
:[1]
pushi.e 5
push.v arg.argument0
pushi.e -9
pop.v.i [stacktop]self.state
exit.i

:[2]
push.i [function]gml_Script_anon@268@gml_Object_cutTrigger_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.myCallback

:[end]