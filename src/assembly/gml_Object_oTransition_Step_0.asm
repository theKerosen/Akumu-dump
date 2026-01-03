:[0]
pushbltn.v builtin.room
push.v builtin.targetRoom
cmp.v.v EQ
bf [2]

:[1]
push.v builtin.image_index
pushi.e 1
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[end]