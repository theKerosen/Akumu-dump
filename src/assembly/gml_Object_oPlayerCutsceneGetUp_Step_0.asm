:[0]
push.v builtin.canGetUp
conv.v.b
bf [end]

:[1]
pushi.e 0
pop.v.b builtin.canGetUp
b [3]

> gml_Script_anon@50@gml_Object_oPlayerCutsceneGetUp_Step_0 (locals=0, argc=0)
:[2]
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554477
call.i audio_play_sound(argc=3)
popz.v
push.v builtin.x
pushref.i 98
pushi.e -9
pop.v.v [stacktop]self.x
pushi.e 0
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
push.v builtin.y
pushref.i 98
pushi.e -9
pop.v.v [stacktop]self.y
call.i instance_destroy(argc=0)
popz.v
exit.i

:[3]
push.i [function]gml_Script_anon@50@gml_Object_oPlayerCutsceneGetUp_Step_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 1000
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v

:[end]