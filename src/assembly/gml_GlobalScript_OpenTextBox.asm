:[0]
b [49]

> gml_Script_OpenTextBox (locals=1, argc=11)
:[1]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushbltn.v builtin.undefined
pop.v.v builtin.argument0

:[3]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [5]

:[4]
pushbltn.v builtin.undefined
pop.v.v builtin.argument1

:[5]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [7]

:[6]
pushbltn.v builtin.undefined
pop.v.v builtin.argument2

:[7]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [9]

:[8]
pushbltn.v builtin.undefined
pop.v.v builtin.argument3

:[9]
pushbltn.v builtin.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [11]

:[10]
pushbltn.v builtin.undefined
pop.v.v builtin.argument4

:[11]
pushbltn.v builtin.argument5
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [13]

:[12]
pushbltn.v builtin.undefined
pop.v.v builtin.argument5

:[13]
pushbltn.v builtin.argument6
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [15]

:[14]
pushbltn.v builtin.undefined
pop.v.v builtin.argument6

:[15]
pushbltn.v builtin.argument7
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [17]

:[16]
pushbltn.v builtin.undefined
pop.v.v builtin.argument7

:[17]
pushbltn.v builtin.argument8
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [19]

:[18]
pushbltn.v builtin.undefined
pop.v.v builtin.argument8

:[19]
pushbltn.v builtin.argument9
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [21]

:[20]
pushbltn.v builtin.undefined
pop.v.v builtin.argument9

:[21]
pushbltn.v builtin.argument10
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [23]

:[22]
pushbltn.v builtin.undefined
pop.v.v builtin.argument10

:[23]
push.i 14387187
setowner.e
call.i @@NewGMLArray@@(argc=0)
pop.v.v local.manualPages
push.v arg.argument0
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [25]

:[24]
push.v arg.argument0
pushloc.v local.manualPages
call.i array_push(argc=2)
popz.v

:[25]
push.v arg.argument1
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [27]

:[26]
push.v arg.argument1
pushloc.v local.manualPages
call.i array_push(argc=2)
popz.v

:[27]
push.v arg.argument2
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [29]

:[28]
push.v arg.argument2
pushloc.v local.manualPages
call.i array_push(argc=2)
popz.v

:[29]
push.v arg.argument3
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [31]

:[30]
push.v arg.argument3
pushloc.v local.manualPages
call.i array_push(argc=2)
popz.v

:[31]
push.v arg.argument4
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [33]

:[32]
push.v arg.argument4
pushloc.v local.manualPages
call.i array_push(argc=2)
popz.v

:[33]
push.v arg.argument5
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [35]

:[34]
push.v arg.argument5
pushloc.v local.manualPages
call.i array_push(argc=2)
popz.v

:[35]
push.v arg.argument6
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [37]

:[36]
push.v arg.argument6
pushloc.v local.manualPages
call.i array_push(argc=2)
popz.v

:[37]
push.v arg.argument7
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [39]

:[38]
push.v arg.argument7
pushloc.v local.manualPages
call.i array_push(argc=2)
popz.v

:[39]
push.v arg.argument8
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [41]

:[40]
push.v arg.argument8
pushloc.v local.manualPages
call.i array_push(argc=2)
popz.v

:[41]
push.v arg.argument9
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [43]

:[42]
push.v arg.argument9
pushloc.v local.manualPages
call.i array_push(argc=2)
popz.v

:[43]
push.v arg.argument10
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [45]

:[44]
push.v arg.argument10
pushloc.v local.manualPages
call.i array_push(argc=2)
popz.v

:[45]
pushloc.v local.manualPages
call.i array_length_1d(argc=1)
pushi.e 0
cmp.i.v GT
bf [47]

:[46]
pushloc.v local.manualPages
pushi.e 48
conv.i.v
pushi.e 177
conv.i.v
pushi.e 14
conv.i.v
pushglb.v global.TEXTBOX_FONT
push.s ""@36
conv.s.v
call.i gml_Script_scrSplitTextIntoPages(argc=6)
pushref.i 127
pushi.e -9
pop.v.v [stacktop]self.pages
b [48]

:[47]
pushi.e 48
conv.i.v
pushi.e 177
conv.i.v
pushi.e 14
conv.i.v
pushglb.v global.TEXTBOX_FONT
push.v arg.argument0
call.i gml_Script_scrSplitTextIntoPages(argc=5)
pushref.i 127
pushi.e -9
pop.v.v [stacktop]self.pages

:[48]
pushi.e 0
pushref.i 127
pushi.e -9
pop.v.i [stacktop]self.page
push.i 28573690
setowner.e
pushi.e 5
conv.i.v
pushref.i 127
pushi.e -9
pushi.e 0
pop.v.v [array]self.alarm
exit.i

:[49]
push.i [function]gml_Script_OpenTextBox
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.OpenTextBox
popz.v

:[end]