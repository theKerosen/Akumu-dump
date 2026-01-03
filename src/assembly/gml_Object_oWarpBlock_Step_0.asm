; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushref.i 98
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [2]

:[1]
exit.i

:[2]
pushref.i 98
push.v builtin.y
push.v builtin.x
call.i place_meeting(argc=3)
conv.v.b
bf [4]

:[3]
pushref.i 139
call.i instance_exists(argc=1)
conv.v.b
not.b
b [5]

:[4]
push.e 0

:[5]
bf [end]

:[6]
pushref.i 38
call.i instance_exists(argc=1)
conv.v.b
bf [8]

:[7]
pushref.i 38
push.v builtin.y
push.v builtin.x
call.i place_meeting(argc=3)
conv.v.b
b [9]

:[8]
push.e 0

:[9]
bf [13]

:[10]
pushref.i 38
pushi.e -9
pushenv [12]

:[11]
pushi.e 1
pop.v.i builtin.image_index

:[12]
popenv [11]

:[13]
pushref.i 139
push.l -9999999999999999
conv.l.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=4)
pop.v.v local.inst
push.v builtin.targetX
pushloc.v local.inst
pushi.e -9
pop.v.v [stacktop]self.targetX
push.v builtin.targetY
pushloc.v local.inst
pushi.e -9
pop.v.v [stacktop]self.targetY
push.v builtin.targetRoom
pushloc.v local.inst
pushi.e -9
pop.v.v [stacktop]self.targetRoom
push.v builtin.targetFace
pushloc.v local.inst
pushi.e -9
pop.v.v [stacktop]self.targetFace

:[end]