:[0]
pushi.e 65
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [2]

:[1]
push.v builtin.nrm
pushi.e 0
cmp.i.v GT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v builtin.nrm
push.e 1
sub.i.v
pop.v.v builtin.nrm
b [10]

:[5]
pushi.e 68
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [7]

:[6]
push.v builtin.nrm
call.i room_next(argc=1)
call.i room_exists(argc=1)
conv.v.b
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.v builtin.nrm
push.e 1
add.i.v
pop.v.v builtin.nrm

:[10]
push.v builtin.nrm
call.i room_next(argc=1)
pop.v.v builtin.rm_next
push.v builtin.rm_next
call.i room_get_name(argc=1)
pop.v.v builtin.str_room
pushi.e 69
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [12]

:[11]
push.v builtin.rm_next
call.i room_goto(argc=1)
popz.v
pushi.e 128
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e 112
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.y

:[12]
pushglb.v global.TEXTBOX_FONT
call.i draw_set_font(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_valign(argc=1)
popz.v
push.s "Select your room:"@1189
conv.s.v
pushbltn.v builtin.room_height
pushi.e 2
conv.i.d
div.d.v
pushi.e 32
sub.i.v
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
call.i draw_text(argc=3)
popz.v
push.s "A/D - navigate\nE - Select"@1190
conv.s.v
pushbltn.v builtin.room_height
pushi.e 2
conv.i.d
div.d.v
pushi.e 32
add.i.v
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
call.i draw_text(argc=3)
popz.v
push.v builtin.str_room
pushbltn.v builtin.room_height
pushi.e 2
conv.i.d
div.d.v
pushi.e 20
sub.i.v
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
call.i draw_text(argc=3)
popz.v

:[end]