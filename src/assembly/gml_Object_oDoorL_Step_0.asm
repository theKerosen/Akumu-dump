:[0]
push.v builtin.canPlay
pushi.e 1
cmp.b.v EQ
bf [end]

:[1]
pushref.i 33554491
call.i audio_is_playing(argc=1)
conv.v.b
not.b
bf [end]

:[2]
push.v builtin.speed
pushi.e 0
cmp.i.v NEQ
bf [4]

:[3]
exit.i

:[4]
pushi.e 1
pushref.i 127
pushi.e -9
pop.v.b [stacktop]self.hasAudio
push.v builtin.myDialogue
call.i gml_Script_OpenTextBox(argc=1)
popz.v
pushi.e 1
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
pushi.e 1
pop.v.i builtin.state
push.i 131066
setowner.e
pushref.i 41
pushref.i 98
call.i @@NewGMLArray@@(argc=2)
pushref.i gml_Script_scrFinishCharacterReading
call.i @@NewGMLArray@@(argc=2)
pushref.i 127
pushi.e -9
pop.v.v [stacktop]self.callback
pushi.e 0
pop.v.b builtin.canPlay

:[end]