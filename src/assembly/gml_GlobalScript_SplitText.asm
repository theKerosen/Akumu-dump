:[0]
b [8]

> gml_Script_scrSplitText (locals=5, argc=2)
:[1]
call.i ds_list_create(argc=0)
pop.v.v local.words
pushi.e 1
pop.v.i local.start
push.v arg.argument0
push.v arg.argument1
call.i string_pos(argc=2)
pop.v.v local._end

:[2]
pushloc.v local._end
pushi.e 0
cmp.i.v GT
bf [4]

:[3]
pushloc.v local._end
pushloc.v local.start
sub.v.v
pushloc.v local.start
push.v arg.argument0
call.i string_copy(argc=3)
pop.v.v local.word
pushloc.v local.word
pushloc.v local.words
call.i ds_list_add(argc=2)
popz.v
pushloc.v local._end
pushi.e 1
add.i.v
pop.v.v local.start
push.v arg.argument0
push.v arg.argument1
call.i string_pos(argc=2)
pop.v.v local._end
b [2]

:[4]
pushloc.v local.start
push.v arg.argument0
call.i string_length(argc=1)
cmp.v.v LTE
bf [6]

:[5]
push.v arg.argument0
call.i string_length(argc=1)
pushloc.v local.start
sub.v.v
pushi.e 1
add.i.v
pushloc.v local.start
push.v arg.argument0
call.i string_copy(argc=3)
pop.v.v local.lastWord
pushloc.v local.lastWord
pushloc.v local.words
call.i ds_list_add(argc=2)
popz.v

:[6]
pushloc.v local.words
ret.v

:[7]
exit.i

:[8]
push.i [function]gml_Script_scrSplitText
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scrSplitText
popz.v

:[end]