:[0]
push.v builtin.alarm0
pushi.e 1
cmp.b.v EQ
bf [end]

:[1]
pushref.i 50331680
call.i room_goto(argc=1)
popz.v
pushi.e -32
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e -32
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.y
pushi.e 3
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.face
pushi.e 5
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state

:[end]