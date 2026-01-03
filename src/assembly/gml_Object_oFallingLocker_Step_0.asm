; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushref.i 98
call.i distance_to_object(argc=1)
pop.v.v local.dist
pushloc.v local.dist
pushi.e 30
cmp.i.v GT
bf [3]

:[1]
push.v builtin.fell
conv.v.b
not.b
bf [3]

:[2]
pushref.i 33554467
call.i audio_is_playing(argc=1)
conv.v.b
not.b
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 0
pop.v.i builtin.image_index
b [12]

:[6]
pushloc.v local.dist
pushi.e 30
cmp.i.v LT
bf [8]

:[7]
push.v builtin.fell
conv.v.b
not.b
b [9]

:[8]
push.e 0

:[9]
bf [12]

:[10]
pushi.e 1
pop.v.b builtin.fell
pushref.i 33554467
call.i audio_is_playing(argc=1)
conv.v.b
not.b
bf [12]

:[11]
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554467
call.i audio_play_sound(argc=3)
popz.v

:[12]
push.v builtin.bbox_bottom
neg.v
pop.v.v builtin.depth

:[end]