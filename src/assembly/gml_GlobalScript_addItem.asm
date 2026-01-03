:[0]
b [2]

> gml_Script_addItem (locals=2, argc=3)
:[1]
call.i @@Global@@(argc=0)
pushi.e -9
push.v arg.argument0
conv.v.i
push.v [array]self.ITEMS
pop.v.v local.item
call.i @@Global@@(argc=0)
pushi.e -9
push.v arg.argument0
conv.v.i
push.v [array]self.ITEMS
pop.v.v local.itemDef
push.i 131066
setowner.e
push.v arg.argument0
pushi.e -7
pushi.e 0
pop.v.v [array]self.item
pushi.e -7
pushi.e 4
push.v [array]self.itemDef
pushi.e 1
conv.i.v
push.v arg.argument1
call.i clamp(argc=3)
pushi.e -7
pushi.e 1
pop.v.v [array]self.item
push.v arg.argument2
pushi.e -7
pushi.e 3
pop.v.v [array]self.item
pushloc.v local.item
pushref.i 53
pushi.e -9
push.v [stacktop]self.inventory
call.i ds_list_add(argc=2)
popz.v
exit.i

:[2]
push.i [function]gml_Script_addItem
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.addItem
popz.v

:[end]