:[0]
call.i instance_destroy(argc=0)
popz.v
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [2]

:[1]
push.v other.dmg
call.i @@This@@(argc=0)
push.v builtin.dmg_handler
callv.v 1
popz.v

:[2]
popenv [1]

:[end]