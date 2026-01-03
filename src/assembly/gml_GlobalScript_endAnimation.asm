:[0]
b [11]

> gml_Script_endAnimation (locals=4, argc=0)
:[1]
push.v builtin.sprite_index
pop.v.v local._sprite
push.v builtin.image_index
pop.v.v local._image
pushbltn.v builtin.argument_count
pushi.e 0
cmp.i.v GT
bf [3]

:[2]
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v local._sprite

:[3]
pushbltn.v builtin.argument_count
pushi.e 1
cmp.i.v GT
bf [5]

:[4]
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v local._image

:[5]
push.v builtin.sprite_index
call.i sprite_get_speed_type(argc=1)
pop.v.v local._type
push.v builtin.sprite_index
call.i sprite_get_speed(argc=1)
push.v builtin.image_speed
mul.v.v
pop.v.v local._spd
pushloc.v local._type
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushloc.v local._spd
pushbltn.v builtin.room_speed
div.v.v
pop.v.v local._spd

:[7]
pushbltn.v builtin.argument_count
pushi.e 2
cmp.i.v GT
bf [9]

:[8]
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v local._spd

:[9]
pushloc.v local._image
pushloc.v local._spd
add.v.v
pushloc.v local._sprite
call.i sprite_get_number(argc=1)
cmp.v.v GTE
conv.b.v
ret.v

:[10]
exit.i

:[11]
push.i [function]gml_Script_endAnimation
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.endAnimation
popz.v

:[end]