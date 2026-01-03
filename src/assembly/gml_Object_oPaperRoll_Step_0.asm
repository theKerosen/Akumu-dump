:[0]
push.v builtin.bbox_bottom
neg.v
pop.v.v builtin.depth
push.v builtin.paper
push.v builtin.correct
cmp.v.v EQ
bf [end]

:[1]
pushglb.v global.paperCorrect
conv.v.b
bf [3]

:[2]
pushi.e 1
conv.i.v
b [4]

:[3]
pushi.e 0
conv.i.v

:[4]
pop.v.v builtin.image_index

:[end]