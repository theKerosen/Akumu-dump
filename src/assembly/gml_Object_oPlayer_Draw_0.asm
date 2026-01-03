:[0]
pushref.i 98
pushi.e -9
push.v [stacktop]self.y
pushi.e 1
sub.i.v
pushref.i 98
pushi.e -9
push.v [stacktop]self.x
pushi.e 0
conv.i.v
pushref.i 16777362
call.i draw_sprite(argc=4)
popz.v
call.i draw_self(argc=0)
popz.v

:[end]