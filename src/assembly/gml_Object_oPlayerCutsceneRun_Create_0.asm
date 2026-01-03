:[0]
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554456
call.i audio_play_sound(argc=3)
popz.v
b [2]

> gml_Script_anon@52@gml_Object_oPlayerCutsceneRun_Create_0 (locals=0, argc=0)
:[1]
pushref.i 50331679
call.i room_goto(argc=1)
popz.v
pushref.i 33554456
call.i audio_stop_sound(argc=1)
popz.v
pushref.i 33554508
call.i audio_stop_sound(argc=1)
popz.v
exit.i

:[2]
push.i [function]gml_Script_anon@52@gml_Object_oPlayerCutsceneRun_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 4000
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v

:[end]