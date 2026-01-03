:[0]
push.v builtin.canAppear
conv.v.b
not.b
bf [2]

:[1]
exit.i

:[2]
push.v builtin.y
pushi.e 1
sub.i.v
push.v builtin.x
pushi.e 0
conv.i.v
pushref.i 16777362
call.i draw_sprite(argc=4)
popz.v
call.i draw_self(argc=0)
popz.v

:[end]