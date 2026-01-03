:[0]
push.v builtin.entrando
pushi.e 1
cmp.b.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i builtin.image_speed
pushi.e 8
pop.v.i builtin.image_index
pushi.e 1
pop.v.b builtin.deitado
pushi.e 0
pop.v.b builtin.entrando

:[2]
push.v builtin.saindo
pushi.e 1
cmp.b.v EQ
bf [end]

:[3]
pushref.i 98
call.i instance_destroy(argc=1)
popz.v
pushi.e 0
pop.v.i builtin.image_speed
pushref.i 16777217
pop.v.v builtin.sprite_index
pushref.i 98
push.s "Instances"@50
conv.s.v
pushi.e 94
conv.i.v
pushi.e 80
conv.i.v
call.i instance_create_layer(argc=4)
popz.v
pushi.e 0
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.face
pushi.e 0
pop.v.b builtin.saindo

:[end]