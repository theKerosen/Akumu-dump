; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushi.e -6
pushi.e 0
push.v [array]self.view_camera
call.i camera_get_view_x(argc=1)
pop.v.v local._chase_x
pushi.e -6
pushi.e 0
push.v [array]self.view_camera
call.i camera_get_view_y(argc=1)
pop.v.v local._chase_y
pushloc.v local._chase_x
pop.v.v builtin.x
pushloc.v local._chase_y
pop.v.v builtin.y
push.d -1E+25
pop.v.d builtin.depth

:[end]