:[0]
pushref.i 98
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 1
pop.v.b builtin.layed
b [4]

> gml_Script_anon@82@gml_Object_oPlayerGetUp_Create_0 (locals=0, argc=0)
:[3]
pushi.e 0
pop.v.b builtin.layed
exit.i

:[4]
push.i [function]gml_Script_anon@82@gml_Object_oPlayerGetUp_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 4000
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v

:[end]