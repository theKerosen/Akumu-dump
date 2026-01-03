:[0]
pushi.e 0
pop.v.i builtin.image_speed
pushi.e 26
pop.v.i builtin.image_index
b [2]

> gml_Script_anon@49@gml_Object_oPlayerHanged_Other_7 (locals=0, argc=0)
:[1]
pushref.i 50331681
call.i room_goto(argc=1)
popz.v
pushref.i 33554480
call.i audio_stop_sound(argc=1)
popz.v
pushref.i 69
call.i instance_destroy(argc=1)
popz.v
exit.i

:[2]
push.i [function]gml_Script_anon@49@gml_Object_oPlayerHanged_Other_7
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 1000
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v

:[end]