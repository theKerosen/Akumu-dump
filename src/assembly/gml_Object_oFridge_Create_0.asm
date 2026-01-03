; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v builtin.bbox_bottom
neg.v
pop.v.v builtin.depth
pushi.e 0
pop.v.i builtin.image_speed
pushi.e 1
pop.v.b builtin.debounce
pushi.e 0
pop.v.b builtin.open
pushi.e 0
pop.v.b builtin.cooldown
push.s ""@36
pop.v.s builtin.myDialogue
push.s "pizza"@868
pop.v.s builtin.itemTag
pushi.e 3
pop.v.i builtin.itemId
pushi.e 1
pop.v.i builtin.quantity
push.v builtin.itemTag
push.v builtin.itemId
call.i gml_Script_getItem(argc=2)
pop.v.v local.item
push.s "hotpizza"@897
conv.s.v
pushi.e 4
conv.i.v
call.i gml_Script_getItem(argc=2)
pop.v.v local.item2
push.s "healpizza"@1075
conv.s.v
pushi.e 5
conv.i.v
call.i gml_Script_getItem(argc=2)
pop.v.v local.item3
pushglb.v global.atepizza
pushi.e 0
cmp.b.v NEQ
bt [2]

:[1]
pushref.i 11
call.i instance_exists(argc=1)
conv.v.b
not.b
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
exit.i

:[5]
pushloc.v local.item
pushref.i 53
pushi.e -9
push.v [stacktop]self.inventory
call.i ds_list_find_index(argc=2)
pushi.e -1
cmp.i.v EQ
bf [7]

:[6]
pushloc.v local.item2
pushref.i 53
pushi.e -9
push.v [stacktop]self.inventory
call.i ds_list_find_index(argc=2)
pushi.e -1
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [12]

:[9]
pushref.i 13
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [11]

:[10]
pushref.i 13
push.s "Instances"@50
conv.s.v
push.v builtin.y
pushi.e 15
sub.i.v
push.v builtin.x
pushi.e 4
add.i.v
call.i instance_create_layer(argc=4)
popz.v

:[11]
b [end]

:[12]
pushloc.v local.item
pushref.i 53
pushi.e -9
push.v [stacktop]self.inventory
call.i ds_list_find_index(argc=2)
pushi.e -1
cmp.i.v NEQ
bf [14]

:[13]
pushloc.v local.item2
pushref.i 53
pushi.e -9
push.v [stacktop]self.inventory
call.i ds_list_find_index(argc=2)
pushi.e -1
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [19]

:[16]
pushref.i 13
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [18]

:[17]
pushref.i 13
push.s "Instances"@50
conv.s.v
pushref.i 73
pushi.e -9
push.v [stacktop]self.y
pushi.e 15
sub.i.v
pushref.i 73
pushi.e -9
push.v [stacktop]self.x
push.d 2.5
add.d.v
call.i instance_create_layer(argc=4)
popz.v

:[18]
b [end]

:[19]
pushloc.v local.item
pushref.i 53
pushi.e -9
push.v [stacktop]self.inventory
call.i ds_list_find_index(argc=2)
pushi.e -1
cmp.i.v EQ
bf [21]

:[20]
pushloc.v local.item2
pushref.i 53
pushi.e -9
push.v [stacktop]self.inventory
call.i ds_list_find_index(argc=2)
pushi.e -1
cmp.i.v NEQ
b [22]

:[21]
push.e 0

:[22]
bf [end]

:[23]
pushref.i 13
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [end]

:[24]
pushref.i 13
push.s "Instances"@50
conv.s.v
pushi.e 106
conv.i.v
pushi.e 91
conv.i.v
call.i instance_create_layer(argc=4)
popz.v

:[end]