; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
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