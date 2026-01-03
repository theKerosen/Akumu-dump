; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v builtin.bbox_bottom
neg.v
pop.v.v builtin.depth
push.v builtin.moveable
conv.v.b
not.b
bf [2]

:[1]
exit.i

:[2]
push.v builtin.is_moving
conv.v.b
bf [12]

:[3]
pushi.e 5
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
push.v builtin.target_x
push.v builtin.x
sub.v.v
pop.v.v local.dx
push.v builtin.target_y
push.v builtin.y
sub.v.v
pop.v.v local.dy
pushloc.v local.dx
pushi.e 0
cmp.i.v NEQ
bf [5]

:[4]
push.v builtin.x
pushloc.v local.dx
call.i sign(argc=1)
push.v builtin.speed_
pushloc.v local.dx
call.i abs(argc=1)
call.i min(argc=2)
mul.v.v
add.v.v
pop.v.v builtin.x

:[5]
pushloc.v local.dy
pushi.e 0
cmp.i.v NEQ
bf [7]

:[6]
push.v builtin.y
pushloc.v local.dy
call.i sign(argc=1)
push.v builtin.speed_
pushloc.v local.dy
call.i abs(argc=1)
call.i min(argc=2)
mul.v.v
add.v.v
pop.v.v builtin.y

:[7]
push.v builtin.x
push.v builtin.target_x
cmp.v.v EQ
bf [9]

:[8]
push.v builtin.y
push.v builtin.target_y
cmp.v.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushi.e 0
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
pushi.e 0
pop.v.b builtin.is_moving

:[12]
pushglb.v global.toiletCorrect
conv.v.b
not.b
bf [end]

:[13]
push.v builtin.x
push.v builtin.destX
cmp.v.v EQ
bf [15]

:[14]
push.v builtin.y
push.v builtin.destY
cmp.v.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [end]

:[17]
pushi.e 1
pop.v.b global.toiletCorrect
push.v builtin.destX
pop.v.v builtin.x
push.v builtin.destY
pop.v.v builtin.y
pushi.e 0
pop.v.b builtin.is_moving

:[end]