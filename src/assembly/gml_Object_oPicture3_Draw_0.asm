:[0]
call.i draw_self(argc=0)
popz.v
pushglb.v global.debounce1
pushi.e 0
cmp.b.v EQ
bf [2]

:[1]
pushglb.v global.basementpuzzlecomplete
pushi.e 0
cmp.b.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
push.v builtin.state
pushi.e 1
cmp.i.v EQ
bf [11]

:[5]
pushglb.v global.textComplete
conv.v.b
bf [11]

:[6]
pushref.i 80
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [8]

:[7]
pushref.i 80
pushi.e -999
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=4)
popz.v

:[8]
pushref.i 80
call.i instance_exists(argc=1)
conv.v.b
bf [11]

:[9]
pushref.i 81
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [11]

:[10]
pushref.i 81
push.s "UI"@724
conv.s.v
push.v builtin.y
push.v builtin.x
call.i instance_create_layer(argc=4)
popz.v

:[11]
pushi.e 40
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [13]

:[12]
pushi.e 83
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [14]

:[13]
push.e 1

:[14]
pop.v.b builtin.keyDown
pushi.e 38
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [16]

:[15]
pushi.e 87
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [17]

:[16]
push.e 1

:[17]
pop.v.b builtin.keyUp
pushi.e 90
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [19]

:[18]
pushi.e 13
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [20]

:[19]
push.e 1

:[20]
pop.v.b builtin.keyAction
push.v builtin.keyDown
conv.v.b
bf [22]

:[21]
pushglb.v global.textComplete
conv.v.b
b [23]

:[22]
push.e 0

:[23]
bf [26]

:[24]
pushref.i 80
call.i instance_exists(argc=1)
conv.v.b
bf [26]

:[25]
pushref.i 49
pushi.e -9
dup.i 4
push.v [stacktop]self.opSelected
pushi.e 1
add.i.v
pop.i.v [stacktop]self.opSelected
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
push.d 1.1
conv.d.v
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554501
call.i audio_play_sound(argc=6)
popz.v

:[26]
push.v builtin.keyUp
conv.v.b
bf [28]

:[27]
pushglb.v global.textComplete
conv.v.b
b [29]

:[28]
push.e 0

:[29]
bf [32]

:[30]
pushref.i 80
call.i instance_exists(argc=1)
conv.v.b
bf [32]

:[31]
pushref.i 49
pushi.e -9
dup.i 4
push.v [stacktop]self.opSelected
pushi.e 1
sub.i.v
pop.i.v [stacktop]self.opSelected
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
push.d 1.1
conv.d.v
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554501
call.i audio_play_sound(argc=6)
popz.v

:[32]
pushref.i 49
pushi.e -9
push.v [stacktop]self.opSelected
pushi.e 0
cmp.i.v LT
bf [34]

:[33]
pushi.e 1
pushref.i 49
pushi.e -9
pop.v.i [stacktop]self.opSelected

:[34]
pushref.i 49
pushi.e -9
push.v [stacktop]self.opSelected
pushi.e 1
cmp.i.v GT
bf [36]

:[35]
pushi.e 0
pushref.i 49
pushi.e -9
pop.v.i [stacktop]self.opSelected

:[36]
push.v builtin.keyAction
conv.v.b
bf [44]

:[37]
pushref.i 81
call.i instance_exists(argc=1)
conv.v.b
bf [39]

:[38]
pushref.i 81
call.i instance_destroy(argc=1)
popz.v

:[39]
pushref.i 80
call.i instance_exists(argc=1)
conv.v.b
bf [41]

:[40]
pushref.i 80
call.i instance_destroy(argc=1)
popz.v

:[41]
pushref.i 49
pushi.e -9
push.v [stacktop]self.opSelected
pushi.e 0
cmp.i.v EQ
bf [43]

:[42]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 1
pop.v.b global.debounce1
pushi.e 0
pop.v.b global.textComplete
pushi.e 1
pushref.i 49
pushi.e -9
pop.v.i [stacktop]self.opSelected

:[43]
b [end]

:[44]
pushref.i 49
pushi.e -9
push.v [stacktop]self.opSelected
pushi.e 1
cmp.i.v EQ
bf [end]

:[45]
pushi.e 0
pop.v.b global.textComplete
pushi.e 1
pushref.i 49
pushi.e -9
pop.v.i [stacktop]self.opSelected

:[end]