; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v builtin.bbox_bottom
neg.v
pop.v.v builtin.depth
push.v builtin.canRun
conv.v.b
bf [32]

:[1]
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
pushglb.v global.isHiding
conv.v.b
bf [3]

:[2]
pushref.i 33554447
call.i audio_stop_sound(argc=1)
popz.v
call.i path_end(argc=0)
popz.v
exit.i

:[3]
pushref.i 33554447
call.i audio_is_paused(argc=1)
conv.v.b
bf [5]

:[4]
pushref.i 33554447
call.i audio_resume_sound(argc=1)
popz.v

:[5]
push.v builtin.play
pushi.e 0
cmp.b.v EQ
bf [8]

:[6]
pushref.i 33554435
call.i audio_pause_sound(argc=1)
popz.v
pushref.i 33554447
call.i audio_is_playing(argc=1)
conv.v.b
not.b
bf [8]

:[7]
pushi.e 1
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554447
call.i audio_play_sound(argc=3)
popz.v
pushi.e 1
pop.v.b builtin.play

:[8]
pushglb.v global.gamePaused
conv.v.b
bt [13]

:[9]
pushref.i 139
call.i instance_exists(argc=1)
conv.v.b
bt [13]

:[10]
pushref.i 132
call.i instance_exists(argc=1)
conv.v.b
bt [13]

:[11]
pushref.i 98
pushi.e -9
push.v [stacktop]self.state
pushi.e 5
cmp.i.v EQ
bt [13]

:[12]
pushref.i 98
pushi.e -9
push.v [stacktop]self.state
pushi.e 1
cmp.i.v EQ
b [14]

:[13]
push.e 1

:[14]
bf [16]

:[15]
pushi.e 0
pop.v.i builtin.image_speed
call.i path_end(argc=0)
popz.v
exit.i

:[16]
pushi.e 1
pop.v.i builtin.image_speed
push.v builtin.path
call.i path_delete(argc=1)
popz.v
call.i path_add(argc=0)
pop.v.v builtin.path
pushi.e 0
conv.b.v
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
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
pushi.e 1
conv.i.v
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
bt [18]

:[17]
pushloc.v local.dy
pushi.e 0
cmp.i.v NEQ
b [19]

:[18]
push.e 1

:[19]
bf [30]

:[20]
pushloc.v local.dx
call.i abs(argc=1)
pushloc.v local.dy
call.i abs(argc=1)
cmp.v.v GT
bf [25]

:[21]
pushloc.v local.dx
pushi.e 0
cmp.i.v GT
bf [23]

:[22]
pushref.i 16777356
b [24]

:[23]
pushref.i 16777355

:[24]
pop.v.v builtin.sprite_index
b [29]

:[25]
pushloc.v local.dy
pushi.e 0
cmp.i.v GT
bf [27]

:[26]
pushref.i 16777354
b [28]

:[27]
pushref.i 16777357

:[28]
pop.v.v builtin.sprite_index

:[29]
b [31]

:[30]
pushi.e 0
pop.v.i builtin.image_index

:[31]
push.v builtin.x
pop.v.v builtin.previous_x
push.v builtin.y
pop.v.v builtin.previous_y
b [end]

:[32]
pushi.e 0
pop.v.i builtin.image_index

:[end]