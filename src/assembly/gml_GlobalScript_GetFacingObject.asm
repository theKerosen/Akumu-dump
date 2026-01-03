:[0]
b [12]

> gml_Script_GetFacingObject (locals=2, argc=0)
:[1]
push.v builtin.x
pop.v.v local.tx
push.v builtin.y
pop.v.v local.ty
push.v builtin.face
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [6]

:[2]
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [7]

:[3]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [8]

:[4]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [9]

:[5]
b [10]

:[6]
push.v local.ty
pushi.e 8
add.i.v
pop.v.v local.ty
b [10]

:[7]
push.v local.tx
pushi.e 8
add.i.v
pop.v.v local.tx
b [10]

:[8]
push.v local.ty
pushi.e 8
sub.i.v
pop.v.v local.ty
b [10]

:[9]
push.v local.tx
pushi.e 8
sub.i.v
pop.v.v local.tx
b [10]

:[10]
popz.v
pushref.i 56
pushloc.v local.ty
pushloc.v local.tx
call.i instance_place(argc=3)
ret.v

:[11]
exit.i

:[12]
push.i [function]gml_Script_GetFacingObject
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.GetFacingObject
popz.v

:[end]