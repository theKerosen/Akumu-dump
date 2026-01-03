:[0]
b [4]

> gml_Script_removeItem (locals=2, argc=2)
:[1]
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_getItem(argc=2)
pop.v.v local.item
pushloc.v local.item
pushi.e -4
cmp.i.v NEQ
bf [3]

:[2]
pushloc.v local.item
pushref.i 53
pushi.e -9
push.v [stacktop]self.inventory
call.i ds_list_find_index(argc=2)
pop.v.v local.pos
pushloc.v local.pos
pushref.i 53
pushi.e -9
push.v [stacktop]self.inventory
call.i ds_list_delete(argc=2)
popz.v

:[3]
exit.i

:[4]
push.i [function]gml_Script_removeItem
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.removeItem
popz.v

:[end]