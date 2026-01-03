; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushbltn.v builtin.room
pushref.i 50331678
cmp.v.v EQ
bf [19]

:[1]
push.v builtin.havingDialogue
call.i show_debug_message(argc=1)
popz.v
pushref.i 98
pushi.e -9
push.v [stacktop]self.state
pushi.e 5
cmp.i.v EQ
bf [4]

:[2]
push.v builtin.havingDialogue
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v builtin.state
pushi.e 5
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [9]

:[6]
pushi.e 0
pop.v.i builtin.state
b [8]

> gml_Script_anon@185@gml_Object_oFinalDemoMonologue_Step_0 (locals=0, argc=0)
:[7]
push.s "I still do."@1222
conv.s.v
push.s "Yet, somehow,"@1223
conv.s.v
push.s "It's foolish of me to expect a different answer."@1224
conv.s.v
call.i gml_Script_OpenTextBox(argc=3)
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
push.v builtin.havingDialogue
push.e 1
add.i.v
pop.v.v builtin.havingDialogue
push.i 38535162
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

:[8]
push.i [function]gml_Script_anon@185@gml_Object_oFinalDemoMonologue_Step_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 2000
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v

:[9]
pushref.i 98
pushi.e -9
push.v [stacktop]self.state
pushi.e 5
cmp.i.v EQ
bf [12]

:[10]
push.v builtin.havingDialogue
pushi.e 2
cmp.i.v EQ
bf [12]

:[11]
push.v builtin.state
pushi.e 5
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [19]

:[14]
pushi.e 0
pop.v.i builtin.state
b [18]

> gml_Script_anon@663@gml_Object_oFinalDemoMonologue_Step_0 (locals=0, argc=0)
:[15]
push.v builtin.havingDialogue
push.e 1
add.i.v
pop.v.v builtin.havingDialogue
push.s "What are you talking about?"@1226
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
b [17]

> gml_Script_anon@823@anon@663@gml_Object_oFinalDemoMonologue_Step_0 (locals=0, argc=0)
:[16]
pushi.e -4
pushref.i 127
pushi.e -9
pop.v.i [stacktop]self.pages
push.s ""@36
pushref.i 127
pushi.e -9
pop.v.s [stacktop]self.textOnDisplay
push.s "We could have been happy."@1227
conv.s.v
push.s "It hurts, you know?"@1228
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
push.i 38797306
setowner.e
call.i @@This@@(argc=0)
pushref.i 98
call.i @@NewGMLArray@@(argc=2)
push.v builtin.myCallback
call.i @@NewGMLArray@@(argc=2)
pushref.i 127
pushi.e -9
pop.v.v [stacktop]self.callback
exit.i

:[17]
push.i [function]gml_Script_anon@823@anon@663@gml_Object_oFinalDemoMonologue_Step_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 2000
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v
exit.i

:[18]
push.i [function]gml_Script_anon@663@gml_Object_oFinalDemoMonologue_Step_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 200
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v

:[19]
pushbltn.v builtin.room
pushref.i 50331679
cmp.v.v EQ
bf [end]

:[20]
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
bf [end]

:[21]
pushref.i 98
pushi.e -9
push.v [stacktop]self.state
pushi.e 5
cmp.i.v EQ
bf [23]

:[22]
push.v builtin.state
pushi.e 5
cmp.i.v EQ
b [24]

:[23]
push.e 0

:[24]
bf [end]

:[25]
pushi.e 0
pop.v.i builtin.state
b [27]

> gml_Script_anon@1425@gml_Object_oFinalDemoMonologue_Step_0 (locals=0, argc=0)
:[26]
push.s "It’s the only thing you can do anyway."@1231
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
push.i 38928378
setowner.e
pushi.e -4
conv.i.v
pushref.i 98
call.i @@NewGMLArray@@(argc=2)
push.v builtin.myCallback2
call.i @@NewGMLArray@@(argc=2)
pushref.i 127
pushi.e -9
pop.v.v [stacktop]self.callback
exit.i

:[27]
push.i [function]gml_Script_anon@1425@gml_Object_oFinalDemoMonologue_Step_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 1000
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v

:[end]