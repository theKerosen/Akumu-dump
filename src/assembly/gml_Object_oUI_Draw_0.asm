; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushref.i 98
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushref.i 98
pushi.e -9
push.v [stacktop]self.itemequip
push.s "candle"@957
cmp.s.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [15]

:[4]
pushref.i 98
pushi.e -9
push.v [stacktop]self.visible
pushi.e 1
cmp.b.v NEQ
bf [6]

:[5]
exit.i

:[6]
pushi.e -6
pushi.e 0
push.v [array]self.view_camera
call.i camera_get_view_x(argc=1)
pushi.e 183
add.i.v
pop.v.v local._fuelbar_x
pushi.e -6
pushi.e 0
push.v [array]self.view_camera
call.i camera_get_view_y(argc=1)
pushi.e 183
add.i.v
pop.v.v local._fuelbar_y
pushloc.v local._fuelbar_y
pushloc.v local._fuelbar_x
pushi.e 0
conv.i.v
pushref.i 16777259
call.i draw_sprite(argc=4)
popz.v
push.v builtin.fuelbar_height
push.v builtin.fuelbar_width
push.v builtin.fuel
push.v builtin.fuel_max
div.v.v
push.v builtin.fuelbar_width
mul.v.v
call.i min(argc=2)
pushloc.v local._fuelbar_y
pushloc.v local._fuelbar_x
pushi.e 0
conv.i.v
pushref.i 16777258
call.i draw_sprite_stretched(argc=6)
popz.v
pushloc.v local._fuelbar_y
pushloc.v local._fuelbar_x
pushi.e 0
conv.i.v
pushref.i 16777257
call.i draw_sprite(argc=4)
popz.v
push.v builtin.fuel
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
push.s "candle"@957
conv.s.v
pushi.e 6
conv.i.v
call.i gml_Script_removeItem(argc=2)
popz.v
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554445
call.i audio_play_sound(argc=3)
popz.v
push.s ""@36
pushref.i 98
pushi.e -9
pop.v.s [stacktop]self.itemequip

:[8]
pushglb.v global.gamePaused
conv.v.b
not.b
bf [11]

:[9]
pushref.i 98
pushi.e -9
push.v [stacktop]self.visible
pushi.e 0
cmp.b.v NEQ
bf [11]

:[10]
pushref.i 98
pushi.e -9
push.v [stacktop]self.state
pushi.e 5
cmp.i.v NEQ
b [12]

:[11]
push.e 0

:[12]
bf [15]

:[13]
push.v builtin.burn_timer
pushi.e 1
sub.i.v
pop.v.v builtin.burn_timer
push.v builtin.burn_timer
pushi.e 0
cmp.i.v LTE
bf [15]

:[14]
push.v builtin.fuel
pushi.e 1
sub.i.v
pop.v.v builtin.fuel
push.v builtin.burn_interval
pop.v.v builtin.burn_timer

:[15]
pushglb.v global.gamePaused
conv.v.b
bf [23]

:[16]
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
pushglb.v global.TEXTBOX_FONT
call.i draw_set_font(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.s "Paused"@1583
conv.s.v
pushloc.v local._textbox_y
pushi.e 9
add.i.v
pushloc.v local._textbox_x
pushi.e 130
add.i.v
call.i draw_text(argc=3)
popz.v
push.v builtin.arrowImage
push.v builtin.arrowImageSpeed
add.v.v
pop.v.v builtin.arrowImage
pushi.e 0
pop.v.i local.posy
pushi.e 0
pop.v.i local.i

:[17]
pushloc.v local.i
push.v builtin.pauseOption
call.i array_length(argc=1)
cmp.v.v LT
bf [22]

:[18]
pushloc.v local.i
push.v builtin.pauseOptionSelected
cmp.v.v EQ
bf [20]

:[19]
pushi.e -6
pushloc.v local.i
conv.v.i
push.v [array]self.pauseOption
call.i string_width(argc=1)
pop.v.v local.text_width
pushloc.v local._textbox_y
pushi.e 86
add.i.v
pushloc.v local.posy
add.v.v
pushloc.v local._textbox_x
pushi.e 120
add.i.v
pushloc.v local.text_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v builtin.arrowImage
pushref.i 16777239
call.i draw_sprite(argc=4)
popz.v
b [21]

:[20]
push.d 0.6
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v

:[21]
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -6
pushloc.v local.i
conv.v.i
push.v [array]self.pauseOption
pushloc.v local._textbox_y
pushi.e 85
add.i.v
pushloc.v local.i
pushi.e 15
mul.i.v
add.v.v
pushloc.v local._textbox_x
pushi.e 130
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v local.posy
pushi.e 15
add.i.v
pop.v.v local.posy
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [17]

:[22]
b [end]

:[23]
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_valign(argc=1)
popz.v

:[end]