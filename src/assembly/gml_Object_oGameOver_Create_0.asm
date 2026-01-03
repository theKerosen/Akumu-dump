:[0]
pushref.i 98
call.i instance_destroy(argc=1)
popz.v
pushi.e 1
pop.v.b builtin.canDraw
pushglb.v global.deathSound
conv.v.b
bf [2]

:[1]
pushi.e 0
pop.v.b global.deathSound
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554436
call.i audio_play_sound(argc=3)
popz.v

:[2]
push.i 65530
setowner.e
pushi.e 80
conv.i.v
pushi.e -6
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 0
pop.v.b builtin.canFade
pushi.e 1
pop.v.i builtin.alpha
pushi.e 0
pop.v.b builtin.canTeleport
pushi.e 0
pop.v.b builtin.fadeGo

:[end]