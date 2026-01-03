:[0]
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
pushref.i 127
pushi.e -9
pop.v.b [stacktop]self.hasAudio
push.s "Dad"@1039
pushref.i 127
pushi.e -9
pop.v.s [stacktop]self.Speaker
pushi.e 1
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
push.i 131066
setowner.e
pushi.e -4
conv.i.v
pushref.i 98
call.i @@NewGMLArray@@(argc=2)
push.v builtin.myCallback
call.i @@NewGMLArray@@(argc=2)
pushref.i 127
pushi.e -9
pop.v.v [stacktop]self.callback

:[end]