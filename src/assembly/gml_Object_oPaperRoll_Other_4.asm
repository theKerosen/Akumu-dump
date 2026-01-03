:[0]
push.v builtin.paper
push.v builtin.correct
cmp.v.v NEQ
bf [2]

:[1]
exit.i

:[2]
pushglb.v global.paperCorrect
pushi.e 1
cmp.b.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i builtin.image_index
b [end]

:[4]
pushi.e 0
pop.v.i builtin.image_index

:[end]