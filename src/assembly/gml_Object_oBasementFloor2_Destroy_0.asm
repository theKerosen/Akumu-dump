:[0]
pushref.i 69
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [2]

:[1]
exit.i

:[2]
pushglb.v global.baseLight
pushref.i 69
pushi.e -9
pop.v.v [stacktop]self.darkness

:[end]