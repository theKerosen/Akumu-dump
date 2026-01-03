:[0]
pushi.e 5
pop.v.i builtin.state
pushi.e 0
pop.v.i builtin.havingDialogue
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushref.i 33554508
call.i gml_Script_set_song_ingame(argc=3)
popz.v
push.d 1.3
conv.d.v
pushi.e 1
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554514
call.i audio_play_sound(argc=4)
popz.v
push.d 0.8
conv.d.v
pushi.e 1
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554442
call.i audio_play_sound(argc=4)
popz.v
b [2]

> gml_Script_anon@175@gml_Object_o31013Diag_Create_0 (locals=0, argc=0)
:[1]
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554523
call.i audio_play_sound(argc=3)
popz.v
exit.i

:[2]
push.i [function]gml_Script_anon@175@gml_Object_o31013Diag_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 2000
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v
b [4]

> gml_Script_anon@247@gml_Object_o31013Diag_Create_0 (locals=0, argc=0)
:[3]
push.v builtin.havingDialogue
push.e 1
add.i.v
pop.v.v builtin.havingDialogue
push.s "I'm sorry,"@1097
conv.s.v
call.i gml_Script_OpenTextBox(argc=1)
popz.v
pushi.e 1
pushref.i 127
pushi.e -9
pop.v.b [stacktop]self.hasAudio
push.s ""@36
pushref.i 127
pushi.e -9
pop.v.s [stacktop]self.Speaker
pushi.e 1
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
pushi.e 1
pop.v.i builtin.state
push.i 35389434
setowner.e
call.i @@This@@(argc=0)
pushref.i 98
call.i @@NewGMLArray@@(argc=2)
pushref.i gml_Script_scrFinishCharacterReading_STOP
call.i @@NewGMLArray@@(argc=2)
pushref.i 127
pushi.e -9
pop.v.v [stacktop]self.callback
exit.i

:[4]
push.i [function]gml_Script_anon@247@gml_Object_o31013Diag_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 5000
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v
b [10]

> gml_Script_anon@535@gml_Object_o31013Diag_Create_0 (locals=0, argc=2)
:[5]
pushi.e 5
push.v arg.argument0
pushi.e -9
pop.v.i [stacktop]self.state
b [9]

> gml_Script_anon@603@anon@535@gml_Object_o31013Diag_Create_0 (locals=0, argc=0)
:[6]
pushref.i 33554514
call.i audio_stop_sound(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554520
call.i audio_play_sound(argc=3)
popz.v
b [8]

> gml_Script_anon@715@anon@603@anon@535@gml_Object_o31013Diag_Create_0 (locals=0, argc=0)
:[7]
call.i game_restart(argc=0)
popz.v
exit.i

:[8]
push.i [function]gml_Script_anon@715@anon@603@anon@535@gml_Object_o31013Diag_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 10000
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v
exit.i

:[9]
push.i [function]gml_Script_anon@603@anon@535@gml_Object_o31013Diag_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 3000
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v
exit.i

:[10]
push.i [function]gml_Script_anon@535@gml_Object_o31013Diag_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.myCallback

:[end]