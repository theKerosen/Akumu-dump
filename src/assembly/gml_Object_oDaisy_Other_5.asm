:[0]
pushglb.v global.chasing
conv.v.b
not.b
bf [2]

:[1]
pushref.i 33554447
call.i audio_stop_sound(argc=1)
popz.v
pushref.i 33554435
call.i audio_resume_sound(argc=1)
popz.v

:[2]
call.i instance_destroy(argc=0)
popz.v

:[end]