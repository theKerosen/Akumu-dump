:[0]
push.v builtin.sound_instance
pushi.e -4
cmp.i.v NEQ
bf [2]

:[1]
push.v builtin.sound_instance
call.i audio_is_playing(argc=1)
conv.v.b
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
push.v builtin.sound_instance
call.i audio_stop_sound(argc=1)
popz.v
pushi.e -4
pop.v.i builtin.sound_instance

:[end]