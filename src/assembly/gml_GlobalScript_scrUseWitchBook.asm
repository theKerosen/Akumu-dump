:[0]
b [14]

> gml_Script_scrUseWitchBook (locals=5, argc=0)
:[1]
call.i gml_Script_GetFacingObject(argc=0)
pop.v.v local.book
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
push.s "witch"@862
conv.s.v
pushloc.v local.book
call.i variable_instance_exists(argc=2)
conv.v.b
bf [9]

:[2]
pushref.i 142
pushi.e -9
push.v [stacktop]self.visible
pushi.e 0
cmp.b.v EQ
bf [8]

:[3]
pushref.i 142
pushi.e -9
pushenv [7]

:[4]
pushi.e 1
pop.v.b builtin.visible
pushref.i 16777224
pop.v.v builtin.sprite_index
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554507
call.i audio_play_sound(argc=3)
popz.v
pushref.i 107
call.i instance_destroy(argc=1)
popz.v
pushref.i 92
pushi.e -9
pushenv [6]

:[5]
push.v other.id
push.v builtin.foundList
call.i ds_list_find_index(argc=2)
push.v builtin.foundList
call.i ds_list_delete(argc=2)
popz.v

:[6]
popenv [5]

:[7]
popenv [4]
pushloc.v local.itemTag
pushloc.v local.item
call.i gml_Script_removeItem(argc=2)
popz.v

:[8]
b [12]

:[9]
pushbltn.v builtin.room
pushref.i 50331672
cmp.v.v NEQ
bf [11]

:[10]
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554438
call.i audio_play_sound(argc=3)
popz.v
pushref.i 143
push.i -999993
conv.i.v
push.v builtin.y
push.v builtin.x
call.i instance_create_depth(argc=4)
popz.v
b [12]

:[11]
pushi.e 1
pushref.i 127
pushi.e -9
pop.v.b [stacktop]self.hasAudio
push.s "I should get out of here first."@908
conv.s.v
push.s "The fog makes it hard to read."@909
conv.s.v
call.i gml_Script_OpenTextBox(argc=2)
popz.v
pushi.e 1
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
push.i 33161210
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

:[12]
pushi.e 0
conv.b.v
ret.v

:[13]
exit.i

:[14]
push.i [function]gml_Script_scrUseWitchBook
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scrUseWitchBook
popz.v

:[end]