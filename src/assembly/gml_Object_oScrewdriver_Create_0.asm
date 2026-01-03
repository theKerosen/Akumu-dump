:[0]
call.i event_inherited(argc=0)
popz.v
push.v builtin.bbox_bottom
neg.v
pop.v.v builtin.depth
push.s "Screwdriver"@621
pop.v.s builtin.name
pushbltn.v builtin.undefined
pop.v.v builtin.myDialogue2
pushi.e 10
pop.v.i builtin.itemId
push.s "screw"@1012
pop.v.s builtin.itemTag
pushi.e 1
pop.v.i builtin.quantity

:[end]