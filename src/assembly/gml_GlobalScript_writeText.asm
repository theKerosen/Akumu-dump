:[0]
b [5]

> gml_Script_file_read_all_text (locals=2, argc=1)
:[1]
push.v arg.argument0
call.i buffer_load(argc=1)
pop.v.v local._buffer
pushloc.v local._buffer
pushi.e -1
cmp.i.v EQ
bf [3]

:[2]
pushbltn.v builtin.undefined
ret.v

:[3]
pushi.e 11
conv.i.v
pushloc.v local._buffer
call.i buffer_read(argc=2)
pop.v.v local._result
pushloc.v local._buffer
call.i buffer_delete(argc=1)
popz.v
pushloc.v local._result
ret.v

:[4]
exit.i

:[5]
push.i [function]gml_Script_file_read_all_text
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.file_read_all_text
popz.v
b [7]

> gml_Script_file_write_all_text (locals=1, argc=2)
:[6]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v arg.argument1
call.i string_length(argc=1)
call.i buffer_create(argc=3)
pop.v.v local._buffer
push.v arg.argument1
pushi.e 13
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.v arg.argument0
pushloc.v local._buffer
call.i buffer_save(argc=2)
popz.v
pushloc.v local._buffer
call.i buffer_delete(argc=1)
popz.v
exit.i

:[7]
push.i [function]gml_Script_file_write_all_text
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.file_write_all_text
popz.v

:[end]