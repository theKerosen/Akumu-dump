:[0]
push.v builtin.foundList
call.i ds_list_destroy(argc=1)
popz.v
push.v builtin.unlockedList
call.i ds_list_destroy(argc=1)
popz.v

:[end]