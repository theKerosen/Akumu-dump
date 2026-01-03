; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v builtin.canDraw
conv.v.b
bf [end]

:[1]
pushi.e -6
pushi.e 0
push.v [array]self.view_camera
call.i camera_get_view_x(argc=1)
pop.v.v local.xx
pushi.e -6
pushi.e 0
push.v [array]self.view_camera
call.i camera_get_view_y(argc=1)
pop.v.v local.yy
pushloc.v local.yy
pushloc.v local.xx
pushi.e 0
conv.i.v
pushref.i 16777266
call.i draw_sprite(argc=4)
popz.v

:[end]