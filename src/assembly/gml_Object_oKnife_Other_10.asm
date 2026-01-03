:[0]
pushi.e 0
pop.v.b builtin.debounce
pushi.e 5
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushref.i 33554517
call.i audio_play_sound(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushref.i 33554450
call.i audio_play_sound(argc=3)
popz.v
push.v builtin.itemTag
push.v builtin.quantity
push.v builtin.itemId
call.i gml_Script_addItem(argc=3)
popz.v

:[end]