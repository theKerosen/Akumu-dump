:[0]
push.v builtin.light_surf
call.i surface_exists(argc=1)
conv.v.b
not.b
bf [2]

:[1]
push.v builtin.dark_surf
call.i surface_exists(argc=1)
conv.v.b
not.b
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
exit.i

:[5]
pushbltn.v builtin.room_height
pushbltn.v builtin.room_width
push.v builtin.light_surf
call.i surface_resize(argc=3)
popz.v
pushbltn.v builtin.room_height
pushbltn.v builtin.room_width
push.v builtin.dark_surf
call.i surface_resize(argc=3)
popz.v

:[end]