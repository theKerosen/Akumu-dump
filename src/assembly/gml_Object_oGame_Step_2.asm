; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushref.i 98
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [2]

:[1]
exit.i

:[2]
pushi.e 27
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [4]

:[3]
pushi.e 88
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [5]

:[4]
push.e 1

:[5]
pop.v.b local.pausekey
pushloc.v local.pausekey
conv.v.b
bf [11]

:[6]
pushref.i 139
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [11]

:[7]
pushref.i 144
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [11]

:[8]
pushref.i 132
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [11]

:[9]
pushref.i 79
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [11]

:[10]
pushref.i 98
pushi.e -9
push.v [stacktop]self.state
pushi.e 0
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [23]

:[13]
pushglb.v global.gamePaused
conv.v.b
bf [15]

:[14]
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
pushref.i 83
pushi.e -9
push.v [stacktop]self.songAsset
call.i audio_resume_sound(argc=1)
popz.v
b [16]

:[15]
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
pushref.i 83
pushi.e -9
push.v [stacktop]self.songAsset
call.i audio_pause_sound(argc=1)
popz.v

:[16]
pushglb.v global.gamePaused
conv.v.b
not.b
pop.v.b global.gamePaused
pushglb.v global.gamePaused
conv.v.b
bf [20]

:[17]
pushi.e -3
pushenv [19]

:[18]
push.v builtin.image_speed
pop.v.v builtin.gamePausedImageSpeed
pushi.e 0
pop.v.i builtin.image_speed

:[19]
popenv [18]
b [23]

:[20]
pushi.e -3
pushenv [22]

:[21]
push.v builtin.gamePausedImageSpeed
pop.v.v builtin.image_speed

:[22]
popenv [21]

:[23]
push.v builtin.bbox_bottom
neg.v
pop.v.v builtin.depth

:[end]