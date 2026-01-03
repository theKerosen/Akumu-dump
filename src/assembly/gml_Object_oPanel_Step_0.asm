:[0]
push.v builtin.canDraw
conv.v.b
not.b
bf [3]

:[1]
push.v builtin.bbox_bottom
neg.v
pop.v.v builtin.depth
exit.i

:[2]
b [4]

:[3]
push.i -999993
pop.v.i builtin.depth

:[4]
push.v builtin.bgImage
pushi.e 3
cmp.i.v GTE
bf [7]

:[5]
push.v builtin.screwlock
pushi.e -4
cmp.i.v EQ
bf [7]

:[6]
pushglb.v global.screwUsed
conv.v.b
not.b
b [8]

:[7]
push.e 0

:[8]
bf [end]

:[9]
pushi.e 3
pop.v.i builtin.bgImage
pushi.e 0
pop.v.i builtin.bgImageSpeed
pushi.e 1
pop.v.b global.screwUsed
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554466
call.i audio_play_sound(argc=3)
popz.v

:[end]