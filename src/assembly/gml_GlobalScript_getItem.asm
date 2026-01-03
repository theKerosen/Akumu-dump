:[0]
b [10]

> gml_Script_getItem (locals=3, argc=2)
:[1]
pushref.i 53
pushi.e -9
push.v [stacktop]self.inventory
call.i ds_list_size(argc=1)
pop.v.v local.length
pushi.e 0
pop.v.i local.i

:[2]
pushloc.v local.i
pushloc.v local.length
cmp.v.v LT
bf [8]

:[3]
pushloc.v local.i
pushref.i 53
pushi.e -9
push.v [stacktop]self.inventory
call.i ds_list_find_value(argc=2)
pop.v.v local.item
pushi.e -7
pushi.e 0
push.v [array]self.item
push.v arg.argument0
cmp.v.v EQ
bf [5]

:[4]
pushloc.v local.item
ret.v

:[5]
pushi.e -7
pushi.e 3
push.v [array]self.item
push.v arg.argument1
cmp.v.v EQ
bf [7]

:[6]
pushloc.v local.item
ret.v

:[7]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [2]

:[8]
pushi.e -4
conv.i.v
ret.v

:[9]
exit.i

:[10]
push.i [function]gml_Script_getItem
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.getItem
popz.v

:[end]