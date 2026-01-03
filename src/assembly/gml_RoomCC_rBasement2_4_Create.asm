:[0]
pushglb.v global.lightsOut
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 168
pop.v.i builtin.targetX
pushi.e 216
pop.v.i builtin.targetY
pushref.i 50331666
pop.v.v builtin.targetRoom
pushi.e 1
pop.v.i builtin.targetFace

:[end]