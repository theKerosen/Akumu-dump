; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v builtin.state
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
call.i display_get_gui_width(argc=0)
pop.v.v local.xx
call.i display_get_gui_height(argc=0)
pop.v.v local.yy
pushloc.v local.yy
pushi.e 2
conv.i.d
div.d.v
pushi.e 100
sub.i.v
pushloc.v local.xx
pushi.e 2
conv.i.d
div.d.v
pushi.e 0
conv.i.v
pushref.i 16777282
call.i draw_sprite(argc=4)
popz.v

:[end]