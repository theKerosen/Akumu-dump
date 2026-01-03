:[0]
pushref.i 33554485
call.i audio_is_playing(argc=1)
conv.v.b
not.b
bf [2]

:[1]
push.v builtin.debounce
pushi.e 0
cmp.b.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 1
pop.v.b builtin.debounce
push.v builtin.myDialogue2
push.v builtin.myDialogue
call.i gml_Script_OpenTextBox(argc=2)
popz.v
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
pushref.i gml_Script_scrFinishCharacterReading
call.i @@NewGMLArray@@(argc=2)
pushref.i 127
pushi.e -9
pop.v.v [stacktop]self.callback
call.i instance_destroy(argc=0)
popz.v

:[end]