:[0]
call.i event_inherited(argc=0)
popz.v
pushi.e 0
pop.v.i builtin.image_speed
push.s "Fake Book"@1200
pop.v.s builtin.name
pushbltn.v builtin.undefined
pop.v.v builtin.myDialogue2
pushi.e 9
pop.v.i builtin.itemId
push.s "fakebook"@1017
pop.v.s builtin.itemTag
pushi.e 1
pop.v.i builtin.quantity

:[end]