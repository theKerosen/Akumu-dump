:[0]
pushi.e 0
pop.v.i builtin.image_speed
pushi.e 12
conv.i.v
pushi.e 1
conv.i.v
call.i irandom_range(argc=2)
pop.v.v builtin.number
push.v builtin.number
pushi.e 9
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i builtin.image_index
b [end]

:[2]
pushi.e 0
pop.v.i builtin.image_index

:[end]