; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v builtin.open
pushi.e 0
cmp.b.v EQ
bf [3]

:[1]
pushi.e 1
pop.v.b builtin.open
pushi.e 1
pop.v.i builtin.image_index
push.d 0.2
conv.d.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushref.i 33554443
call.i audio_play_sound(argc=4)
popz.v
exit.i

:[2]
b [13]

:[3]
push.v builtin.open
pushi.e 1
cmp.b.v EQ
bf [13]

:[4]
pushref.i 11
call.i instance_exists(argc=1)
conv.v.b
bf [12]

:[5]
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
bt [8]

:[6]
pushloc.v local.item2
pushref.i 53
pushi.e -9
push.v [stacktop]self.inventory
call.i ds_list_find_index(argc=2)
pushi.e -1
cmp.i.v NEQ
bt [8]

:[7]
pushloc.v local.item
pushref.i 53
pushi.e -9
push.v [stacktop]self.inventory
call.i ds_list_find_index(argc=2)
pushi.e -1
cmp.i.v NEQ
b [9]

:[8]
push.e 1

:[9]
bf [11]

:[10]
pushi.e 0
pop.v.b builtin.open
pushi.e 0
pop.v.i builtin.image_index
push.d 0.2
conv.d.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushref.i 33554443
call.i audio_play_sound(argc=4)
popz.v
exit.i

:[11]
b [13]

:[12]
pushi.e 0
pop.v.b builtin.open
pushi.e 0
pop.v.i builtin.image_index
push.d 0.2
conv.d.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushref.i 33554443
call.i audio_play_sound(argc=4)
popz.v
exit.i

:[13]
pushref.i 11
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [15]

:[14]
exit.i

:[15]
push.v builtin.itemTag
push.v builtin.itemId
call.i gml_Script_getItem(argc=2)
pop.v.v local.item
pushglb.v global.atepizza
pushi.e 0
cmp.b.v EQ
bf [18]

:[16]
pushloc.v local.item
pushref.i 53
pushi.e -9
push.v [stacktop]self.inventory
call.i ds_list_find_index(argc=2)
pushi.e -1
cmp.i.v EQ
bf [18]

:[17]
push.v builtin.open
pushi.e 1
cmp.b.v EQ
b [19]

:[18]
push.e 0

:[19]
bf [end]

:[20]
push.s "You got a pizza slice."@898
pop.v.s builtin.myDialogue
pushi.e 0
pop.v.b builtin.debounce
pushi.e 5
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushref.i 33554517
call.i audio_play_sound(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushref.i 33554450
call.i audio_play_sound(argc=3)
popz.v
push.v builtin.itemTag
push.v builtin.quantity
push.v builtin.itemId
call.i gml_Script_addItem(argc=3)
popz.v

:[end]