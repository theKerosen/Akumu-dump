:[0]
push.v builtin.lock
pushi.e -4
cmp.i.v NEQ
bf [2]

:[1]
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushref.i 33554474
call.i audio_play_sound(argc=4)
popz.v
pushi.e 5
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
pushi.e 1
pop.v.b builtin.canPlay
exit.i

:[2]
push.v builtin.image_index
pushi.e 1
cmp.i.v NEQ
bf [end]

:[3]
pushi.e 1
pop.v.i builtin.image_index
pushref.i 16777262
pop.v.v builtin.mask_index
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushref.i 33554473
call.i audio_play_sound(argc=4)
popz.v

:[end]