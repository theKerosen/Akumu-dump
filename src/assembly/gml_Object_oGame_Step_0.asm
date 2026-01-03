:[0]
pushref.i 144
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 0
pop.v.b builtin.visible

:[2]
pushglb.v global.fullscreen
conv.v.b
bf [4]

:[3]
pushi.e 1
conv.b.v
call.i window_set_fullscreen(argc=1)
popz.v
b [end]

:[4]
pushi.e 0
conv.b.v
call.i window_set_fullscreen(argc=1)
popz.v

:[end]