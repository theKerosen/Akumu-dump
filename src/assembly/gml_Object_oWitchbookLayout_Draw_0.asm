; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushi.e -6
pushi.e 0
push.v [array]self.view_camera
call.i camera_get_view_x(argc=1)
pushi.e 130
add.i.v
pop.v.v local._page_x
pushi.e -6
pushi.e 0
push.v [array]self.view_camera
call.i camera_get_view_y(argc=1)
pushi.e 100
add.i.v
pop.v.v local._page_y
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.d 0.7
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 600
conv.i.v
pushi.e 800
conv.i.v
pushi.e -6
pushi.e 0
push.v [array]self.view_camera
call.i camera_get_view_y(argc=1)
pushi.e -6
pushi.e 0
push.v [array]self.view_camera
call.i camera_get_view_x(argc=1)
call.i draw_rectangle(argc=5)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushloc.v local._page_y
pushloc.v local._page_x
push.v builtin.page
pushref.i 16777298
call.i draw_sprite(argc=4)
popz.v
pushi.e 72
pop.v.i local.cursor_offset
push.v builtin.page
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v builtin.cursorImg
push.v builtin.cursorSpeed
add.v.v
pop.v.v builtin.cursorImg
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
pushloc.v local._page_y
pushloc.v local._page_x
pushloc.v local.cursor_offset
sub.v.v
push.v builtin.cursorImg
pushref.i 16777239
call.i draw_sprite_ext(argc=9)
popz.v

:[2]
push.v builtin.page
pushglb.v global.maxPages
cmp.v.v LT
bf [4]

:[3]
push.v builtin.cursorImg
push.v builtin.cursorSpeed
add.v.v
pop.v.v builtin.cursorImg
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local._page_y
pushloc.v local._page_x
pushloc.v local.cursor_offset
add.v.v
push.v builtin.cursorImg
pushref.i 16777239
call.i draw_sprite_ext(argc=9)
popz.v

:[4]
pushref.i 98
pushi.e -9
push.v [stacktop]self.state
pushi.e 1
cmp.i.v NEQ
bf [end]

:[5]
pushi.e 5
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state

:[end]