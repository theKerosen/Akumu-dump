:[0]
pushi.e 0
pop.v.i builtin.loadRoom
pushi.e 0
pop.v.i builtin.loadX
pushi.e 0
pop.v.i builtin.loadY
pushi.e 0
pop.v.i builtin.loadFace
pushi.e 0
pop.v.i builtin.loadTime
push.i 65530
setowner.e
pushi.e 4
pushbltn.v builtin.room_speed
mul.v.i
pushi.e -6
pushi.e 0
pop.v.v [array]self.alarm

:[end]