:[0]
push.v builtin._depth
pushi.e 0
cmp.b.v EQ
bf [end]

:[1]
push.v builtin.bbox_bottom
neg.v
pop.v.v builtin.depth

:[end]