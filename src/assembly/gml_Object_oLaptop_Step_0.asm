:[0]
pushref.i 11
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[1]
pushref.i 11
pushi.e -9
push.v [stacktop]self.lightsOut
conv.v.b
bf [4]

:[2]
pushi.e 0
pop.v.b builtin.canTurn
pushi.e 1
pushref.i 127
pushi.e -9
pop.v.b [stacktop]self.hasAudio
push.s ""@36
pushref.i 127
pushi.e -9
pop.v.s [stacktop]self.Speaker
push.s "I need to fix the lights first."@1337
pop.v.s builtin.mymessage
exit.i

:[3]
b [5]

:[4]
pushi.e 1
pop.v.b builtin.canTurn

:[5]
push.s "Would you like to save your progress?"@1338
pop.v.s builtin.mymessage
push.v builtin.state
pushi.e 1
cmp.i.v NEQ
bf [7]

:[6]
pushi.e 0
pop.v.i builtin.image_index
exit.i

:[7]
pushi.e 1
pop.v.i builtin.image_index

:[end]