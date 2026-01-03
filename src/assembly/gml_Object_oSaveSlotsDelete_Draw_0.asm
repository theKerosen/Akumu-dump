; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushi.e -6
pushi.e 0
push.v [array]self.view_camera
call.i camera_get_view_x(argc=1)
pop.v.v local._textbox_x
pushi.e -6
pushi.e 0
push.v [array]self.view_camera
call.i camera_get_view_y(argc=1)
pop.v.v local._textbox_y
pushglb.v global.TEXTBOX_FONT
call.i draw_set_font(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_valign(argc=1)
popz.v
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
pushloc.v local._textbox_y
pushloc.v local._textbox_x
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
push.v builtin.slot_names
call.i array_length(argc=1)
pop.v.v local.slots_total
pushi.e -6
pushi.e 0
push.v [array]self.view_camera
call.i camera_get_view_y(argc=1)
pushi.e 12
add.i.v
pushi.e -6
pushi.e 0
push.v [array]self.view_camera
call.i camera_get_view_x(argc=1)
pushi.e 33
add.i.v
pushi.e 0
conv.i.v
pushref.i 16777379
call.i draw_sprite(argc=4)
popz.v
push.s "Select a slot to delete."@1539
conv.s.v
pushi.e -6
pushi.e 0
push.v [array]self.view_camera
call.i camera_get_view_y(argc=1)
pushi.e 15
add.i.v
pushi.e -6
pushi.e 0
push.v [array]self.view_camera
call.i camera_get_view_x(argc=1)
pushi.e 43
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 0
pop.v.i local.i

:[1]
pushloc.v local.i
push.v builtin.visible_slots
cmp.v.v LT
bf [end]

:[2]
pushloc.v local.i
push.v builtin.scroll_offset
add.v.v
pop.v.v local.actual_index
pushloc.v local.actual_index
pushloc.v local.slots_total
cmp.v.v GTE
bf [4]

:[3]
b [end]

:[4]
push.v builtin.slot_x
pop.v.v local.xx
push.v builtin.slot_y
pushloc.v local.i
push.v builtin.slot_spacing
mul.v.v
add.v.v
pop.v.v local.yy
pushloc.v local.actual_index
push.v builtin.slot_selected
cmp.v.v EQ
bf [6]

:[5]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
pop.v.i builtin.subImg
b [7]

:[6]
pushi.e 1
pop.v.i builtin.subImg
push.i 5263440
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[7]
pushloc.v local.yy
pushloc.v local.xx
push.v builtin.subImg
pushref.i 16777368
call.i draw_sprite(argc=4)
popz.v
pushi.e -6
pushloc.v local.actual_index
conv.v.i
push.v [array]self.slot_names
pop.v.v local.label
pushi.e -6
pushloc.v local.actual_index
conv.v.i
push.v [array]self.slot_exists
conv.v.b
bf [26]

:[8]
b [17]

> gml_Script_cleanRoomName@gml_Object_oSaveSlotsDelete_Draw_0 (locals=3, argc=1)
:[9]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v arg.argument0
call.i string_copy(argc=3)
push.s "r"@1522
cmp.s.v EQ
bf [11]

:[10]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v arg.argument0
call.i string_delete(argc=3)
pop.v.v arg.argument0

:[11]
push.v arg.argument0
call.i string_length(argc=1)
pop.v.v local.len
pushi.e 1
conv.i.v
pushloc.v local.len
push.v arg.argument0
call.i string_copy(argc=3)
pop.v.v local.last1
pushi.e 2
conv.i.v
pushloc.v local.len
pushi.e 1
sub.i.v
push.v arg.argument0
call.i string_copy(argc=3)
pop.v.v local.last2
pushloc.v local.last2
call.i string_digits(argc=1)
pushloc.v local.last2
cmp.v.v EQ
bf [13]

:[12]
pushi.e 2
conv.i.v
pushloc.v local.len
pushi.e 1
sub.i.v
push.v arg.argument0
call.i string_delete(argc=3)
pop.v.v arg.argument0
b [15]

:[13]
pushloc.v local.last1
call.i string_digits(argc=1)
pushloc.v local.last1
cmp.v.v EQ
bf [15]

:[14]
pushi.e 1
conv.i.v
pushloc.v local.len
push.v arg.argument0
call.i string_delete(argc=3)
pop.v.v arg.argument0

:[15]
push.v arg.argument0
ret.v

:[16]
exit.i

:[17]
push.i [function]gml_Script_cleanRoomName@gml_Object_oSaveSlotsDelete_Draw_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.cleanRoomName
popz.v
push.s "akumu"@633
pushloc.v local.actual_index
call.i string(argc=1)
add.v.s
push.s ".ini"@635
add.s.v
pop.v.v local.saveFile
pushloc.v local.saveFile
call.i file_exists(argc=1)
conv.v.b
bf [25]

:[18]
pushloc.v local.saveFile
call.i ini_open(argc=1)
popz.v
pushref.i 50331652
push.s "lvl"@638
conv.s.v
push.s "map"@639
conv.s.v
call.i ini_read_string(argc=3)
pop.v.v local.roomName
pushloc.v local.roomName
call.i gml_Script_cleanRoomName@gml_Object_oSaveSlotsDelete_Draw_0(argc=1)
pop.v.v local.cleanName
push.v local.label
push.s " - "@1532
pushloc.v local.cleanName
add.v.s
add.v.v
pop.v.v local.label
call.i ini_close(argc=0)
popz.v
b [24]

> gml_Script_to2digits@gml_Object_oSaveSlotsDelete_Draw_0 (locals=0, argc=1)
:[19]
push.v arg.argument0
pushi.e 10
cmp.i.v LT
bf [21]

:[20]
push.s "0"@653
push.v arg.argument0
call.i string(argc=1)
add.v.s
b [22]

:[21]
push.v arg.argument0
call.i string(argc=1)

:[22]
ret.v

:[23]
exit.i

:[24]
push.i [function]gml_Script_to2digits@gml_Object_oSaveSlotsDelete_Draw_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.to2digits
popz.v
pushloc.v local.saveFile
call.i ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "h"@682
conv.s.v
push.s "config"@644
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v local.h
pushi.e 0
conv.i.v
push.s "m"@684
conv.s.v
push.s "config"@644
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v local.m
pushi.e 0
conv.i.v
push.s "s"@401
conv.s.v
push.s "config"@644
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v local.s
call.i ini_close(argc=0)
popz.v
pushloc.v local.h
call.i gml_Script_to2digits@gml_Object_oSaveSlotsDelete_Draw_0(argc=1)
push.s ":"@1535
add.s.v
pushloc.v local.m
call.i gml_Script_to2digits@gml_Object_oSaveSlotsDelete_Draw_0(argc=1)
add.v.v
push.s ":"@1535
add.s.v
pushloc.v local.s
call.i floor(argc=1)
call.i gml_Script_to2digits@gml_Object_oSaveSlotsDelete_Draw_0(argc=1)
add.v.v
pop.v.v local.time_string
pushloc.v local.time_string
pushloc.v local.yy
pushi.e 32
add.i.v
pushloc.v local.xx
pushi.e 10
add.i.v
call.i draw_text(argc=3)
popz.v

:[25]
b [27]

:[26]
push.v local.label
push.s " -"@1537
add.s.v
pop.v.v local.label

:[27]
pushloc.v local.label
pushloc.v local.yy
pushi.e 6
add.i.v
pushloc.v local.xx
pushi.e 10
add.i.v
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
b [1]

:[end]