:[0]
pushref.i 98
pushi.e -9
push.v [stacktop]self.x
pop.v.v builtin.x
push.v builtin.y
pushref.i 98
pushi.e -9
push.v [stacktop]self.vsp
neg.v
add.v.v
pop.v.v builtin.y
pushref.i 98
pushi.e -9
push.v [stacktop]self.image_index
pop.v.v builtin.image_index
pushref.i 98
pushi.e -9
push.v [stacktop]self.image_speed
pop.v.v builtin.image_speed
pushref.i 98
pushi.e -9
push.v [stacktop]self.sprite_index
pop.v.v builtin.sprite_index
pushref.i 98
pushi.e -9
push.v [stacktop]self.sprite_index
pushref.i 16777324
cmp.v.v EQ
bf [2]

:[1]
pushref.i 16777317
pop.v.v builtin.sprite_index

:[2]
pushref.i 98
pushi.e -9
push.v [stacktop]self.sprite_index
pushref.i 16777317
cmp.v.v EQ
bf [4]

:[3]
pushref.i 16777324
pop.v.v builtin.sprite_index

:[4]
pushref.i 98
pushi.e -9
push.v [stacktop]self.sprite_index
pushref.i 16777340
cmp.v.v EQ
bf [6]

:[5]
pushref.i 16777343
pop.v.v builtin.sprite_index

:[6]
pushref.i 98
pushi.e -9
push.v [stacktop]self.sprite_index
pushref.i 16777343
cmp.v.v EQ
bf [8]

:[7]
pushref.i 16777340
pop.v.v builtin.sprite_index

:[8]
pushref.i 98
pushi.e -9
push.v [stacktop]self.sprite_index
pushref.i 16777328
cmp.v.v EQ
bf [10]

:[9]
pushref.i 16777331
pop.v.v builtin.sprite_index

:[10]
pushref.i 98
pushi.e -9
push.v [stacktop]self.sprite_index
pushref.i 16777331
cmp.v.v EQ
bf [12]

:[11]
pushref.i 16777328
pop.v.v builtin.sprite_index

:[12]
pushref.i 98
pushi.e -9
push.v [stacktop]self.sprite_index
pushref.i 16777333
cmp.v.v EQ
bf [14]

:[13]
pushref.i 16777339
pop.v.v builtin.sprite_index

:[14]
pushref.i 98
pushi.e -9
push.v [stacktop]self.sprite_index
pushref.i 16777339
cmp.v.v EQ
bf [16]

:[15]
pushref.i 16777333
pop.v.v builtin.sprite_index

:[16]
pushref.i 98
pushi.e -9
push.v [stacktop]self.sprite_index
pushref.i 16777323
cmp.v.v EQ
bf [18]

:[17]
pushref.i 16777324
pop.v.v builtin.sprite_index

:[18]
pushref.i 98
pushi.e -9
push.v [stacktop]self.sprite_index
pushref.i 16777325
cmp.v.v EQ
bf [20]

:[19]
pushref.i 16777324
pop.v.v builtin.sprite_index

:[20]
pushref.i 98
pushi.e -9
push.v [stacktop]self.sprite_index
pushref.i 16777324
cmp.v.v EQ
bf [22]

:[21]
pushref.i 98
pushi.e -9
push.v [stacktop]self.itemequip
push.s "candle"@957
cmp.s.v EQ
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
pushref.i 16777325
pop.v.v builtin.sprite_index

:[25]
pushref.i 98
pushi.e -9
push.v [stacktop]self.sprite_index
pushref.i 16777343
cmp.v.v EQ
bf [27]

:[26]
pushref.i 98
pushi.e -9
push.v [stacktop]self.itemequip
push.s "candle"@957
cmp.s.v EQ
b [28]

:[27]
push.e 0

:[28]
bf [30]

:[29]
pushref.i 16777344
pop.v.v builtin.sprite_index

:[30]
pushref.i 98
pushi.e -9
push.v [stacktop]self.sprite_index
pushref.i 16777344
cmp.v.v EQ
bf [end]

:[31]
pushref.i 16777343
pop.v.v builtin.sprite_index

:[end]