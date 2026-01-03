:[0]
push.s "candle"@957
pop.v.s builtin.itemTag
pushref.i 11
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [2]

:[1]
exit.i

:[2]
pushref.i 11
pushi.e -9
push.v [stacktop]self.lightsOut
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.b builtin.canTake
b [end]

:[4]
pushi.e 0
pop.v.b builtin.canTake

:[end]