:[0]
pushi.e 0
pop.v.i builtin.state
pushi.e 1
pop.v.i builtin.opSelected
pushi.e 0
pop.v.b builtin.canDraw
push.v builtin.bbox_bottom
neg.v
pop.v.v builtin.depth

:[end]