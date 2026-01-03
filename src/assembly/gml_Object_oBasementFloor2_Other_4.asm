:[0]
pushref.i 69
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [2]

:[1]
exit.i

:[2]
pushbltn.v builtin.room
pushref.i 50331674
cmp.v.v EQ
bt [6]

:[3]
pushbltn.v builtin.room
pushref.i 50331675
cmp.v.v EQ
bt [6]

:[4]
pushbltn.v builtin.room
pushref.i 50331673
cmp.v.v EQ
bt [6]

:[5]
pushbltn.v builtin.room
pushref.i 50331676
cmp.v.v EQ
b [7]

:[6]
push.e 1

:[7]
bf [9]

:[8]
push.d 0.93
pushref.i 69
pushi.e -9
pop.v.d [stacktop]self.darkness
b [10]

:[9]
push.d 0.73
pushref.i 69
pushi.e -9
pop.v.d [stacktop]self.darkness

:[10]
pushbltn.v builtin.room
pushref.i 50331677
cmp.v.v EQ
bf [end]

:[11]
push.d 0.6
pushref.i 69
pushi.e -9
pop.v.d [stacktop]self.darkness

:[end]