; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
call.i ds_list_create(argc=0)
pop.v.v local._list
pushi.e 0
conv.b.v
pushloc.v local._list
push.v builtin.parEnemy
push.v builtin.y
push.v builtin.x
call.i instance_place_list(argc=5)
pop.v.v local._qtd
pushi.e 0
pop.v.i local.i

:[1]
pushloc.v local.i
pushloc.v local._list
call.i ds_list_size(argc=1)
cmp.v.v LT
bf [8]

:[2]
pushloc.v local.i
pushloc.v local._list
call.i ds_list_find_value(argc=2)
pop.v.v local._current
pushloc.v local._current
push.v builtin.enemy_list
call.i array_contains(argc=2)
pop.v.v local._exists
pushloc.v local._exists
conv.v.b
not.b
bf [7]

:[3]
pushloc.v local._current
push.v builtin.enemy_list
call.i array_push(argc=2)
popz.v
pushloc.v local._current
pushi.e -9
pushenv [6]

:[4]
push.v builtin.dead
conv.v.b
not.b
bf [6]

:[5]
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554433
call.i audio_play_sound(argc=3)
popz.v
push.v other.dmgpoise
pushbltn.v builtin.undefined
call.i @@This@@(argc=0)
push.v builtin.damage_handler
callv.v 2
popz.v

:[6]
popenv [4]

:[7]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [1]

:[8]
pushloc.v local._list
call.i ds_list_destroy(argc=1)
popz.v

:[end]