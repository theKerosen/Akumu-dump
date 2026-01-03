; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v builtin.canPlay
pushi.e 1
cmp.b.v EQ
bf [5]

:[1]
pushref.i 33554491
call.i audio_is_playing(argc=1)
conv.v.b
not.b
bf [5]

:[2]
push.v builtin.speed
pushi.e 0
cmp.i.v NEQ
bf [4]

:[3]
exit.i

:[4]
pushi.e 6
pushref.i 127
pushi.e -9
pop.v.i [stacktop]self.textSide
push.s "It won't open."@1480
conv.s.v
call.i gml_Script_OpenTextBox(argc=1)
popz.v
pushi.e 1
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
pushi.e 1
pop.v.i builtin.state
push.i 131066
setowner.e
pushref.i 41
pushref.i 98
call.i @@NewGMLArray@@(argc=2)
pushref.i gml_Script_scrFinishCharacterReading
call.i @@NewGMLArray@@(argc=2)
pushref.i 127
pushi.e -9
pop.v.v [stacktop]self.callback
pushi.e 0
pop.v.b builtin.canPlay
pushi.e 1
pop.v.b builtin.cutscene

:[5]
pushref.i 33554479
call.i audio_is_playing(argc=1)
conv.v.b
not.b
bf [7]

:[6]
push.v builtin.canHang
conv.v.b
b [8]

:[7]
push.e 0

:[8]
bf [12]

:[9]
pushi.e 0
pop.v.b builtin.canHang
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554480
call.i audio_play_sound(argc=3)
popz.v
b [11]

> gml_Script_anon@455@gml_Object_oRitualDeath_Step_0 (locals=0, argc=0)
:[10]
pushi.e 0
pop.v.b builtin.canDraw
pushref.i 102
push.s "Instances"@50
conv.s.v
push.v builtin.storeY
push.v builtin.storeX
call.i instance_create_layer(argc=4)
popz.v
exit.i

:[11]
push.i [function]gml_Script_anon@455@gml_Object_oRitualDeath_Step_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 2000
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v

:[12]
pushref.i 98
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [14]

:[13]
exit.i

:[14]
pushref.i 98
pushi.e -9
push.v [stacktop]self.state
pushi.e 0
cmp.i.v EQ
bf [16]

:[15]
push.v builtin.cutscene
conv.v.b
b [17]

:[16]
push.e 0

:[17]
bf [22]

:[18]
pushref.i 98
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [20]

:[19]
exit.i

:[20]
pushref.i 64
call.i instance_exists(argc=1)
conv.v.b
bf [22]

:[21]
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554445
call.i audio_play_sound(argc=3)
popz.v
pushref.i 64
call.i instance_destroy(argc=1)
popz.v
pushi.e 0
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state

:[22]
push.v builtin.cutscene
conv.v.b
bf [24]

:[23]
pushref.i 98
call.i instance_exists(argc=1)
conv.v.b
b [25]

:[24]
push.e 0

:[25]
bf [end]

:[26]
pushref.i 98
pushi.e -9
push.v [stacktop]self.y
pushref.i 98
pushi.e -9
push.v [stacktop]self.x
push.v builtin.y
push.v builtin.x
call.i point_distance(argc=4)
pop.v.v local.dist
pushloc.v local.dist
pushi.e 70
cmp.i.v GT
bf [end]

:[27]
b [31]

> gml_Script_anon@1504@gml_Object_oRitualDeath_Step_0 (locals=0, argc=0)
:[28]
pushi.e 7
pushref.i 127
pushi.e -9
pop.v.i [stacktop]self.textSide
pushi.e 1
pushref.i 127
pushi.e -9
pop.v.b [stacktop]self.hasAudio
push.s "What is happening?"@1482
conv.s.v
call.i gml_Script_OpenTextBox(argc=1)
popz.v
b [30]

> gml_Script_anon@1639@anon@1504@gml_Object_oRitualDeath_Step_0 (locals=0, argc=0)
:[29]
pushi.e -4
pushref.i 127
pushi.e -9
pop.v.i [stacktop]self.pages
push.s ""@36
pushref.i 127
pushi.e -9
pop.v.s [stacktop]self.textOnDisplay
pushi.e 1
pop.v.b builtin.canHang
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554479
call.i audio_play_sound(argc=3)
popz.v
exit.i

:[30]
push.i [function]gml_Script_anon@1639@anon@1504@gml_Object_oRitualDeath_Step_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 1000
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v
exit.i

:[31]
push.i [function]gml_Script_anon@1504@gml_Object_oRitualDeath_Step_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 1000
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v
pushref.i 98
pushi.e -9
push.v [stacktop]self.x
pop.v.v builtin.storeX
pushref.i 98
pushi.e -9
push.v [stacktop]self.y
pop.v.v builtin.storeY
pushi.e 0
pop.v.b builtin.cutscene
pushi.e 1
pop.v.b builtin.canDraw
pushref.i 98
call.i instance_destroy(argc=1)
popz.v

:[end]