:[0]
push.s "I don't want to go outside."@960
pop.v.s builtin.myDialogue1
pushbltn.v builtin.undefined
pop.v.v builtin.myDialogue2
pushi.e 0
pop.v.i builtin.lock
push.s "EXITKEY"@961
pop.v.s builtin.doorTag

:[end]