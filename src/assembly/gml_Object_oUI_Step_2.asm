:[0]
pushglb.v global.gamePaused
conv.v.b
bf [end]

:[1]
pushi.e 38
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [3]

:[2]
pushi.e 87
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [4]

:[3]
push.e 1

:[4]
pop.v.b builtin.keyUp
pushi.e 40
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [6]

:[5]
pushi.e 83
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [7]

:[6]
push.e 1

:[7]
pop.v.b builtin.keyDown
push.v builtin.pauseOptionSelected
push.v builtin.keyDown
push.v builtin.keyUp
sub.v.v
add.v.v
pop.v.v builtin.pauseOptionSelected
push.v builtin.pauseOptionSelected
push.v builtin.pauseOption
call.i array_length(argc=1)
cmp.v.v GTE
bf [9]

:[8]
pushi.e 0
pop.v.i builtin.pauseOptionSelected

:[9]
push.v builtin.pauseOptionSelected
pushi.e 0
cmp.i.v LT
bf [11]

:[10]
push.v builtin.pauseOption
call.i array_length(argc=1)
pushi.e 1
sub.i.v
pop.v.v builtin.pauseOptionSelected

:[11]
push.v builtin.keyDown
conv.v.b
bf [13]

:[12]
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
push.d 1.1
conv.d.v
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554501
call.i audio_play_sound(argc=6)
popz.v

:[13]
push.v builtin.keyUp
conv.v.b
bf [15]

:[14]
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
push.d 1.1
conv.d.v
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554501
call.i audio_play_sound(argc=6)
popz.v

:[15]
pushi.e 90
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [17]

:[16]
pushi.e 13
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [18]

:[17]
push.e 1

:[18]
pop.v.b builtin.keyActivate
push.v builtin.keyActivate
conv.v.b
bf [end]

:[19]
push.v builtin.pauseOptionSelected
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [23]

:[20]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [26]

:[21]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [27]

:[22]
b [28]

:[23]
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
pushi.e 0
pop.v.b global.gamePaused
pushref.i 83
pushi.e -9
push.v [stacktop]self.songAsset
call.i audio_resume_sound(argc=1)
popz.v
pushi.e -3
pushenv [25]

:[24]
push.v builtin.gamePausedImageSpeed
pop.v.v builtin.image_speed

:[25]
popenv [24]
b [28]

:[26]
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
call.i game_restart(argc=0)
popz.v
b [28]

:[27]
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
call.i game_end(argc=0)
popz.v
b [28]

:[28]
popz.v

:[end]