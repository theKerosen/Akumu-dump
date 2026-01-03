:[0]
b [15]

> gml_Script_scrUseHotPizza (locals=6, argc=0)
:[1]
call.i gml_Script_GetFacingObject(argc=0)
pop.v.v local.counter
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
push.s "counter"@867
conv.s.v
pushloc.v local.counter
call.i variable_instance_exists(argc=2)
conv.v.b
bf [13]

:[2]
pushref.i 98
pushi.e -9
push.v [stacktop]self.face
pushi.e 3
cmp.i.v NEQ
bf [4]

:[3]
exit.i

:[4]
pushref.i 28
pushi.e -9
pushenv [12]

:[5]
pushloc.v local.itemTag
pushloc.v local.item
call.i gml_Script_removeItem(argc=2)
popz.v
pushref.i 13
call.i instance_destroy(argc=1)
popz.v
pushref.i 97
push.s "Instances"@50
conv.s.v
pushi.e 122
conv.i.v
pushref.i 98
pushi.e -9
push.v [stacktop]self.x
pushi.e 6
sub.i.v
call.i instance_create_layer(argc=4)
pop.v.v local.pizza
pushi.e -9999
pushloc.v local.pizza
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554507
call.i audio_play_sound(argc=3)
popz.v
pushi.e 5
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
b [11]

> gml_Script_anon@659@scrUseHotPizza@scrUseHotPizza (locals=0, argc=0)
:[6]
pushref.i 97
call.i instance_destroy(argc=1)
popz.v
pushi.e 1
pop.v.b builtin.canDraw
push.s "pizza"@868
pop.v.s builtin.drawing
b [10]

> gml_Script_anon@777@anon@659@scrUseHotPizza@scrUseHotPizza (locals=0, argc=0)
:[7]
push.s "black"@871
pop.v.s builtin.drawing
pushref.i 33554508
call.i audio_pause_sound(argc=1)
popz.v
pushref.i 33554526
call.i audio_stop_sound(argc=1)
popz.v
b [9]

> gml_Script_anon@945@anon@777@anon@659@scrUseHotPizza@scrUseHotPizza (locals=0, argc=0)
:[8]
push.s "It was delicious."@874
conv.s.v
push.s "You ate the pizza."@875
conv.s.v
call.i gml_Script_OpenTextBox(argc=2)
popz.v
pushi.e 1
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
push.i 31850490
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

:[9]
push.i [function]gml_Script_anon@945@anon@777@anon@659@scrUseHotPizza@scrUseHotPizza
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 1000
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v
exit.i

:[10]
push.i [function]gml_Script_anon@777@anon@659@scrUseHotPizza@scrUseHotPizza
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 3000
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v
exit.i

:[11]
push.i [function]gml_Script_anon@659@scrUseHotPizza@scrUseHotPizza
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 1500
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v

:[12]
popenv [5]

:[13]
pushi.e 0
conv.b.v
ret.v

:[14]
exit.i

:[15]
push.i [function]gml_Script_scrUseHotPizza
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scrUseHotPizza
popz.v

:[end]