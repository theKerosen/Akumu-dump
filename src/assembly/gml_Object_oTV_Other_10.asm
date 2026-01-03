:[0]
pushref.i 98
pushi.e -9
push.v [stacktop]self.face
pushi.e 1
cmp.i.v NEQ
bf [2]

:[1]
exit.i

:[2]
pushref.i 11
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[3]
pushref.i 11
pushi.e -9
push.v [stacktop]self.lightsOut
conv.v.b
bf [5]

:[4]
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
pop.v.i builtin.state
pushi.e 1
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
push.i 131066
setowner.e
pushref.i 135
pushref.i 98
call.i @@NewGMLArray@@(argc=2)
pushref.i gml_Script_scrFinishCharacterReading
call.i @@NewGMLArray@@(argc=2)
pushref.i 127
pushi.e -9
pop.v.v [stacktop]self.callback
exit.i

:[5]
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554448
call.i audio_play_sound(argc=3)
popz.v
push.v builtin.turn
conv.v.b
not.b
bf [7]

:[6]
pushi.e 1
pop.v.b builtin.turn
pushref.i 16777388
pop.v.v builtin.sprite_index
pushi.e 1
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554522
call.i audio_play_sound(argc=3)
popz.v
b [end]

:[7]
pushi.e 0
pop.v.b builtin.turn
pushref.i 16777389
pop.v.v builtin.sprite_index
pushref.i 33554522
call.i audio_stop_sound(argc=1)
popz.v

:[end]