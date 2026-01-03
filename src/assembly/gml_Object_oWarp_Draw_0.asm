:[0]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.image_index
push.v builtin.sprite_index
call.i draw_sprite_tiled(argc=4)
popz.v

:[end]