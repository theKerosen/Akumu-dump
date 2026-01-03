:[0]
push.v builtin.canDraw
conv.v.b
bf [end]

:[1]
push.v builtin.alpha
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1280
conv.i.v
pushi.e 1280
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_rectangle_color(argc=9)
popz.v

:[end]