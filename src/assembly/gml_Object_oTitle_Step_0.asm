:[0]
pushbltn.v builtin.room
pushref.i 50331649
cmp.v.v EQ
bf [3]

:[1]
pushref.i 72
pushi.e -9
push.v [stacktop]self.quit
pushi.e 1
cmp.b.v NEQ
bf [3]

:[2]
push.v builtin.image_alpha
pushi.e 1
cmp.i.v NEQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
push.v builtin.image_alpha
push.v builtin.fadeSpeed
add.v.v
pop.v.v builtin.image_alpha

:[6]
pushbltn.v builtin.room
pushref.i 50331650
cmp.v.v EQ
bf [9]

:[7]
pushref.i 82
pushi.e -9
push.v [stacktop]self.quit
pushi.e 1
cmp.b.v NEQ
bf [9]

:[8]
push.v builtin.image_alpha
pushi.e 1
cmp.i.v NEQ
b [10]

:[9]
push.e 0

:[10]
bf [end]

:[11]
push.v builtin.image_alpha
push.v builtin.fadeSpeed
add.v.v
pop.v.v builtin.image_alpha

:[end]