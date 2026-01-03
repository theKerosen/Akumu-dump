:[0]
pushref.i 49
pushi.e -9
push.v [stacktop]self.opSelected
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554517
call.i audio_play_sound(argc=6)
popz.v
b [end]

:[2]
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554443
call.i audio_play_sound(argc=6)
popz.v

:[end]