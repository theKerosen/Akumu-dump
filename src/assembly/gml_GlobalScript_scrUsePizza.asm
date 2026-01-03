:[0]
b [11]

> gml_Script_scrUsePizza (locals=5, argc=0)
:[1]
call.i gml_Script_GetFacingObject(argc=0)
pop.v.v local.microwave
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
push.s "microwave"@895
conv.s.v
pushloc.v local.microwave
call.i variable_instance_exists(argc=2)
conv.v.b
bf [9]

:[2]
pushi.e 1
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
push.i 32636922
setowner.e
pushi.e -4
conv.i.v
pushref.i 98
call.i @@NewGMLArray@@(argc=2)
pushref.i gml_Script_scrFinishCharacterReading
call.i @@NewGMLArray@@(argc=2)
pushref.i 127
pushi.e -9
pop.v.v [stacktop]self.callback
pushref.i 73
pushi.e -9
pushenv [8]

:[3]
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554500
call.i audio_play_sound(argc=3)
popz.v
pushi.e 5
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
b [5]

> gml_Script_anon@576@scrUsePizza@scrUsePizza (locals=0, argc=0)
:[4]
pushi.e 1
pop.v.i builtin.image_index
exit.i

:[5]
push.i [function]gml_Script_anon@576@scrUsePizza@scrUsePizza
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 1120
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v
b [7]

> gml_Script_anon@644@scrUsePizza@scrUsePizza (locals=0, argc=0)
:[6]
pushref.i 13
call.i instance_destroy(argc=1)
popz.v
pushref.i 13
push.s "Instances"@50
conv.s.v
pushi.e 106
conv.i.v
pushi.e 91
conv.i.v
call.i instance_create_layer(argc=4)
popz.v
pushi.e 0
pop.v.i builtin.image_index
push.s "hotpizza"@897
conv.s.v
pushi.e 1
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_addItem(argc=3)
popz.v
push.s "You got a pizza slice."@898
conv.s.v
call.i gml_Script_OpenTextBox(argc=1)
popz.v
pushi.e 1
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
push.i 32899066
setowner.e
pushi.e -4
conv.i.v
pushref.i 98
call.i @@NewGMLArray@@(argc=2)
pushref.i gml_Script_scrFinishCharacterReading
call.i @@NewGMLArray@@(argc=2)
pushref.i 127
pushi.e -9
pop.v.v [stacktop]self.callback
exit.i

:[7]
push.i [function]gml_Script_anon@644@scrUsePizza@scrUsePizza
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 7740
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v

:[8]
popenv [3]
pushloc.v local.itemTag
pushloc.v local.item
call.i gml_Script_removeItem(argc=2)
popz.v

:[9]
pushi.e 0
conv.b.v
ret.v

:[10]
exit.i

:[11]
push.i [function]gml_Script_scrUsePizza
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scrUsePizza
popz.v

:[end]