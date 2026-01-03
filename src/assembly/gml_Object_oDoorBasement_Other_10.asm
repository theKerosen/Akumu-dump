; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushi.e 1
pop.v.b builtin.canDraw
pushi.e 1
pop.v.b builtin.hasDialogue
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushref.i 33554462
call.i audio_play_sound(argc=4)
popz.v
pushi.e 5
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
push.s ""@36
pushref.i 98
pushi.e -9
pop.v.s [stacktop]self.itemequip
push.s "candle"@957
conv.s.v
pushi.e 6
conv.i.v
call.i gml_Script_removeItem(argc=2)
popz.v
push.s "screw"@1012
conv.s.v
pushi.e 10
conv.i.v
call.i gml_Script_removeItem(argc=2)
popz.v
push.s "paper"@767
conv.s.v
pushi.e 7
conv.i.v
call.i gml_Script_removeItem(argc=2)
popz.v
push.s "fakebook"@1017
conv.s.v
pushi.e 9
conv.i.v
call.i gml_Script_removeItem(argc=2)
popz.v
push.s "library"@1002
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_removeItem(argc=2)
popz.v
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
bf [4]

:[1]
b [3]

> gml_Script_anon@455@gml_Object_oDoorBasement_Other_10 (locals=0, argc=0)
:[2]
push.s "Look who's here, once again."@1197
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
push.i 37355514
setowner.e
pushref.i 39
pushref.i 98
call.i @@NewGMLArray@@(argc=2)
push.v builtin.myCallback
call.i @@NewGMLArray@@(argc=2)
pushref.i 127
pushi.e -9
pop.v.v [stacktop]self.callback
exit.i

:[3]
push.i [function]gml_Script_anon@455@gml_Object_oDoorBasement_Other_10
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 4000
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v
b [end]

:[4]
b [6]

> gml_Script_anon@743@gml_Object_oDoorBasement_Other_10 (locals=0, argc=0)
:[5]
pushref.i 50331679
call.i room_goto(argc=1)
popz.v
pushi.e -32
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e -32
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.y
pushi.e 3
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.face
pushi.e 5
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
exit.i

:[6]
push.i [function]gml_Script_anon@743@gml_Object_oDoorBasement_Other_10
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 2000
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v

:[end]