:[0]
b [31]

> gml_Script_scrPlayerUpdateInventory (locals=5, argc=0)
:[1]
pushi.e 67
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [3]

:[2]
call.i gml_Script_scrCloseInventory(argc=0)
popz.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554443
call.i audio_play_sound(argc=6)
popz.v

:[3]
pushi.e 40
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [5]

:[4]
pushi.e 83
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [6]

:[5]
push.e 1

:[6]
pop.v.b local.downkey
pushi.e 38
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [8]

:[7]
pushi.e 87
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [9]

:[8]
push.e 1

:[9]
pop.v.b local.upkey
pushref.i 61
pushi.e -9
push.v [stacktop]self.item
pushi.e -4
cmp.i.v EQ
bf [23]

:[10]
pushloc.v local.downkey
pushloc.v local.upkey
sub.v.v
pop.v.v local.ver
pushloc.v local.ver
pushi.e 0
cmp.i.v NEQ
bf [12]

:[11]
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
push.d 1.1
conv.d.v
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554501
call.i audio_play_sound(argc=6)
popz.v
pushref.i 53
pushi.e -9
push.v [stacktop]self.inventory
call.i ds_list_size(argc=1)
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushref.i 57
pushi.e -9
push.v [stacktop]self.cursor
pushloc.v local.ver
add.v.v
call.i clamp(argc=3)
pushref.i 57
pushi.e -9
pop.v.v [stacktop]self.cursor

:[12]
pushi.e 90
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [14]

:[13]
pushi.e 13
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [15]

:[14]
push.e 1

:[15]
bf [22]

:[16]
pushref.i 53
pushi.e -9
push.v [stacktop]self.inventory
call.i ds_list_size(argc=1)
pushi.e 0
cmp.i.v GT
bf [21]

:[17]
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554517
call.i audio_play_sound(argc=6)
popz.v
pushref.i 57
pushi.e -9
push.v [stacktop]self.cursor
pushref.i 53
pushi.e -9
push.v [stacktop]self.inventory
call.i ds_list_find_value(argc=2)
pushref.i 61
pushi.e -9
pop.v.v [stacktop]self.item
pushref.i 61
pushi.e -9
push.v [stacktop]self.item
call.i is_array(argc=1)
conv.v.b
bf [19]

:[18]
call.i @@Global@@(argc=0)
pushi.e -9
pushref.i 61
pushi.e -9
pushi.e 0
push.v [array]self.item
conv.v.i
push.v [array]self.ITEMS
pushref.i 61
pushi.e -9
pop.v.v [stacktop]self.itemDef
b [20]

:[19]
push.s "O item selecionado não é válido."@736
conv.s.v
call.i show_debug_message(argc=1)
popz.v
pushi.e -4
pushref.i 61
pushi.e -9
pop.v.i [stacktop]self.item

:[20]
b [22]

:[21]
push.s "O inventário está vazio."@738
conv.s.v
call.i show_debug_message(argc=1)
popz.v

:[22]
b [30]

:[23]
pushi.e 90
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [25]

:[24]
pushi.e 13
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [26]

:[25]
push.e 1

:[26]
bf [28]

:[27]
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554517
call.i audio_play_sound(argc=6)
popz.v
pushref.i 61
pushi.e -9
pushi.e 0
push.v [array]self.item
pop.v.v local.itemId
pushref.i 61
pushi.e -9
pushi.e 3
push.v [array]self.item
pop.v.v local.itemTag
call.i gml_Script_scrCloseInventory(argc=0)
popz.v
pushloc.v local.itemTag
pushloc.v local.itemId
call.i gml_Script_useItem(argc=2)
popz.v

:[28]
pushi.e 88
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [30]

:[29]
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554443
call.i audio_play_sound(argc=6)
popz.v
pushi.e -4
pushref.i 61
pushi.e -9
pop.v.i [stacktop]self.item
pushi.e -4
pushref.i 61
pushi.e -9
pop.v.i [stacktop]self.itemDef

:[30]
exit.i

:[31]
push.i [function]gml_Script_scrPlayerUpdateInventory
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scrPlayerUpdateInventory
popz.v

:[end]