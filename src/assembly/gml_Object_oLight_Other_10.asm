:[0]
push.v builtin.canTurn
conv.v.b
not.b
bf [4]

:[1]
push.v builtin.speed
pushi.e 0
cmp.i.v NEQ
bf [3]

:[2]
exit.i

:[3]
pushi.e 1
pushref.i 127
pushi.e -9
pop.v.b [stacktop]self.hasAudio
push.s ""@36
pushref.i 127
pushi.e -9
pop.v.s [stacktop]self.Speaker
push.s "It doesn't work."@1339
conv.s.v
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
pushref.i 66
pushref.i 98
call.i @@NewGMLArray@@(argc=2)
pushref.i gml_Script_scrFinishCharacterReading
call.i @@NewGMLArray@@(argc=2)
pushref.i 127
pushi.e -9
pop.v.v [stacktop]self.callback
b [end]

:[4]
push.v builtin.light
conv.v.b
not.b
bf [6]

:[5]
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554448
call.i audio_play_sound(argc=3)
popz.v
pushi.e 1
pop.v.b builtin.light
pushi.e 1
pop.v.i builtin.image_index
b [end]

:[6]
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554448
call.i audio_play_sound(argc=3)
popz.v
pushi.e 0
pop.v.b builtin.light
pushi.e 0
pop.v.i builtin.image_index

:[end]