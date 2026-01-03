; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.i 65530
setowner.e
pushbltn.v builtin.room_speed
pushi.e 8
mul.i.v
pushi.e -6
pushi.e 0
pop.v.v [array]self.alarm
pushref.i 98
call.i instance_exists(argc=1)
conv.v.b
not.b
bt [5]

:[1]
pushglb.v global.chasing
conv.v.b
bt [5]

:[2]
pushref.i 31
call.i instance_exists(argc=1)
conv.v.b
bt [5]

:[3]
push.v builtin.canSpawn
conv.v.b
not.b
bt [5]

:[4]
pushglb.v global.safe
conv.v.b
b [6]

:[5]
push.e 1

:[6]
bf [8]

:[7]
exit.i

:[8]
pushref.i 98
call.i distance_to_object(argc=1)
pop.v.v local.dist
pushloc.v local.dist
pushi.e 30
cmp.i.v GT
bf [13]

:[9]
pushref.i 98
pushi.e -9
push.v [stacktop]self.state
pushi.e 0
cmp.i.v EQ
bf [13]

:[10]
pushglb.v global.gamePaused
conv.v.b
not.b
bf [13]

:[11]
pushglb.v global.isHiding
conv.v.b
not.b
bf [13]

:[12]
pushglb.v global.safe
conv.v.b
not.b
b [14]

:[13]
push.e 0

:[14]
bf [end]

:[15]
pushi.e 36
conv.i.v
pushi.e 1
conv.i.v
call.i irandom_range(argc=2)
pop.v.v local.spawnnumber
pushloc.v local.spawnnumber
call.i show_debug_message(argc=1)
popz.v
pushloc.v local.spawnnumber
pushi.e 4
cmp.i.v EQ
bt [17]

:[16]
pushloc.v local.spawnnumber
pushi.e 24
cmp.i.v EQ
b [18]

:[17]
push.e 1

:[18]
bf [end]

:[19]
pushi.e 1
pop.v.b global.chasing
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushref.i 33554463
call.i audio_play_sound(argc=4)
popz.v
push.v builtin.directionspawn
dup.v 0
push.s "LEFT"@990
cmp.s.v EQ
bt [24]

:[20]
dup.v 0
push.s "RIGHT"@995
cmp.s.v EQ
bt [25]

:[21]
dup.v 0
push.s "UP"@994
cmp.s.v EQ
bt [26]

:[22]
dup.v 0
push.s "DOWN"@1004
cmp.s.v EQ
bt [27]

:[23]
b [28]

:[24]
pushref.i 31
push.s "Instances"@50
conv.s.v
push.v builtin.y
pushi.e 29
add.i.v
push.v builtin.x
pushi.e 32
sub.i.v
call.i instance_create_layer(argc=4)
popz.v
b [28]

:[25]
pushref.i 31
push.s "Instances"@50
conv.s.v
push.v builtin.y
pushi.e 29
add.i.v
push.v builtin.x
pushi.e 32
add.i.v
call.i instance_create_layer(argc=4)
popz.v
b [28]

:[26]
pushref.i 31
push.s "Instances"@50
conv.s.v
push.v builtin.y
pushi.e 18
sub.i.v
push.v builtin.x
pushi.e 16
add.i.v
call.i instance_create_layer(argc=4)
popz.v
b [28]

:[27]
pushref.i 31
push.s "Instances"@50
conv.s.v
push.v builtin.y
pushi.e 18
add.i.v
push.v builtin.x
pushi.e 16
add.i.v
call.i instance_create_layer(argc=4)
popz.v
b [28]

:[28]
popz.v

:[end]