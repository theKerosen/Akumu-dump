:[0]
push.v builtin.x
pop.v.v builtin.previous_x
push.v builtin.y
pop.v.v builtin.previous_y
call.i path_add(argc=0)
pop.v.v builtin.path
pushi.e 0
pop.v.i builtin.canAppear
pushi.e 0
pop.v.b builtin.deb
pushi.e 0
pop.v.b builtin.deb2
pushi.e 0
pop.v.b builtin.canRun
pushi.e 0
pop.v.b builtin.play
pushi.e 0
pop.v.i builtin.deb3
pushbltn.v builtin.room
pop.v.v builtin.my_room
pushi.e 0
pop.v.b builtin.canKill
pushbltn.v builtin.room
pop.v.v global.monster_room
push.d 0.1
pop.v.d builtin.image_speed
b [2]

> gml_Script_anon@234@gml_Object_oDaisy_Create_0 (locals=0, argc=0)
:[1]
pushi.e 1
pop.v.b builtin.canRun
exit.i

:[2]
push.i [function]gml_Script_anon@234@gml_Object_oDaisy_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 600
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v
b [4]

> gml_Script_anon@281@gml_Object_oDaisy_Create_0 (locals=0, argc=0)
:[3]
pushi.e 1
pop.v.b builtin.canKill
exit.i

:[4]
push.i [function]gml_Script_anon@281@gml_Object_oDaisy_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 100
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v

:[end]