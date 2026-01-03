:[0]
call.i event_inherited(argc=0)
popz.v
pushi.e -4
pop.v.i builtin.name
pushi.e -4
pop.v.i builtin.itemId
pushi.e -4
pop.v.i builtin.itemTag
pushi.e -4
pop.v.i builtin.quantity
pushi.e 0
pop.v.i builtin.state
pushi.e 0
pop.v.i builtin.debounce
pushref.i 92
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v builtin.id
pushref.i 92
pushi.e -9
push.v [stacktop]self.foundList
call.i ds_list_find_index(argc=2)
pushi.e -1
cmp.i.v NEQ
bf [end]

:[2]
pushi.e -4
pop.v.i builtin.itemId

:[end]