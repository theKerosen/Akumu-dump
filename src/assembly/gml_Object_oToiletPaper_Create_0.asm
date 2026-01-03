:[0]
call.i event_inherited(argc=0)
popz.v
push.v builtin.bbox_bottom
neg.v
pop.v.v builtin.depth
push.s "Toilet paper"@612
pop.v.s builtin.name
pushbltn.v builtin.undefined
pop.v.v builtin.myDialogue2
pushi.e 7
pop.v.i builtin.itemId
push.s "paper"@767
pop.v.s builtin.itemTag
pushi.e 1
pop.v.i builtin.quantity

:[end]