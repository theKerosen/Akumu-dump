:[0]
push.v builtin.x
pop.v.v builtin.previous_x
push.v builtin.y
pop.v.v builtin.previous_y
call.i path_add(argc=0)
pop.v.v builtin.path
pushi.e 0
pop.v.i builtin.canAppear
pushi.e 0
pop.v.b builtin.deb
pushi.e 0
pop.v.b builtin.deb2
pushi.e 0
pop.v.b builtin.canRun
pushi.e 0
pop.v.b builtin.play
pushi.e 0
pop.v.i builtin.deb3

:[end]