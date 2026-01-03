:[0]
pushref.i 98
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[2]
push.v builtin.targetRoom
call.i room_goto(argc=1)
popz.v
push.v builtin.targetX
pushref.i 98
pushi.e -9
pop.v.v [stacktop]self.x
push.v builtin.targetY
pushref.i 98
pushi.e -9
pop.v.v [stacktop]self.y
push.v builtin.targetFace
pushref.i 98
pushi.e -9
pop.v.v [stacktop]self.face
push.v builtin.targetState
pushref.i 98
pushi.e -9
pop.v.v [stacktop]self.state
pushi.e -1
pop.v.i builtin.image_speed

:[end]