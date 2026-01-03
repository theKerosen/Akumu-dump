:[0]
call.i draw_self(argc=0)
popz.v
push.v builtin.hasBook
pushi.e 0
cmp.b.v EQ
bf [2]

:[1]
exit.i

:[2]
push.v builtin.debounce
pushi.e 0
cmp.b.v EQ
bf [end]

:[3]
push.v builtin.state
pushi.e 1
cmp.i.v EQ
bf [10]

:[4]
pushglb.v global.textComplete
conv.v.b
bf [10]

:[5]
pushref.i 80
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [7]

:[6]
pushref.i 80
pushi.e -999
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=4)
popz.v

:[7]
pushref.i 80
call.i instance_exists(argc=1)
conv.v.b
bf [10]

:[8]
pushref.i 81
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [10]

:[9]
pushref.i 81
push.s "UI"@724
conv.s.v
push.v builtin.y
push.v builtin.x
call.i instance_create_layer(argc=4)
popz.v

:[10]
pushi.e 40
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [12]

:[11]
pushi.e 83
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [13]

:[12]
push.e 1

:[13]
pop.v.b builtin.keyDown
pushi.e 38
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [15]

:[14]
pushi.e 87
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [16]

:[15]
push.e 1

:[16]
pop.v.b builtin.keyUp
pushi.e 90
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [18]

:[17]
pushi.e 13
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [19]

:[18]
push.e 1

:[19]
pop.v.b builtin.keyAction
push.v builtin.keyDown
conv.v.b
bf [21]

:[20]
pushglb.v global.textComplete
conv.v.b
b [22]

:[21]
push.e 0

:[22]
bf [25]

:[23]
pushref.i 80
call.i instance_exists(argc=1)
conv.v.b
bf [25]

:[24]
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

:[25]
push.v builtin.keyUp
conv.v.b
bf [27]

:[26]
pushglb.v global.textComplete
conv.v.b
b [28]

:[27]
push.e 0

:[28]
bf [31]

:[29]
pushref.i 80
call.i instance_exists(argc=1)
conv.v.b
bf [31]

:[30]
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

:[31]
pushref.i 49
pushi.e -9
push.v [stacktop]self.opSelected
pushi.e 0
cmp.i.v LT
bf [33]

:[32]
pushi.e 1
pushref.i 49
pushi.e -9
pop.v.i [stacktop]self.opSelected

:[33]
pushref.i 49
pushi.e -9
push.v [stacktop]self.opSelected
pushi.e 1
cmp.i.v GT
bf [35]

:[34]
pushi.e 0
pushref.i 49
pushi.e -9
pop.v.i [stacktop]self.opSelected

:[35]
push.v builtin.keyAction
conv.v.b
bf [43]

:[36]
pushref.i 81
call.i instance_exists(argc=1)
conv.v.b
bf [38]

:[37]
pushref.i 81
call.i instance_destroy(argc=1)
popz.v

:[38]
pushref.i 80
call.i instance_exists(argc=1)
conv.v.b
bf [40]

:[39]
pushref.i 80
call.i instance_destroy(argc=1)
popz.v

:[40]
pushref.i 49
pushi.e -9
push.v [stacktop]self.opSelected
pushi.e 0
cmp.i.v EQ
bf [42]

:[41]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 1
pop.v.b builtin.debounce
pushi.e 0
pop.v.b global.textComplete
pushi.e 1
pushref.i 49
pushi.e -9
pop.v.i [stacktop]self.opSelected

:[42]
b [end]

:[43]
pushref.i 49
pushi.e -9
push.v [stacktop]self.opSelected
pushi.e 1
cmp.i.v EQ
bf [end]

:[44]
pushi.e 0
pop.v.b global.textComplete
pushi.e 1
pushref.i 49
pushi.e -9
pop.v.i [stacktop]self.opSelected

:[end]