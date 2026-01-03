:[0]
push.v builtin.inventory
call.i ds_list_destroy(argc=1)
popz.v
pushglb.v global.TEXTBOX_FONT
call.i font_exists(argc=1)
conv.v.b
bf [end]

:[1]
pushglb.v global.TEXTBOX_FONT
call.i font_delete(argc=1)
popz.v

:[end]