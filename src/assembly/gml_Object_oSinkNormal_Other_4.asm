:[0]
push.v builtin.image_index
pushi.e 1
cmp.i.v EQ
bf [end]

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
bf [end]

:[5]
pushi.e 1
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554526
call.i audio_play_sound(argc=3)
pop.v.v builtin.sound_instance

:[end]