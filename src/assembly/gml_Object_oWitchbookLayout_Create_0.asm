:[0]
pushi.e 0
pop.v.i builtin.page
pushi.e 0
pop.v.i builtin.cursorImg
push.d 0.016666666666666666
pop.v.d builtin.cursorSpeed
pushref.i 79
push.s "Instances"@50
conv.s.v
push.v builtin.y
push.v builtin.x
call.i instance_create_layer(argc=4)
popz.v

:[end]