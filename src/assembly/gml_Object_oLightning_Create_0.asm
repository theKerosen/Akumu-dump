:[0]
pushi.e -9999
pop.v.i builtin.depth
pushbltn.v builtin.room_height
pushbltn.v builtin.room_width
call.i surface_create(argc=2)
pop.v.v builtin.light_surf
pushbltn.v builtin.room_height
pushbltn.v builtin.room_width
call.i surface_create(argc=2)
pop.v.v builtin.dark_surf

:[end]