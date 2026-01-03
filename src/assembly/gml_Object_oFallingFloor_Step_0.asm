:[0]
pushref.i 98
push.v builtin.y
push.v builtin.x
call.i place_meeting(argc=3)
conv.v.b
bf [3]

:[1]
pushglb.v global.lightsOut
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v builtin.deb
pushi.e 0
cmp.b.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 1
pop.v.b builtin.deb
pushi.e 1
pop.v.i builtin.image_index
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554451
call.i audio_play_sound(argc=3)
popz.v

:[6]
pushref.i 98
push.v builtin.y
push.v builtin.x
call.i place_meeting(argc=3)
conv.v.b
bf [9]

:[7]
pushglb.v global.lightsOut
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
push.v builtin.deb2
pushi.e 0
cmp.b.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushi.e 1
pop.v.b builtin.deb2
pushi.e 2
pop.v.i builtin.image_index
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554452
call.i audio_play_sound(argc=3)
popz.v

:[12]
pushref.i 98
push.v builtin.y
push.v builtin.x
call.i place_meeting(argc=3)
conv.v.b
bf [15]

:[13]
pushglb.v global.lightsOut
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
pushref.i 32
pushi.e -9
push.v [stacktop]self.canRun
pushi.e 1
cmp.b.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [22]

:[17]
pushref.i 32
call.i instance_destroy(argc=1)
popz.v
pushi.e 5
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
pushi.e 1
pop.v.b builtin.canDraw
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554453
call.i audio_play_sound(argc=3)
popz.v
b [21]

> gml_Script_anon@565@gml_Object_oFallingFloor_Step_0 (locals=0, argc=0)
:[18]
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554465
call.i audio_play_sound(argc=3)
popz.v
b [20]

> gml_Script_anon@649@anon@565@gml_Object_oFallingFloor_Step_0 (locals=0, argc=0)
:[19]
pushi.e 1
pop.v.b builtin.played
exit.i

:[20]
push.i [function]gml_Script_anon@649@anon@565@gml_Object_oFallingFloor_Step_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 2000
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v
exit.i

:[21]
push.i [function]gml_Script_anon@565@gml_Object_oFallingFloor_Step_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 2000
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v

:[22]
push.v builtin.played
pushi.e 1
cmp.b.v EQ
bf [end]

:[23]
pushi.e 0
pop.v.b builtin.played
pushref.i 98
call.i instance_destroy(argc=1)
popz.v
pushref.i 132
push.i -999999999
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=4)
popz.v
pushref.i 50331668
pushref.i 132
pushi.e -9
pop.v.v [stacktop]self.targetRoom
push.s "candle"@957
conv.s.v
pushi.e 6
conv.i.v
call.i gml_Script_removeItem(argc=2)
popz.v
push.s "healpizza"@1075
conv.s.v
pushi.e 5
conv.i.v
call.i gml_Script_removeItem(argc=2)
popz.v

:[end]