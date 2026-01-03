:[0]
call.i event_inherited(argc=0)
popz.v
push.v builtin.bbox_bottom
neg.v
pop.v.v builtin.depth
push.s "Candle"@609
pop.v.s builtin.name
pushbltn.v builtin.undefined
pop.v.v builtin.myDialogue2
pushi.e 6
pop.v.i builtin.itemId
push.s "candle"@957
pop.v.s builtin.itemTag
pushi.e 50
pop.v.i builtin.quantity
pushi.e 1
pop.v.b builtin.canTake

:[end]