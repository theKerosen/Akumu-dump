:[0]
pushi.e 0
pop.v.i builtin.state
pushi.e 0
pop.v.i builtin.myDialogue
push.v builtin.bbox_bottom
neg.v
pop.v.v builtin.depth
pushbltn.v builtin.undefined
pop.v.v builtin.inicialDialogue
pushbltn.v builtin.undefined
pop.v.v builtin.myDialogue
pushbltn.v builtin.undefined
pop.v.v builtin.myDialogue2
pushbltn.v builtin.undefined
pop.v.v builtin.myDialogue3
pushbltn.v builtin.undefined
pop.v.v builtin.myDialogue4
pushbltn.v builtin.undefined
pop.v.v builtin.myDialogue5
pushbltn.v builtin.undefined
pop.v.v builtin.myDialogue6
pushbltn.v builtin.undefined
pop.v.v builtin.myDialogue7
pushbltn.v builtin.undefined
pop.v.v builtin.myDialogue8
pushbltn.v builtin.undefined
pop.v.v builtin.myDialogue9
pushbltn.v builtin.undefined
pop.v.v builtin.myDialogue10
pushi.e 0
pop.v.b builtin.debounce
pushi.e 0
pop.v.b builtin.hasBook
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
pushi.e 0
pop.v.b builtin.canDialogue
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