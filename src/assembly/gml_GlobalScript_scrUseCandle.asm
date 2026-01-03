:[0]
b [15]

> gml_Script_scrUseCandle (locals=4, argc=0)
:[1]
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
pushref.i 137
pushi.e -9
push.v [stacktop]self.fuel
pushi.e 0
cmp.i.v NEQ
bf [10]

:[2]
pushref.i 98
pushi.e -9
push.v [stacktop]self.itemequip
pushloc.v local.itemTag
cmp.v.v NEQ
bf [6]

:[3]
pushref.i 98
pushi.e -9
pushenv [5]

:[4]
pushloc.v local.itemTag
pop.v.v builtin.itemequip
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554444
call.i audio_play_sound(argc=3)
popz.v

:[5]
popenv [4]
b [9]

:[6]
pushref.i 98
pushi.e -9
pushenv [8]

:[7]
push.s ""@36
pop.v.s builtin.itemequip
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554445
call.i audio_play_sound(argc=3)
popz.v

:[8]
popenv [7]

:[9]
b [13]

:[10]
push.v builtin.speed
pushi.e 0
cmp.i.v NEQ
bf [12]

:[11]
exit.i

:[12]
pushi.e 1
pushref.i 127
pushi.e -9
pop.v.b [stacktop]self.hasAudio
push.s "It's out."@859
conv.s.v
call.i gml_Script_OpenTextBox(argc=1)
popz.v
pushi.e 1
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
push.i 31195130
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

:[13]
pushref.i 98
pushi.e -9
push.v [stacktop]self.itemequip
call.i show_debug_message(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[14]
exit.i

:[15]
push.i [function]gml_Script_scrUseCandle
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scrUseCandle
popz.v

:[end]