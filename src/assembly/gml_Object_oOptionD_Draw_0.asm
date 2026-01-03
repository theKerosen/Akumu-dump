:[0]
push.i -999994
pop.v.i builtin.depth
pushref.i 127
pushi.e -9
push.v [stacktop]self.textSide
pushi.e 7
cmp.i.v EQ
bf [2]

:[1]
pushi.e -6
pushi.e 0
push.v [array]self.view_camera
call.i camera_get_view_y(argc=1)
pushi.e 111
add.i.v
pushi.e -6
pushi.e 0
push.v [array]self.view_camera
call.i camera_get_view_x(argc=1)
pushi.e 32
add.i.v
pushref.i 49
pushi.e -9
push.v [stacktop]self.opSelected
pushref.i 16777296
call.i draw_sprite(argc=4)
popz.v
b [end]

:[2]
pushi.e -6
pushi.e 0
push.v [array]self.view_camera
call.i camera_get_view_y(argc=1)
pushi.e 55
add.i.v
pushi.e -6
pushi.e 0
push.v [array]self.view_camera
call.i camera_get_view_x(argc=1)
pushi.e 32
add.i.v
pushref.i 49
pushi.e -9
push.v [stacktop]self.opSelected
pushref.i 16777296
call.i draw_sprite(argc=4)
popz.v

:[end]