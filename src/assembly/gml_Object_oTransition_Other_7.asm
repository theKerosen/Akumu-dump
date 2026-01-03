:[0]
push.v builtin.targetRoom
call.i room_goto(argc=1)
popz.v
pushi.e -1
pop.v.i builtin.image_speed

:[end]