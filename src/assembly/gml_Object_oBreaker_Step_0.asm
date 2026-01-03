:[0]
pushref.i 11
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [2]

:[1]
pushi.e 0
pop.v.b builtin.off

:[2]
push.v builtin.off
conv.v.b
bf [4]

:[3]
pushi.e 0
pop.v.i builtin.image_index
b [end]

:[4]
pushi.e 1
pop.v.i builtin.image_index
pushref.i 33554434
call.i audio_is_playing(argc=1)
conv.v.b
bf [6]

:[5]
pushref.i 33554434
call.i audio_stop_sound(argc=1)
popz.v

:[6]
pushref.i 32
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [end]

:[7]
pushref.i 32
push.s "Instances"@50
conv.s.v
pushi.e 318
conv.i.v
push.d 135.5
conv.d.v
call.i instance_create_layer(argc=4)
popz.v

:[end]