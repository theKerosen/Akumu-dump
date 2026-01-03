:[0]
push.v builtin.normalDepth
conv.v.b
bf [end]

:[1]
push.v builtin.bbox_bottom
neg.v
pop.v.v builtin.depth

:[end]