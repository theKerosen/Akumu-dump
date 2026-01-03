:[0]
push.v builtin.alpha
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
exit.i

:[2]
pushi.e 1
pop.v.b builtin.fadeGo
pushi.e 1
pop.v.b builtin.canDraw

:[end]