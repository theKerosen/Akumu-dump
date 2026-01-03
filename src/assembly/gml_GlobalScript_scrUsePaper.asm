:[0]
b [10]

> gml_Script_scrUsePaper (locals=5, argc=0)
:[1]
call.i gml_Script_GetFacingObject(argc=0)
pop.v.v local.paper
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
push.s "paper"@767
conv.s.v
pushloc.v local.paper
call.i variable_instance_exists(argc=2)
conv.v.b
bf [8]

:[2]
pushloc.v local.paper
pushi.e -9
push.v [stacktop]self.paper
pushi.e 1
cmp.i.v EQ
bf [8]

:[3]
pushref.i 98
pushi.e -9
push.v [stacktop]self.face
pushi.e 3
cmp.i.v NEQ
bf [5]

:[4]
exit.i

:[5]
pushi.e 1
pop.v.b global.paperCorrect
pushloc.v local.paper
pushi.e -9
pushenv [7]

:[6]
pushloc.v local.itemTag
pushloc.v local.item
call.i gml_Script_removeItem(argc=2)
popz.v

:[7]
popenv [6]

:[8]
pushi.e 0
conv.b.v
ret.v

:[9]
exit.i

:[10]
push.i [function]gml_Script_scrUsePaper
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scrUsePaper
popz.v

:[end]