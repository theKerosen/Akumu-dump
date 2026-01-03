:[0]
b [20]

> gml_Script_scrUseScrew (locals=5, argc=0)
:[1]
call.i gml_Script_GetFacingObject(argc=0)
pop.v.v local.door
pushref.i 53
pushi.e -9
push.v [stacktop]self.inventory
call.i ds_list_size(argc=1)
pop.v.v local.inventorySize
pushref.i 57
pushi.e -9
push.v [stacktop]self.cursor
pop.v.v local.cursorIndex
pushloc.v local.cursorIndex
pushref.i 53
pushi.e -9
push.v [stacktop]self.inventory
call.i ds_list_find_value(argc=2)
pop.v.v local.item
pushi.e 3
conv.i.v
pushloc.v local.item
call.i array_get(argc=2)
pop.v.v local.itemTag
pushloc.v local.door
pushi.e -4
cmp.i.v NEQ
bf [3]

:[2]
push.s "screwopen"@901
conv.s.v
pushloc.v local.door
call.i variable_instance_exists(argc=2)
conv.v.b
b [4]

:[3]
push.e 0

:[4]
bf [18]

:[5]
pushi.e 1
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
push.i 33030138
setowner.e
pushi.e -4
conv.i.v
pushref.i 98
call.i @@NewGMLArray@@(argc=2)
pushref.i gml_Script_scrFinishCharacterReading_STOP
call.i @@NewGMLArray@@(argc=2)
pushref.i 127
pushi.e -9
pop.v.v [stacktop]self.callback
pushloc.v local.door
pushi.e -9
push.v [stacktop]self.screwlock
pushi.e 10
cmp.i.v EQ
bf [7]

:[6]
pushloc.v local.door
pushi.e -9
push.v [stacktop]self.panelTag
pushloc.v local.itemTag
cmp.v.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [12]

:[9]
pushi.e -4
pushloc.v local.door
pushi.e -9
pop.v.i [stacktop]self.screwlock
push.s "You used the screwdriver."@904
conv.s.v
call.i gml_Script_OpenTextBox(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554525
call.i audio_play_sound(argc=3)
popz.v
push.s "Screw used: "@905
pushloc.v local.itemTag
call.i string(argc=1)
add.v.s
call.i show_debug_message(argc=1)
popz.v
pushref.i 92
pushi.e -9
pushenv [11]

:[10]
pushloc.v local.door
pushi.e -9
push.v [stacktop]self.id
push.v builtin.foundList
call.i ds_list_add(argc=2)
popz.v

:[11]
popenv [10]
pushloc.v local.itemTag
pushloc.v local.item
call.i gml_Script_removeItem(argc=2)
popz.v
b [18]

:[12]
pushloc.v local.door
pushi.e -9
push.v [stacktop]self.screwlock
pushi.e -4
cmp.i.v NEQ
bf [14]

:[13]
pushloc.v local.door
pushi.e -9
push.v [stacktop]self.doorTag
pushloc.v local.itemTag
cmp.v.v NEQ
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
pushi.e 1
pushref.i 127
pushi.e -9
pop.v.b [stacktop]self.hasAudio
push.s "It doesn't fit."@906
conv.s.v
call.i gml_Script_OpenTextBox(argc=1)
popz.v
push.s "Wrong key tag: "@886
pushloc.v local.itemTag
call.i string(argc=1)
add.v.s
call.i show_debug_message(argc=1)
popz.v
b [18]

:[17]
push.s "Nothing happens."@887
conv.s.v
call.i gml_Script_OpenTextBox(argc=1)
popz.v
push.s "Unexpected state. Item tag: "@888
pushloc.v local.itemTag
call.i string(argc=1)
add.v.s
call.i show_debug_message(argc=1)
popz.v

:[18]
pushi.e 0
conv.b.v
ret.v

:[19]
exit.i

:[20]
push.i [function]gml_Script_scrUseScrew
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scrUseScrew
popz.v

:[end]