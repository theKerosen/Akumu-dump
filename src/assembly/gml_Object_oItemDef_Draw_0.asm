; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v builtin.item
pushi.e -4
cmp.i.v EQ
bf [2]

:[1]
exit.i

:[2]
pushi.e -6
pushi.e 0
push.v [array]self.view_camera
call.i camera_get_view_x(argc=1)
pushi.e 136
add.i.v
pop.v.v local._textbox_x
pushi.e -6
pushi.e 0
push.v [array]self.view_camera
call.i camera_get_view_y(argc=1)
pushi.e 39
add.i.v
pop.v.v local._textbox_y
pushloc.v local._textbox_y
pushloc.v local._textbox_x
pushi.e 0
conv.i.v
pushref.i 16777272
call.i draw_sprite(argc=4)
popz.v
pushglb.v global.TEXTBOX_FONT
call.i draw_set_font(argc=1)
popz.v
pushloc.v local._textbox_y
pushi.e 6
add.i.v
pushloc.v local._textbox_x
pushi.e 6
add.i.v
pushi.e 0
conv.i.v
pushi.e -6
pushi.e 2
push.v [array]self.itemDef
call.i draw_sprite(argc=4)
popz.v
pushi.e -6
pushi.e 0
push.v [array]self.itemDef
pushloc.v local._textbox_y
pushi.e 5
add.i.v
pushloc.v local._textbox_x
pushi.e 20
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 100
conv.i.v
pushi.e 10
conv.i.v
pushi.e -6
pushi.e 1
push.v [array]self.itemDef
pushloc.v local._textbox_y
pushi.e 26
add.i.v
pushloc.v local._textbox_x
pushi.e 6
add.i.v
call.i draw_text_ext(argc=5)
popz.v

:[end]