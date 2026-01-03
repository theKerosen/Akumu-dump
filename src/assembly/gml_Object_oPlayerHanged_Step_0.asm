:[0]
push.v builtin.bbox_bottom
neg.v
pop.v.v builtin.depth
push.v builtin.image_index
pushi.e 25
cmp.i.v GTE
bf [2]

:[1]
push.v builtin.play
conv.v.b
not.b
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushref.i 33554464
call.i audio_is_playing(argc=1)
conv.v.b
not.b
bf [end]

:[5]
pushi.e 1
pop.v.b builtin.play
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554464
call.i audio_play_sound(argc=3)
popz.v

:[end]