; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v builtin.pages
pushi.e -4
cmp.i.v EQ
bf [2]

:[1]
exit.i

:[2]
push.v builtin.textSide
pushi.e 7
cmp.i.v EQ
bf [4]

:[3]
pushi.e -6
pushi.e 0
push.v [array]self.view_camera
call.i camera_get_view_x(argc=1)
pushi.e 32
add.i.v
pop.v.v local._textbox_x
pushi.e -6
pushi.e 0
push.v [array]self.view_camera
call.i camera_get_view_y(argc=1)
pushi.e 144
add.i.v
pop.v.v local._textbox_y
b [5]

:[4]
pushi.e -6
pushi.e 0
push.v [array]self.view_camera
call.i camera_get_view_x(argc=1)
pushi.e 32
add.i.v
pop.v.v local._textbox_x
pushi.e -6
pushi.e 0
push.v [array]self.view_camera
call.i camera_get_view_y(argc=1)
pushi.e 4
add.i.v
pop.v.v local._textbox_y

:[5]
push.v builtin.textImage
push.v builtin.textImageSpeed
add.v.v
pop.v.v builtin.textImage
pushloc.v local._textbox_y
pushloc.v local._textbox_x
push.v builtin.textImage
pushref.i 16777378
call.i draw_sprite(argc=4)
popz.v
push.v builtin.arrowImage
push.v builtin.arrowImageSpeed
add.v.v
pop.v.v builtin.arrowImage
push.v builtin.textSide
pushi.e 7
cmp.i.v EQ
bf [9]

:[6]
push.v builtin.textOnDisplay
pushi.e -6
push.v builtin.page
conv.v.i
push.v [array]self.pages
cmp.v.v EQ
bf [8]

:[7]
pushi.e 1
pop.v.b builtin.canSkip
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
pushi.e 214
add.i.v
push.v builtin.arrowImage
pushref.i 16777245
call.i draw_sprite(argc=4)
popz.v
pushi.e 1
pop.v.b global.textComplete

:[8]
b [11]

:[9]
push.v builtin.textOnDisplay
pushi.e -6
push.v builtin.page
conv.v.i
push.v [array]self.pages
cmp.v.v EQ
bf [11]

:[10]
pushi.e 1
pop.v.b builtin.canSkip
pushi.e -6
pushi.e 0
push.v [array]self.view_camera
call.i camera_get_view_y(argc=1)
pushi.e 45
add.i.v
pushi.e -6
pushi.e 0
push.v [array]self.view_camera
call.i camera_get_view_x(argc=1)
pushi.e 214
add.i.v
push.v builtin.arrowImage
pushref.i 16777245
call.i draw_sprite(argc=4)
popz.v
pushi.e 1
pop.v.b global.textComplete

:[11]
pushglb.v global.TEXTBOX_FONT
call.i draw_set_font(argc=1)
popz.v
pushi.e 177
conv.i.v
pushi.e 14
conv.i.v
push.v builtin.textOnDisplay
pushloc.v local._textbox_y
pushi.e 4
add.i.v
pushloc.v local._textbox_x
pushi.e 8
add.i.v
call.i draw_text_ext(argc=5)
popz.v

:[end]