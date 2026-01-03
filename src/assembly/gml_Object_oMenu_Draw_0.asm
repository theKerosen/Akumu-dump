:[0]
call.i draw_self(argc=0)
popz.v
push.v builtin.image_alpha
call.i draw_set_alpha(argc=1)
popz.v
pushglb.v global.TEXTBOX_FONT
call.i draw_set_font(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i draw_set_valign(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.i 12632256
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "Demo"@1370
conv.s.v
push.v builtin.y
pushi.e 45
sub.i.v
push.v builtin.x
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]