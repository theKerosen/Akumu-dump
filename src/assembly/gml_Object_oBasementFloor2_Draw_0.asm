:[0]
push.v builtin.canDraw
conv.v.b
bf [end]

:[1]
pushi.e 1
pushref.i 69
pushi.e -9
pop.v.i [stacktop]self.darkness

:[end]