:[0]
push.v builtin.bbox
pushi.e 1
cmp.b.v EQ
bf [end]

:[1]
push.v builtin.bbox_bottom
neg.v
pop.v.v builtin.depth

:[end]