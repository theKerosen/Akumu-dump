:[0]
push.v builtin.layed
conv.v.b
bf [2]

:[1]
pushi.e 0
pop.v.i builtin.image_index

:[2]
push.v builtin.bbox_bottom
neg.v
pop.v.v builtin.depth

:[end]