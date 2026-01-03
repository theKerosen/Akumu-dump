:[0]
push.v builtin.moveable
conv.v.b
not.b
bf [2]

:[1]
exit.i

:[2]
pushglb.v global.toiletCorrect
conv.v.b
bf [4]

:[3]
push.v builtin.destX
pop.v.v builtin.x
push.v builtin.destY
pop.v.v builtin.y
pushi.e 0
pop.v.b builtin.is_moving
b [end]

:[4]
push.v builtin.startX
pop.v.v builtin.x
push.v builtin.startY
pop.v.v builtin.y

:[end]