:[0]
pushi.e 0
pop.v.i builtin.nrm
push.v builtin.nrm
call.i room_next(argc=1)
pop.v.v builtin.rm_next
push.v builtin.rm_next
call.i room_get_name(argc=1)
pop.v.v builtin.str_room

:[end]