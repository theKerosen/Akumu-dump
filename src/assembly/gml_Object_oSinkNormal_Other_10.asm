:[0]
push.v builtin.image_index
pushi.e 0
cmp.i.v EQ
bf [7]

:[1]
pushi.e 1
pop.v.i builtin.image_index
push.s "sound_instance"@1548
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bt [3]

:[2]
push.v builtin.sound_instance
call.i audio_is_playing(argc=1)
conv.v.b
not.b
b [4]

:[3]
push.e 1

:[4]
bf [6]

:[5]
pushi.e 1
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554526
call.i audio_play_sound(argc=3)
pop.v.v builtin.sound_instance

:[6]
b [end]

:[7]
pushi.e 0
pop.v.i builtin.image_index
push.v builtin.sound_instance
pushi.e -4
cmp.i.v NEQ
bf [9]

:[8]
push.v builtin.sound_instance
call.i audio_is_playing(argc=1)
conv.v.b
b [10]

:[9]
push.e 0

:[10]
bf [end]

:[11]
push.v builtin.sound_instance
call.i audio_stop_sound(argc=1)
popz.v
pushi.e -4
pop.v.i builtin.sound_instance

:[end]