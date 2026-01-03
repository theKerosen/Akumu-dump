:[0]
push.v builtin.saveImage
pushi.e 8
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i builtin.loop
pushi.e 1
pop.v.i builtin.saveImage

:[2]
push.v builtin.saveImage
pushi.e 8
cmp.i.v GTE
bf [4]

:[3]
push.v builtin.loop
pushi.e 1
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [end]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[end]