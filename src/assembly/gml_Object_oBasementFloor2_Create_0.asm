; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushi.e 0
pop.v.i local.count
pushref.i 15
pushi.e -9
pushenv [3]

:[1]
push.v local.count
pushi.e 1
add.i.v
pop.v.v local.count
pushloc.v local.count
pushi.e 1
cmp.i.v GT
bf [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [1]
push.i -9999999
pop.v.i builtin.depth
pushi.e 0
pop.v.b builtin.canDraw
pushi.e 0
pop.v.b builtin.canLights
push.d 0.7
pushref.i 69
pushi.e -9
pop.v.d [stacktop]self.darkness

:[end]