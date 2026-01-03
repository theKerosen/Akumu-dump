:[0]
pushglb.v global.unlockedCode
conv.v.b
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e -4
pop.v.i builtin.lock
pushi.e -4
pop.v.i builtin.doorTag
pushi.e 0
pop.v.b builtin.canPlay
pushi.e 0
pop.v.b builtin.debounce
pushi.e 0
pop.v.i builtin.image_speed
pushi.e 0
pop.v.i builtin.state
push.v builtin.bbox_bottom
neg.v
pop.v.v builtin.depth

:[end]