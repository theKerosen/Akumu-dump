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
pushref.i 33554491
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
push.v builtin.doorOpening
pushi.e 0
cmp.b.v EQ
bf [5]

:[3]
pushref.i 98
pushi.e -9
push.v [stacktop]self.state
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushglb.v global.gamePaused
pushi.e 1
cmp.b.v NEQ
b [6]

:[5]
push.e 0

:[6]
bf [end]

:[7]
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushref.i 33554462
call.i audio_play_sound(argc=4)
popz.v
pushi.e 5
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
pushi.e 1
pop.v.b builtin.doorOpening

:[end]