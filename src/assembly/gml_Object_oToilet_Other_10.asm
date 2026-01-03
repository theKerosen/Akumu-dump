:[0]
push.v builtin.image_index
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i builtin.image_index
push.d 0.2
conv.d.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushref.i 33554443
call.i audio_play_sound(argc=4)
popz.v
b [end]

:[2]
pushi.e 1
pop.v.i builtin.image_index
push.d 0.2
conv.d.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushref.i 33554517
call.i audio_play_sound(argc=4)
popz.v

:[end]