:[0]
pushi.e 0
pop.v.i builtin.i

:[1]
push.v builtin.i
push.v builtin.foundList
call.i ds_list_size(argc=1)
cmp.v.v LT
bf [5]

:[2]
push.v builtin.i
push.v builtin.foundList
call.i ds_list_find_value(argc=2)
pushi.e -9
pushenv [4]

:[3]
pushi.e 15
conv.i.v
call.i event_user(argc=1)
popz.v

:[4]
popenv [3]
push.v builtin.i
push.e 1
add.i.v
pop.v.v builtin.i
b [1]

:[5]
pushi.e 0
pop.v.i builtin.i

:[6]
push.v builtin.i
push.v builtin.unlockedList
call.i ds_list_size(argc=1)
cmp.v.v LT
bf [end]

:[7]
push.v builtin.i
push.v builtin.unlockedList
call.i ds_list_find_value(argc=2)
pushi.e -9
pushenv [9]

:[8]
pushi.e -4
pop.v.i builtin.lock

:[9]
popenv [8]
push.v builtin.i
push.e 1
add.i.v
pop.v.v builtin.i
b [6]

:[end]