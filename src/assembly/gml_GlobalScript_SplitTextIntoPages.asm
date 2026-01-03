:[0]
b [15]

> gml_Script_scrSplitTextIntoPages (locals=6, argc=6)
:[1]
pushbltn.v builtin.argument5
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushbltn.v builtin.undefined
pop.v.v builtin.argument5

:[3]
push.i 16812020
setowner.e
call.i @@NewGMLArray@@(argc=0)
pop.v.v local.pages
push.v arg.argument5
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [5]

:[4]
push.v arg.argument5
ret.v

:[5]
push.s ""@36
pop.v.s local.page
push.s " "@921
conv.s.v
push.v arg.argument0
call.i string_split(argc=2)
pop.v.v local.words
pushloc.v local.words
call.i array_length_1d(argc=1)
pop.v.v local.length
push.v arg.argument1
call.i draw_set_font(argc=1)
popz.v
pushi.e 0
pop.v.i local.i

:[6]
pushloc.v local.i
pushloc.v local.length
cmp.v.v LT
bf [13]

:[7]
pushi.e -7
pushloc.v local.i
conv.v.i
push.v [array]self.words
pop.v.v local.word
push.v arg.argument3
push.v arg.argument2
pushloc.v local.page
push.s " "@921
add.s.v
pushloc.v local.word
add.v.v
call.i string_height_ext(argc=3)
push.v arg.argument4
cmp.v.v GTE
bf [9]

:[8]
pushloc.v local.page
pushloc.v local.pages
call.i array_push(argc=2)
popz.v
pushloc.v local.word
pop.v.v local.page
b [12]

:[9]
pushloc.v local.i
pushi.e 0
cmp.i.v GT
bf [11]

:[10]
push.v local.page
push.s " "@921
add.s.v
pop.v.v local.page

:[11]
push.v local.page
pushloc.v local.word
add.v.v
pop.v.v local.page

:[12]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [6]

:[13]
pushloc.v local.page
pushloc.v local.pages
call.i array_push(argc=2)
popz.v
pushloc.v local.pages
ret.v

:[14]
exit.i

:[15]
push.i [function]gml_Script_scrSplitTextIntoPages
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scrSplitTextIntoPages
popz.v

:[end]