; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushglb.v global.musicVolume
pushglb.v global.masterVolume
mul.v.v
pop.v.v local._finalVol
push.v builtin.songAsset
push.v builtin.targetSongAsset
cmp.v.v NEQ
bf [7]

:[1]
push.v builtin.songInstance
call.i audio_is_playing(argc=1)
conv.v.b
bf [3]

:[2]
push.v builtin.songInstance
push.v builtin.fadeOutInstances
call.i array_push(argc=2)
popz.v
push.v builtin.fadeInInstVol
push.v builtin.fadeOutInstVol
call.i array_push(argc=2)
popz.v
push.v builtin.endFadeOutTime
push.v builtin.fadeOutInstTime
call.i array_push(argc=2)
popz.v
pushi.e -4
pop.v.i builtin.songInstance
pushi.e -4
pop.v.i builtin.songAsset

:[3]
push.v builtin.fadeOutInstances
call.i array_length(argc=1)
pushi.e 0
cmp.i.v EQ
bf [7]

:[4]
push.v builtin.targetSongAsset
call.i audio_exists(argc=1)
conv.v.b
bf [6]

:[5]
pushi.e 1
conv.b.v
pushi.e 4
conv.i.v
push.v builtin.targetSongAsset
call.i audio_play_sound(argc=3)
pop.v.v builtin.songInstance
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.songInstance
call.i audio_sound_gain(argc=3)
popz.v
pushi.e 0
pop.v.i builtin.fadeInInstVol

:[6]
push.v builtin.targetSongAsset
pop.v.v builtin.songAsset

:[7]
push.v builtin.songInstance
call.i audio_is_playing(argc=1)
conv.v.b
bf [15]

:[8]
push.v builtin.startFadeInTime
pushi.e 0
cmp.i.v GT
bf [13]

:[9]
push.v builtin.fadeInInstVol
pushi.e 1
cmp.i.v LT
bf [11]

:[10]
push.v builtin.fadeInInstVol
pushi.e 1
conv.i.d
push.v builtin.startFadeInTime
div.v.d
add.v.v
pop.v.v builtin.fadeInInstVol
b [12]

:[11]
pushi.e 1
pop.v.i builtin.fadeInInstVol

:[12]
b [14]

:[13]
pushi.e 1
pop.v.i builtin.fadeInInstVol

:[14]
pushi.e 0
conv.i.v
push.v builtin.fadeInInstVol
pushloc.v local._finalVol
mul.v.v
push.v builtin.songInstance
call.i audio_sound_gain(argc=3)
popz.v

:[15]
pushi.e 0
pop.v.i local.i

:[16]
pushloc.v local.i
push.v builtin.fadeOutInstances
call.i array_length(argc=1)
cmp.v.v LT
bf [end]

:[17]
pushi.e -6
pushloc.v local.i
conv.v.i
push.v [array]self.fadeOutInstTime
pushi.e 0
cmp.i.v GT
bf [21]

:[18]
pushi.e -6
pushloc.v local.i
conv.v.i
push.v [array]self.fadeOutInstVol
pushi.e 0
cmp.i.v GT
bf [20]

:[19]
push.i 65530
setowner.e
pushi.e -6
pushloc.v local.i
conv.v.i
dup.i 1
push.v [array]self.fadeOutInstVol
pushi.e 1
conv.i.d
pushi.e -6
pushloc.v local.i
conv.v.i
push.v [array]self.fadeOutInstTime
div.v.d
sub.v.v
pop.i.v [array]self.fadeOutInstVol

:[20]
b [22]

:[21]
push.i 65530
setowner.e
pushi.e 0
conv.i.v
pushi.e -6
pushloc.v local.i
conv.v.i
pop.v.v [array]self.fadeOutInstVol

:[22]
pushi.e 0
conv.i.v
pushi.e -6
pushloc.v local.i
conv.v.i
push.v [array]self.fadeOutInstVol
pushloc.v local._finalVol
mul.v.v
pushi.e -6
pushloc.v local.i
conv.v.i
push.v [array]self.fadeOutInstances
call.i audio_sound_gain(argc=3)
popz.v
pushi.e -6
pushloc.v local.i
conv.v.i
push.v [array]self.fadeOutInstVol
pushi.e 0
cmp.i.v LTE
bf [26]

:[23]
pushi.e -6
pushloc.v local.i
conv.v.i
push.v [array]self.fadeOutInstances
call.i audio_is_playing(argc=1)
conv.v.b
bf [25]

:[24]
pushi.e -6
pushloc.v local.i
conv.v.i
push.v [array]self.fadeOutInstances
call.i audio_stop_sound(argc=1)
popz.v

:[25]
pushi.e 1
conv.i.v
pushloc.v local.i
push.v builtin.fadeOutInstances
call.i array_delete(argc=3)
popz.v
pushi.e 1
conv.i.v
pushloc.v local.i
push.v builtin.fadeOutInstVol
call.i array_delete(argc=3)
popz.v
pushi.e 1
conv.i.v
pushloc.v local.i
push.v builtin.fadeOutInstTime
call.i array_delete(argc=3)
popz.v
push.v local.i
push.e 1
sub.i.v
pop.v.v local.i

:[26]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [16]

:[end]