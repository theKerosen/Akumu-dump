:[0]
push.v builtin.image_index
pushi.e 1
cmp.i.v EQ
bf [6]

:[1]
push.v builtin.sound_instance
pushi.e -4
cmp.i.v EQ
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
pushbltn.v builtin.room
pushref.i 50331670
cmp.v.v NEQ
bf [8]

:[7]
exit.i

:[8]
pushglb.v global.sinkCorrect
conv.v.b
bf [end]

:[9]
pushref.i 115
pushi.e -9
pushenv [16]

:[10]
push.v builtin.sink_id
pushi.e 1
cmp.i.v EQ
bf [14]

:[11]
pushi.e 1
pop.v.i builtin.image_index
push.v builtin.sound_instance
call.i audio_is_playing(argc=1)
conv.v.b
not.b
bf [13]

:[12]
pushi.e 1
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554526
call.i audio_play_sound(argc=3)
pop.v.v builtin.sound_instance

:[13]
b [16]

:[14]
pushi.e 0
pop.v.i builtin.image_index
push.v builtin.sound_instance
call.i audio_is_playing(argc=1)
conv.v.b
bf [16]

:[15]
push.v builtin.sound_instance
call.i audio_stop_sound(argc=1)
popz.v
pushi.e -4
pop.v.i builtin.sound_instance

:[16]
popenv [10]

:[end]