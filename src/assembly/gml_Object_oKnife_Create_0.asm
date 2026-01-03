:[0]
call.i event_inherited(argc=0)
popz.v
push.s "knife"@1215
pop.v.s builtin.name
pushbltn.v builtin.undefined
pop.v.v builtin.myDialogue2
pushi.e 2
pop.v.i builtin.itemId
push.s "knife"@1215
pop.v.s builtin.itemTag
pushi.e 1
pop.v.i builtin.quantity

:[end]