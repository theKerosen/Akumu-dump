; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushglb.v global.lightsOut
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 0
pop.v.b builtin.debounce
push.s "healpizza"@1075
conv.s.v
pushi.e 5
conv.i.v
call.i gml_Script_getItem(argc=2)
pop.v.v local.item
push.s "hotpizza"@897
conv.s.v
pushi.e 4
conv.i.v
call.i gml_Script_getItem(argc=2)
pop.v.v local.item2
push.s "pizza"@868
conv.s.v
pushi.e 3
conv.i.v
call.i gml_Script_getItem(argc=2)
pop.v.v local.item3
pushglb.v global.atepizza
pushi.e 0
cmp.b.v EQ
pushloc.v local.item2
pushref.i 53
pushi.e -9
push.v [stacktop]self.inventory
call.i ds_list_find_index(argc=2)
pushi.e -1
cmp.i.v EQ
xor.b.b
pushloc.v local.item3
pushref.i 53
pushi.e -9
push.v [stacktop]self.inventory
call.i ds_list_find_index(argc=2)
pushi.e -1
cmp.i.v EQ
xor.b.b
bf [4]

:[3]
pushref.i 98
call.i instance_destroy(argc=1)
popz.v
push.i 65530
setowner.e
pushi.e 130
conv.i.v
pushi.e -6
pushi.e 1
pop.v.v [array]self.alarm

:[4]
pushi.e 0
pop.v.b builtin.debounce2
pushi.e 0
pop.v.b builtin.debounce3
pushi.e 0
pop.v.i builtin.lightsOut
pushi.e 0
pop.v.b builtin.canPlay
pushi.e 0
pop.v.i builtin.alpha
pushi.e 0
pop.v.b global.canWatch
pushi.e -9999
pop.v.i builtin.depth

:[end]