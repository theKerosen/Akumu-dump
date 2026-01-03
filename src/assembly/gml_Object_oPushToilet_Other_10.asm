; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v builtin.moveable
conv.v.b
not.b
bf [2]

:[1]
exit.i

:[2]
push.v builtin.is_moving
conv.v.b
bf [4]

:[3]
exit.i

:[4]
pushref.i 98
pushi.e -9
push.v [stacktop]self.face
pop.v.v local.direction_
push.v builtin.x
pop.v.v local.new_x
push.v builtin.y
pop.v.v local.new_y
pushloc.v local.direction_
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [9]

:[5]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [10]

:[6]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [11]

:[7]
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [12]

:[8]
b [13]

:[9]
push.v local.new_y
push.v builtin.tile_size_
add.v.v
pop.v.v local.new_y
b [13]

:[10]
push.v local.new_y
push.v builtin.tile_size_
sub.v.v
pop.v.v local.new_y
b [13]

:[11]
push.v local.new_x
push.v builtin.tile_size_
sub.v.v
pop.v.v local.new_x
b [13]

:[12]
push.v local.new_x
push.v builtin.tile_size_
add.v.v
pop.v.v local.new_x
b [13]

:[13]
popz.v
pushref.i 118
pushloc.v local.new_y
pushloc.v local.new_x
call.i place_meeting(argc=3)
conv.v.b
bt [15]

:[14]
pushref.i 119
pushloc.v local.new_y
pushloc.v local.new_x
call.i place_meeting(argc=3)
conv.v.b
b [16]

:[15]
push.e 1

:[16]
bf [18]

:[17]
exit.i

:[18]
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554506
call.i audio_play_sound(argc=3)
popz.v
pushloc.v local.new_x
pop.v.v builtin.target_x
pushloc.v local.new_y
pop.v.v builtin.target_y
pushi.e 1
pop.v.b builtin.is_moving

:[end]