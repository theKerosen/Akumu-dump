:[0]
pushref.i 50331652
call.i room_goto(argc=1)
popz.v
pushref.i 11
push.s "Instances"@50
conv.s.v
push.v builtin.y
push.v builtin.x
call.i instance_create_layer(argc=4)
popz.v
pushref.i 98
call.i instance_destroy(argc=1)
popz.v
push.v builtin.oTutorial
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v builtin.oTutorial
call.i instance_destroy(argc=1)
popz.v

:[end]