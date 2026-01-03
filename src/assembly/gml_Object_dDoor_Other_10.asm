:[0]
pushglb.v global.doorOpening
pushi.e 0
cmp.b.v EQ
bf [3]

:[1]
pushref.i 91
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [3]

:[2]
pushglb.v global.gamePaused
pushi.e 1
cmp.b.v NEQ
b [4]

:[3]
push.e 0

:[4]
bf [end]

:[5]
pushi.e 1
pop.v.i builtin.image_speed
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushref.i 33554462
call.i audio_play_sound(argc=4)
popz.v
pushref.i 91
push.s "Instances"@50
conv.s.v
push.v builtin.y
push.v builtin.x
call.i instance_create_layer(argc=4)
popz.v
pushi.e 1
pop.v.b global.doorOpening

:[end]