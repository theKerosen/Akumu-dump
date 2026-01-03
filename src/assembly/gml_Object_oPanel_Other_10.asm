:[0]
push.v builtin.canEnter
conv.v.b
not.b
bf [2]

:[1]
exit.i

:[2]
pushref.i 79
push.s "Instances"@50
conv.s.v
push.v builtin.y
push.v builtin.x
call.i instance_create_layer(argc=4)
popz.v
push.v builtin.screwlock
pushi.e -4
cmp.i.v NEQ
bf [4]

:[3]
pushi.e 1
pop.v.b builtin.canDraw
b [end]

:[4]
push.v builtin.screwlock
pushi.e -4
cmp.i.v EQ
bf [6]

:[5]
pushglb.v global.screwUsed
conv.v.b
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
pushi.e 3
pop.v.i builtin.bgImage
pushref.i 16777303
pop.v.v builtin.designedSprite
pushi.e 1
pop.v.b builtin.canDraw
b [end]

:[9]
push.v builtin.screwlock
pushi.e -4
cmp.i.v EQ
bf [11]

:[10]
pushglb.v global.screwUsed
conv.v.b
not.b
b [12]

:[11]
push.e 0

:[12]
bf [end]

:[13]
pushi.e 1
pop.v.b builtin.canDraw

:[end]