:[0]
pushi.e 16
pop.v.i builtin.tile_size_
pushi.e 1
pop.v.i builtin.speed_
pushi.e 0
pop.v.b builtin.is_moving
push.v builtin.x
pop.v.v builtin.target_x
push.v builtin.y
pop.v.v builtin.target_y
pushi.e 0
pop.v.i builtin.startX
pushi.e 0
pop.v.i builtin.startY
push.s ""@36
pop.v.s builtin.destX
push.s ""@36
pop.v.s builtin.destY
pushi.e 1
pop.v.b builtin.moveable
pushi.e 0
pop.v.i builtin.moveRoom

:[end]