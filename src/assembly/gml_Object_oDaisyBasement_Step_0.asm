; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v builtin.bbox_bottom
neg.v
pop.v.v builtin.depth
pushglb.v global.gamePaused
conv.v.b
bt [2]

:[1]
pushref.i 98
call.i instance_exists(argc=1)
conv.v.b
not.b
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
call.i path_end(argc=0)
popz.v
exit.i

:[5]
pushref.i 98
pushi.e -9
push.v [stacktop]self.y
pushref.i 98
pushi.e -9
push.v [stacktop]self.x
push.v builtin.y
push.v builtin.x
call.i point_distance(argc=4)
pop.v.v local.dist
pushref.i 33554462
call.i audio_is_playing(argc=1)
conv.v.b
not.b
bf [8]

:[6]
push.v builtin.canAppear
conv.v.b
bf [8]

:[7]
push.v builtin.deb2
pushi.e 0
cmp.b.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [13]

:[10]
pushi.e 1
pop.v.b builtin.deb2
b [12]

> gml_Script_anon@525@gml_Object_oDaisyBasement_Step_0 (locals=0, argc=0)
:[11]
pushi.e 1
pop.v.b builtin.canRun
exit.i

:[12]
push.i [function]gml_Script_anon@525@gml_Object_oDaisyBasement_Step_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 100
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v

:[13]
pushref.i 33554462
call.i audio_is_playing(argc=1)
conv.v.b
not.b
bf [15]

:[14]
push.v builtin.deb3
pushi.e 1
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
pushi.e 0
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
pushi.e 2
pop.v.i builtin.deb3

:[18]
push.v builtin.canRun
conv.v.b
bf [37]

:[19]
push.v builtin.play
pushi.e 0
cmp.b.v EQ
bf [21]

:[20]
pushi.e 1
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554446
call.i audio_play_sound(argc=3)
popz.v
pushi.e 1
pop.v.b builtin.play

:[21]
pushi.e 0
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
push.v builtin.path
call.i path_delete(argc=1)
popz.v
call.i path_add(argc=0)
pop.v.v builtin.path
pushi.e 0
conv.b.v
pushi.e 4
conv.i.v
push.d 1.4
conv.d.v
pushref.i 98
pushi.e -9
push.v [stacktop]self.y
pushref.i 98
pushi.e -9
push.v [stacktop]self.x
push.v builtin.path
call.i mp_potential_path(argc=6)
popz.v
pushi.e 1
conv.b.v
pushi.e 0
conv.i.v
push.d 1.4
conv.d.v
push.v builtin.path
call.i path_start(argc=4)
popz.v
push.v builtin.x
push.v builtin.previous_x
sub.v.v
pop.v.v local.dx
push.v builtin.y
push.v builtin.previous_y
sub.v.v
pop.v.v local.dy
pushloc.v local.dx
pushi.e 0
cmp.i.v NEQ
bt [23]

:[22]
pushloc.v local.dy
pushi.e 0
cmp.i.v NEQ
b [24]

:[23]
push.e 1

:[24]
bf [35]

:[25]
pushloc.v local.dx
call.i abs(argc=1)
pushloc.v local.dy
call.i abs(argc=1)
cmp.v.v GT
bf [30]

:[26]
pushloc.v local.dx
pushi.e 0
cmp.i.v GT
bf [28]

:[27]
pushref.i 16777356
b [29]

:[28]
pushref.i 16777355

:[29]
pop.v.v builtin.sprite_index
b [34]

:[30]
pushloc.v local.dy
pushi.e 0
cmp.i.v GT
bf [32]

:[31]
pushref.i 16777354
b [33]

:[32]
pushref.i 16777357

:[33]
pop.v.v builtin.sprite_index

:[34]
b [36]

:[35]
pushi.e 0
pop.v.i builtin.image_index

:[36]
push.v builtin.x
pop.v.v builtin.previous_x
push.v builtin.y
pop.v.v builtin.previous_y
b [38]

:[37]
pushi.e 0
pop.v.i builtin.image_index

:[38]
pushloc.v local.dist
pushi.e 120
cmp.i.v LT
bf [40]

:[39]
push.v builtin.deb3
pushi.e 0
cmp.i.v EQ
b [41]

:[40]
push.e 0

:[41]
bf [43]

:[42]
pushi.e 1
pop.v.i builtin.deb3
push.d 0.15
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushref.i 33554462
call.i audio_play_sound(argc=4)
popz.v
pushi.e 5
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state

:[43]
pushloc.v local.dist
pushi.e 60
cmp.i.v GT
bt [45]

:[44]
push.v builtin.deb
pushi.e 1
cmp.b.v EQ
b [46]

:[45]
push.e 1

:[46]
bf [48]

:[47]
exit.i

:[48]
pushi.e 1
pop.v.b builtin.deb
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushref.i 33554463
call.i audio_play_sound(argc=4)
popz.v
pushi.e 1
pop.v.b builtin.canAppear

:[end]