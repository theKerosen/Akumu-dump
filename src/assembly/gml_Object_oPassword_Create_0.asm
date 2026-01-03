:[0]
push.i -99999999
pop.v.i builtin.depth
pushi.e 5
pop.v.i builtin.digit_count
push.i 65536
setowner.e
pushi.e 0
conv.i.v
push.v builtin.digit_count
call.i array_create(argc=2)
pop.v.v builtin.input_digits
pushi.e 0
pop.v.i builtin.digit_index
push.i 65530
setowner.e
pushi.e 6
conv.i.v
pushi.e 9
conv.i.v
pushi.e 5
conv.i.v
pushi.e 3
conv.i.v
pushi.e 8
conv.i.v
call.i @@NewGMLArray@@(argc=5)
pop.v.v builtin.correct_code
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
call.i @@NewGMLArray@@(argc=5)
pop.v.v builtin.forest_code
pushi.e 6
conv.i.v
pushi.e 6
conv.i.v
pushi.e 6
conv.i.v
pushi.e 6
conv.i.v
pushi.e 6
conv.i.v
call.i @@NewGMLArray@@(argc=5)
pop.v.v builtin.monster_code
pushi.e 0
pop.v.i builtin.input_delay
pushi.e 0
pop.v.i builtin.code_status
pushi.e 0
pop.v.i builtin.arrowImage
push.d 0.008333333333333333
pop.v.d builtin.arrowImageSpeed
pushi.e 0
pop.v.i builtin.bgImage
push.d 0.16666666666666666
pop.v.d builtin.bgImageSpeed
pushref.i 16777307
pop.v.v builtin.designedSprite

:[end]