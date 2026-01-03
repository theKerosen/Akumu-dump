; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushglb.v global.chasing
conv.v.b
bf [2]

:[1]
pushglb.v global.lastMonsterRoom
pushbltn.v builtin.room
cmp.v.v NEQ
b [3]

:[2]
push.e 0

:[3]
bf [24]

:[4]
pushref.i 98
call.i distance_to_object(argc=1)
pop.v.v builtin.distroom
b [23]

> gml_Script_anon@111@gml_Object_oSpawner_Other_4 (locals=2, argc=0)
:[5]
pushref.i 98
call.i instance_exists(argc=1)
conv.v.b
not.b
bt [8]

:[6]
pushref.i 31
call.i instance_exists(argc=1)
conv.v.b
bt [8]

:[7]
pushref.i 139
call.i instance_exists(argc=1)
conv.v.b
b [9]

:[8]
push.e 1

:[9]
bf [11]

:[10]
exit.i

:[11]
pushref.i 98
call.i distance_to_object(argc=1)
pop.v.v local.dist
push.v builtin.distroom
pushi.e 30
cmp.i.v LT
bf [22]

:[12]
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushref.i 33554463
call.i audio_play_sound(argc=4)
popz.v
pushi.e 0
pop.v.b global.shouldStayonRoom
push.v builtin.directionspawn
dup.v 0
push.s "LEFT"@990
cmp.s.v EQ
bt [17]

:[13]
dup.v 0
push.s "RIGHT"@995
cmp.s.v EQ
bt [18]

:[14]
dup.v 0
push.s "UP"@994
cmp.s.v EQ
bt [19]

:[15]
dup.v 0
push.s "DOWN"@1004
cmp.s.v EQ
bt [20]

:[16]
b [21]

:[17]
pushref.i 31
push.s "Instances"@50
conv.s.v
push.v builtin.y
pushi.e 28
add.i.v
push.v builtin.x
pushi.e 32
sub.i.v
call.i instance_create_layer(argc=4)
pop.v.v local.d
b [21]

:[18]
pushref.i 31
push.s "Instances"@50
conv.s.v
push.v builtin.y
pushi.e 28
add.i.v
push.v builtin.x
pushi.e 32
add.i.v
call.i instance_create_layer(argc=4)
pop.v.v local.d
b [21]

:[19]
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
pop.v.v local.d
b [21]

:[20]
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
pop.v.v local.d
b [21]

:[21]
popz.v

:[22]
exit.i

:[23]
push.i [function]gml_Script_anon@111@gml_Object_oSpawner_Other_4
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 1000
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v
b [end]

:[24]
pushglb.v global.chasing
conv.v.b
bf [27]

:[25]
pushglb.v global.shouldStayonRoom
conv.v.b
bf [27]

:[26]
pushglb.v global.lastMonsterRoom
pushbltn.v builtin.room
cmp.v.v EQ
b [28]

:[27]
push.e 0

:[28]
bf [end]

:[29]
pushref.i 31
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [end]

:[30]
pushref.i 31
push.s "Instances"@50
conv.s.v
pushglb.v global.monsterY
pushglb.v global.monsterX
call.i instance_create_layer(argc=4)
pop.v.v local.d

:[end]