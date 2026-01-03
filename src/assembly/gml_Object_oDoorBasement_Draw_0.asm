:[0]
push.v builtin.canDraw
conv.v.b
bf [2]

:[1]
push.i -99993
pop.v.i builtin.depth
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
pushi.e 600
conv.i.v
pushi.e 800
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_rectangle_color(argc=9)
popz.v
exit.i

:[2]
call.i draw_self(argc=0)
popz.v

:[end]