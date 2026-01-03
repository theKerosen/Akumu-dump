:[0]
pushglb.v global.lightsOut
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.s "It seems to be an excerpt about art. Read it?"@966
pop.v.s builtin.inicialDialogue
push.s "''Lady Lilith'', 1866-1873"@968
pop.v.s builtin.myDialogue
push.s "''The witch Adam loved before Eve.''"@969
pop.v.s builtin.myDialogue2

:[end]