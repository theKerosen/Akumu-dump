:[0]
b [10]

> gml_Script_useItem (locals=3, argc=2)
:[1]
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_getItem(argc=2)
pop.v.v local.item
pushloc.v local.item
pushi.e -4
cmp.i.v NEQ
bf [9]

:[2]
call.i @@Global@@(argc=0)
pushi.e -9
push.v arg.argument0
conv.v.i
push.v [array]self.ITEMS
pop.v.v local.itemDef
pushi.e -7
pushi.e 3
push.v [array]self.itemDef
pop.v.v local.action
pushloc.v local.action
pushi.e -4
cmp.i.v NEQ
bf [6]

:[3]
call.i @@This@@(argc=0)
pushloc.v local.action
callv.v 0
conv.v.b
not.b
bf [5]

:[4]
exit.i

:[5]
b [7]

:[6]
exit.i

:[7]
push.i 16777216
setowner.e
pushi.e 1
conv.i.v
pushloc.v local.item
call.i array_get(argc=2)
pushi.e 1
sub.i.v
pushi.e 1
conv.i.v
pushloc.v local.item
call.i array_set(argc=3)
popz.v
pushi.e -7
pushi.e 1
push.v [array]self.item
pushi.e 0
cmp.i.v LTE
bf [9]

:[8]
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_removeItem(argc=2)
popz.v

:[9]
exit.i

:[10]
push.i [function]gml_Script_useItem
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.useItem
popz.v

:[end]