:[0]
push.v builtin.count
pushi.e 5
cmp.i.v EQ
bf [end]

:[1]
pushi.e 20
pushref.i 127
pushi.e -9
pop.v.i [stacktop]self.value

:[end]