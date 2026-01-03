:[0]
push.v builtin.turn
conv.v.b
bf [2]

:[1]
pushglb.v global.gamePaused
conv.v.b
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushref.i 33554522
call.i audio_pause_sound(argc=1)
popz.v
b [10]

:[5]
pushref.i 33554522
call.i audio_is_paused(argc=1)
conv.v.b
bf [7]

:[6]
pushglb.v global.gamePaused
conv.v.b
not.b
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushref.i 33554522
call.i audio_resume_sound(argc=1)
popz.v

:[10]
pushref.i 11
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [12]

:[11]
exit.i

:[12]
pushglb.v global.canWatch
pushi.e 1
cmp.b.v EQ
bf [end]

:[13]
pushi.e 1
pop.v.b builtin.turn
pushref.i 16777388
pop.v.v builtin.sprite_index
pushi.e 1
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554522
call.i audio_play_sound(argc=3)
popz.v
pushi.e -999
pushref.i 26
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 0
pop.v.b global.canWatch
b [15]

> gml_Script_anon@377@gml_Object_oTV_Step_0 (locals=0, argc=0)
:[14]
push.s "Maybe it's better if you just go to sleep."@1567
conv.s.v
push.s "Staring at static isn't that entertaining."@1568
conv.s.v
call.i gml_Script_OpenTextBox(argc=2)
popz.v
pushi.e 1
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
pushi.e 1
pop.v.i builtin.state
push.i 42991610
setowner.e
pushref.i 135
pushref.i 98
call.i @@NewGMLArray@@(argc=2)
push.v builtin.myCallback
call.i @@NewGMLArray@@(argc=2)
pushref.i 127
pushi.e -9
pop.v.v [stacktop]self.callback
exit.i

:[15]
push.i [function]gml_Script_anon@377@gml_Object_oTV_Step_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 3000
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v

:[end]