:[0]
pushi.e -9999
pop.v.i builtin.depth
push.v builtin.saveImage
push.v builtin.saveImageSpeed
add.v.v
pop.v.v builtin.saveImage
pushi.e -6
pushi.e 0
push.v [array]self.view_camera
call.i camera_get_view_y(argc=1)
pushi.e 185
add.i.v
pushi.e -6
pushi.e 0
push.v [array]self.view_camera
call.i camera_get_view_x(argc=1)
pushi.e 240
add.i.v
push.v builtin.saveImage
pushref.i 16777358
call.i draw_sprite(argc=4)
popz.v

:[end]