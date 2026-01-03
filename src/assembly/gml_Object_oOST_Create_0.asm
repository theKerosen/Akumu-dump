:[0]
pushi.e 1
pop.v.i global.musicVolume
pushi.e 1
pop.v.i global.masterVolume
pushi.e -4
pop.v.i builtin.songInstance
pushi.e -4
pop.v.i builtin.songAsset
pushi.e -4
pop.v.i builtin.targetSongAsset
pushi.e 0
pop.v.i builtin.endFadeOutTime
pushi.e 0
pop.v.i builtin.startFadeInTime
pushi.e 1
pop.v.i builtin.fadeInInstVol
push.i 65536
setowner.e
pushi.e 0
conv.i.v
call.i array_create(argc=1)
pop.v.v builtin.fadeOutInstances
pushi.e 0
conv.i.v
call.i array_create(argc=1)
pop.v.v builtin.fadeOutInstVol
pushi.e 0
conv.i.v
call.i array_create(argc=1)
pop.v.v builtin.fadeOutInstTime

:[end]