:[0]
pushglb.v global.chase
pushi.e 0
cmp.i.v LTE
bf [2]

:[1]
pushglb.v global.chasing
conv.v.b
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 0
pop.v.b global.chasing
pushglb.v global.chase_max
pop.v.v global.chase

:[5]
pushglb.v global.safe
conv.v.b
bf [end]

:[6]
pushi.e 0
pop.v.b global.safe

:[end]