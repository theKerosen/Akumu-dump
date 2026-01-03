; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushi.e 5
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
pushi.e -6
pushi.e 0
push.v [array]self.view_camera
call.i camera_get_view_x(argc=1)
pushi.e 97
add.i.v
pop.v.v local.x_start
pushi.e -6
pushi.e 0
push.v [array]self.view_camera
call.i camera_get_view_y(argc=1)
pushi.e 50
add.i.v
pop.v.v local.y_start
pushi.e 16
pop.v.i local.spacing
push.v builtin.arrowImage
push.v builtin.arrowImageSpeed
add.v.v
pop.v.v builtin.arrowImage
pushi.e -6
pushi.e 0
push.v [array]self.view_camera
call.i camera_get_view_y(argc=1)
pushi.e -6
pushi.e 0
push.v [array]self.view_camera
call.i camera_get_view_x(argc=1)
push.v builtin.bgImage
push.v builtin.designedSprite
call.i draw_sprite(argc=4)
popz.v
pushglb.v global.unlockedCode
conv.v.b
bf [2]

:[1]
push.v builtin.bgImage
push.v builtin.bgImageSpeed
add.v.v
pop.v.v builtin.bgImage
pushref.i 16777305
pop.v.v builtin.designedSprite
exit.i

:[2]
pushi.e 0
pop.v.i local.i

:[3]
pushloc.v local.i
push.v builtin.digit_count
cmp.v.v LT
bf [7]

:[4]
pushi.e -6
pushloc.v local.i
conv.v.i
push.v [array]self.input_digits
call.i string(argc=1)
pop.v.v local.str
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.i
push.v builtin.digit_index
cmp.v.v EQ
bf [6]

:[5]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.y_start
pushi.e 8
sub.i.v
pushloc.v local.x_start
pushloc.v local.i
pushloc.v local.spacing
mul.v.v
add.v.v
pushi.e 1
sub.i.v
push.v builtin.arrowImage
pushref.i 16777245
call.i draw_sprite(argc=4)
popz.v

:[6]
pushloc.v local.str
pushloc.v local.y_start
pushloc.v local.x_start
pushloc.v local.i
pushloc.v local.spacing
mul.v.v
add.v.v
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [3]

:[7]
push.v builtin.code_status
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1
pop.v.b global.unlockedCode
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554476
call.i audio_play_sound(argc=3)
popz.v
b [end]

:[9]
push.v builtin.code_status
pushi.e -1
cmp.i.v EQ
bf [end]

:[10]
pushi.e 0
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushref.i 33554474
call.i audio_play_sound(argc=4)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]