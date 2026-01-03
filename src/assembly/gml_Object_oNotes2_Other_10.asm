:[0]
push.v builtin.speed
pushi.e 0
cmp.i.v NEQ
bf [2]

:[1]
exit.i

:[2]
push.v builtin.myDialogue10
push.v builtin.myDialogue9
push.v builtin.myDialogue8
push.v builtin.myDialogue7
push.v builtin.myDialogue6
push.v builtin.myDialogue5
push.v builtin.myDialogue4
push.v builtin.myDialogue3
push.v builtin.myDialogue2
push.v builtin.myDialogue
call.i gml_Script_OpenTextBox(argc=10)
popz.v
pushi.e 1
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
pushi.e 1
pop.v.i builtin.state
push.i 131066
setowner.e
pushi.e -4
conv.i.v
pushref.i 98
call.i @@NewGMLArray@@(argc=2)
pushref.i gml_Script_scrFinishCharacterReading
call.i @@NewGMLArray@@(argc=2)
pushref.i 127
pushi.e -9
pop.v.v [stacktop]self.callback

:[end]