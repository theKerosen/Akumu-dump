:[0]
pushref.i 31
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [2]

:[1]
pushglb.v global.chasing
conv.v.b
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.b global.shouldStayonRoom

:[5]
pushref.i 31
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[6]
pushref.i 31
pushi.e -9
push.v [stacktop]self.x
pop.v.v global.monsterX
pushref.i 31
pushi.e -9
push.v [stacktop]self.y
pop.v.v global.monsterY
pushbltn.v builtin.room
pop.v.v global.lastMonsterRoom

:[end]