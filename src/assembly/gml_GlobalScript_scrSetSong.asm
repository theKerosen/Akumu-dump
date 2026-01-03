:[0]
b [8]

> gml_Script_set_song_ingame (locals=0, argc=3)
:[1]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i builtin.argument1

:[3]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [5]

:[4]
pushi.e 0
pop.v.i builtin.argument2

:[5]
pushref.i 83
pushi.e -9
pushenv [7]

:[6]
push.v arg.argument0
pop.v.v builtin.targetSongAsset
push.v arg.argument1
pop.v.v builtin.endFadeOutTime
push.v arg.argument2
pop.v.v builtin.startFadeInTime

:[7]
popenv [6]
exit.i

:[8]
push.i [function]gml_Script_set_song_ingame
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.set_song_ingame
popz.v

:[end]