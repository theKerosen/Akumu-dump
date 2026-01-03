:[0]
pushref.i 92
pushi.e -9
pushenv [2]

:[1]
push.v other.id
push.v builtin.foundList
call.i ds_list_add(argc=2)
popz.v

:[2]
popenv [1]

:[end]