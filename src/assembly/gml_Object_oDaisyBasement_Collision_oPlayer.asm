:[0]
pushref.i 50331681
call.i room_goto(argc=1)
popz.v
pushi.e 1
pop.v.b global.deathSound
call.i gml_Script_scrCloseInventory(argc=0)
popz.v

:[end]