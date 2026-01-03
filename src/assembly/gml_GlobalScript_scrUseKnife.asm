:[0]
b [11]

> gml_Script_scrUseKnife (locals=4, argc=0)
:[1]
pushglb.v global.cantKill
conv.v.b
bf [3]

:[2]
exit.i

:[3]
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
pushref.i 98
pushi.e -9
push.v [stacktop]self.itemequip
pushloc.v local.itemTag
cmp.v.v NEQ
bf [9]

:[4]
push.s ""@36
pushref.i 98
pushi.e -9
pop.v.s [stacktop]self.itemequip
pushi.e 5
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
b [8]

> gml_Script_anon@381@scrUseKnife@scrUseKnife (locals=0, argc=0)
:[5]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e -4
conv.i.v
call.i gml_Script_set_song_ingame(argc=3)
popz.v
pushi.e 3
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.face
b [7]

> gml_Script_anon@473@anon@381@scrUseKnife@scrUseKnife (locals=0, argc=0)
:[6]
pushi.e 4
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
pushi.e 0
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 16
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.face
pushi.e 0
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.hsp
pushi.e 0
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.vsp
pushi.e 1
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.spd
exit.i

:[7]
push.i [function]gml_Script_anon@473@anon@381@scrUseKnife@scrUseKnife
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 4000
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v
exit.i

:[8]
push.i [function]gml_Script_anon@381@scrUseKnife@scrUseKnife
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 1000
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v

:[9]
push.s "Item equipped: "@892
pushref.i 98
pushi.e -9
push.v [stacktop]self.itemequip
add.v.s
call.i show_debug_message(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[10]
exit.i

:[11]
push.i [function]gml_Script_scrUseKnife
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scrUseKnife
popz.v

:[end]