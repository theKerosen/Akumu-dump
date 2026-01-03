:[0]
push.v builtin.canDraw
conv.v.b
not.b
bf [2]

:[1]
exit.i

:[2]
pushglb.v global.TEXTBOX_FONT
call.i draw_set_font(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_colour(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.d 0.2924051
conv.d.v
push.d 0.2707317
conv.d.v
push.v builtin.y
pushi.e 129
conv.i.v
pushi.e 0
conv.i.v
pushref.i 16777380
call.i draw_sprite_ext(argc=9)
popz.v
push.v builtin.text
push.v builtin.y
push.v builtin.x
call.i draw_text(argc=3)
popz.v
push.i 4210752
conv.i.v
call.i draw_set_colour(argc=1)
popz.v
push.d 0.3
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
push.s "\n\n\n\n31013"@1144
conv.s.v
push.v builtin.y
push.v builtin.text_height
add.v.v
push.v builtin.x
call.i draw_text(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_colour(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v

:[end]