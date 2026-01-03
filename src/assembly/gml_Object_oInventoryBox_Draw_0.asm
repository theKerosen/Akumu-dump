; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v builtin.active
conv.v.b
not.b
bf [2]

:[1]
exit.i

:[2]
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
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushglb.v global.TEXTBOX_FONT
call.i draw_set_font(argc=1)
popz.v
pushi.e -6
pushi.e 0
push.v [array]self.view_camera
call.i camera_get_view_x(argc=1)
pushi.e 20
add.i.v
pop.v.v local._textbox_x
pushi.e -6
pushi.e 0
push.v [array]self.view_camera
call.i camera_get_view_y(argc=1)
pushi.e 39
add.i.v
pop.v.v local._textbox_y
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushloc.v local._textbox_y
pushloc.v local._textbox_x
pushi.e 0
conv.i.v
pushref.i 16777269
call.i draw_sprite(argc=4)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.s "Inventory"@1306
conv.s.v
pushloc.v local._textbox_y
pushi.e 30
sub.i.v
pushi.e 130
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushref.i 53
pushi.e -9
push.v [stacktop]self.inventory
call.i ds_list_size(argc=1)
pop.v.v local.inventorySize
pushi.e 0
conv.i.v
push.v builtin.cursor
pushi.e 4
sub.i.v
call.i max(argc=2)
pop.v.v local.i1
pushloc.v local.i1
pushi.e 7
add.i.v
pushloc.v local.inventorySize
cmp.v.v GTE
bf [4]

:[3]
pushi.e 0
conv.i.v
pushloc.v local.inventorySize
pushi.e 7
sub.i.v
call.i max(argc=2)
pop.v.v local.i1

:[4]
pushloc.v local.inventorySize
pushloc.v local.i1
pushi.e 7
add.i.v
call.i min(argc=2)
pop.v.v local.i2
push.v builtin.arrowImage
push.v builtin.arrowImageSpeed
add.v.v
pop.v.v builtin.arrowImage
pushi.e 0
pop.v.i local.posy
pushloc.v local.i1
pop.v.v local.i

:[5]
pushloc.v local.i
pushloc.v local.i2
cmp.v.v LT
bf [end]

:[6]
pushloc.v local.i
pushref.i 53
pushi.e -9
push.v [stacktop]self.inventory
call.i ds_list_find_value(argc=2)
pop.v.v local.item
call.i @@Global@@(argc=0)
pushi.e -9
pushi.e -7
pushi.e 0
push.v [array]self.item
conv.v.i
push.v [array]self.ITEMS
pop.v.v local.itemDef
pushi.e -7
pushi.e 3
push.v [array]self.item
pop.v.v local.itemTag
pushloc.v local._textbox_y
pushi.e 6
add.i.v
pushloc.v local.posy
add.v.v
pushloc.v local._textbox_x
pushi.e 10
add.i.v
pushi.e 0
conv.i.v
pushi.e -7
pushi.e 2
push.v [array]self.itemDef
call.i draw_sprite(argc=4)
popz.v
pushi.e -7
pushi.e 0
push.v [array]self.itemDef
pushloc.v local._textbox_y
pushi.e 5
add.i.v
pushloc.v local.posy
add.v.v
pushloc.v local._textbox_x
pushi.e 26
add.i.v
call.i draw_text(argc=3)
popz.v
pushloc.v local.i
push.v builtin.cursor
cmp.v.v EQ
bf [8]

:[7]
pushloc.v local._textbox_y
pushi.e 7
add.i.v
pushloc.v local.posy
add.v.v
pushloc.v local._textbox_x
pushi.e 5
add.i.v
push.v builtin.arrowImage
pushref.i 16777239
call.i draw_sprite(argc=4)
popz.v

:[8]
push.v local.posy
push.d 16.5
add.d.v
pop.v.v local.posy
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [5]

:[end]