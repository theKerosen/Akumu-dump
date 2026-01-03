:[0]
push.v builtin.canKill
conv.v.b
not.b
bf [2]

:[1]
exit.i

:[2]
pushref.i 50331681
call.i room_goto(argc=1)
popz.v
call.i audio_stop_all(argc=0)
popz.v
pushi.e 1
pop.v.b global.deathSound
call.i gml_Script_scrCloseInventory(argc=0)
popz.v

:[end]