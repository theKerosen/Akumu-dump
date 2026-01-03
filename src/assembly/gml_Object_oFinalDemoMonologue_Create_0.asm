; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushi.e 5
pop.v.i builtin.state
pushi.e 0
pop.v.i builtin.havingDialogue
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushref.i 33554455
call.i gml_Script_set_song_ingame(argc=3)
popz.v
pushbltn.v builtin.room
pushref.i 50331678
cmp.v.v EQ
bf [6]

:[1]
b [3]

> gml_Script_anon@125@gml_Object_oFinalDemoMonologue_Create_0 (locals=0, argc=0)
:[2]
push.v builtin.havingDialogue
push.e 1
add.i.v
pop.v.v builtin.havingDialogue
push.s "You just never seem to give up, do you?"@1210
conv.s.v
push.s "Lily, you actually plan on doing it again?"@1211
conv.s.v
call.i gml_Script_OpenTextBox(argc=2)
popz.v
pushi.e 1
pushref.i 127
pushi.e -9
pop.v.b [stacktop]self.hasAudio
push.s "Dad"@1039
pushref.i 127
pushi.e -9
pop.v.s [stacktop]self.Speaker
pushi.e 1
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
pushi.e 1
pop.v.i builtin.state
push.i 37879802
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

:[3]
push.i [function]gml_Script_anon@125@gml_Object_oFinalDemoMonologue_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 1000
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v
b [5]

> gml_Script_anon@491@gml_Object_oFinalDemoMonologue_Create_0 (locals=0, argc=2)
:[4]
pushref.i 50331677
call.i room_goto(argc=1)
popz.v
pushi.e 5
push.v arg.argument0
pushi.e -9
pop.v.i [stacktop]self.state
exit.i

:[5]
push.i [function]gml_Script_anon@491@gml_Object_oFinalDemoMonologue_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.myCallback

:[6]
pushbltn.v builtin.room
pushref.i 50331679
cmp.v.v EQ
bf [end]

:[7]
b [9]

> gml_Script_anon@623@gml_Object_oFinalDemoMonologue_Create_0 (locals=2, argc=2)
:[8]
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554432
call.i audio_play_sound(argc=3)
popz.v
pushi.e 5
push.v arg.argument0
pushi.e -9
pop.v.i [stacktop]self.state
pushi.e 5
push.v arg.argument1
pushi.e -9
pop.v.i [stacktop]self.state
pushref.i 99
push.s "Instances"@50
conv.s.v
pushi.e 100
conv.i.v
pushi.e 129
conv.i.v
call.i instance_create_layer(argc=4)
pop.v.v local.p
pushref.i 63
push.s "Instances"@50
conv.s.v
pushloc.v local.p
pushi.e -9
push.v [stacktop]self.y
pushi.e 30
add.i.v
pushi.e 124
conv.i.v
call.i instance_create_layer(argc=4)
pop.v.v local.k
pushi.e 2
pushloc.v local.k
pushi.e -9
pop.v.i [stacktop]self.itemId
push.s "knife"@1215
pushloc.v local.k
pushi.e -9
pop.v.s [stacktop]self.itemTag
pushi.e 1
pushloc.v local.k
pushi.e -9
pop.v.i [stacktop]self.quantity
exit.i

:[9]
push.i [function]gml_Script_anon@623@gml_Object_oFinalDemoMonologue_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.myCallback
b [13]

> gml_Script_anon@988@gml_Object_oFinalDemoMonologue_Create_0 (locals=0, argc=2)
:[10]
pushi.e 5
push.v arg.argument0
pushi.e -9
pop.v.i [stacktop]self.state
pushref.i 99
pushi.e -9
pushenv [12]

:[11]
pushi.e 1
pop.v.b builtin.canGetUp

:[12]
popenv [11]
exit.i

:[13]
push.i [function]gml_Script_anon@988@gml_Object_oFinalDemoMonologue_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.myCallback2
push.s "witchbook"@1196
conv.s.v
pushi.e 8
conv.i.v
call.i gml_Script_getItem(argc=2)
pop.v.v local.item
pushloc.v local.item
pushref.i 53
pushi.e -9
push.v [stacktop]self.inventory
call.i ds_list_find_index(argc=2)
pushi.e -1
cmp.i.v NEQ
bf [15]

:[14]
push.s "Go ahead, you know what you have to do."@1220
conv.s.v
call.i gml_Script_OpenTextBox(argc=1)
popz.v
pushi.e 1
pushref.i 127
pushi.e -9
pop.v.b [stacktop]self.hasAudio
push.s "Dad"@1039
pushref.i 127
pushi.e -9
pop.v.s [stacktop]self.Speaker
pushi.e 1
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
pushi.e 1
pop.v.i builtin.state
push.i 131066
setowner.e
call.i @@This@@(argc=0)
pushref.i 98
call.i @@NewGMLArray@@(argc=2)
push.v builtin.myCallback
call.i @@NewGMLArray@@(argc=2)
pushref.i 127
pushi.e -9
pop.v.v [stacktop]self.callback
b [end]

:[15]
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554432
call.i audio_play_sound(argc=3)
popz.v
pushi.e 5
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
pushi.e 5
pop.v.i builtin.state
pushref.i 99
push.s "Instances"@50
conv.s.v
pushi.e 100
conv.i.v
pushi.e 129
conv.i.v
call.i instance_create_layer(argc=4)
pop.v.v local.p
pushref.i 63
push.s "Instances"@50
conv.s.v
pushloc.v local.p
pushi.e -9
push.v [stacktop]self.y
pushi.e 30
add.i.v
pushi.e 124
conv.i.v
call.i instance_create_layer(argc=4)
pop.v.v local.k
pushi.e 2
pushloc.v local.k
pushi.e -9
pop.v.i [stacktop]self.itemId
push.s "knife"@1215
pushloc.v local.k
pushi.e -9
pop.v.s [stacktop]self.itemTag
pushi.e 1
pushloc.v local.k
pushi.e -9
pop.v.i [stacktop]self.quantity
b [19]

> gml_Script_anon@1793@gml_Object_oFinalDemoMonologue_Create_0 (locals=0, argc=0)
:[16]
pushref.i 99
pushi.e -9
pushenv [18]

:[17]
pushi.e 1
pop.v.b builtin.canGetUp

:[18]
popenv [17]
exit.i

:[19]
push.i [function]gml_Script_anon@1793@gml_Object_oFinalDemoMonologue_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 1500
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v

:[end]