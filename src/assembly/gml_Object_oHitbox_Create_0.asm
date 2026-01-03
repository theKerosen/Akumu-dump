:[0]
push.i 65536
setowner.e
pushi.e 0
conv.i.v
call.i array_create(argc=1)
pop.v.v builtin.enemy_list
pushi.e 0
pop.v.i builtin.dmgpoise

:[end]