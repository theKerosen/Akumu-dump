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
push.s "''Fire in a Dutch Village'', around 1650."@971
pop.v.s builtin.myDialogue
push.s "''All-consuming flames burst from the roof of a farmhouse,"@972
pop.v.s builtin.myDialogue2
push.s "lighting up the night sky over a small Dutch village.''"@973
pop.v.s builtin.myDialogue3

:[end]