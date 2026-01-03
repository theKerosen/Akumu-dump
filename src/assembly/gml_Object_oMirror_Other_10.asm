:[0]
push.v builtin.activate
pushi.e 0
cmp.b.v EQ
bf [end]

:[1]
push.i 65530
setowner.e
pushi.e 100
conv.i.v
pushi.e -6
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 5
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
pushi.e 1
pop.v.b builtin.activate

:[end]