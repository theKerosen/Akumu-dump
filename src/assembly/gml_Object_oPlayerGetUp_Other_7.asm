:[0]
pushi.e 0
pop.v.i builtin.image_speed
pushi.e 2
pop.v.i builtin.image_index
b [2]

> gml_Script_anon@49@gml_Object_oPlayerGetUp_Other_7 (locals=1, argc=0)
:[1]
pushi.e 1
pop.v.b global.safe
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554477
call.i audio_play_sound(argc=3)
popz.v
pushref.i 98
push.s "Instances"@50
conv.s.v
push.v builtin.y
pushi.e 2
add.i.v
push.v builtin.x
call.i instance_create_layer(argc=4)
pop.v.v local.player
pushi.e 1
pushloc.v local.player
pushi.e -9
pop.v.i [stacktop]self.face
pushref.i 16777324
pushloc.v local.player
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushi.e 0
conv.i.v
call.i gml_Script_scrSaveGame(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v
exit.i

:[2]
push.i [function]gml_Script_anon@49@gml_Object_oPlayerGetUp_Other_7
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 2500
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v

:[end]