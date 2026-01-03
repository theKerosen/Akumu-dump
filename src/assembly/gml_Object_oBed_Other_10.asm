:[0]
pushglb.v global.gamePaused
pushi.e 0
cmp.b.v EQ
bf [end]

:[1]
push.d 1.5
pop.v.d builtin.image_speed
pushref.i 98
call.i instance_destroy(argc=1)
popz.v
pushref.i 16777218
pop.v.v builtin.sprite_index
pushi.e 1
pop.v.b builtin.entrando

:[end]