:[0]
call.i draw_self(argc=0)
popz.v
push.v builtin.state
pushi.e 1
cmp.i.v EQ
bf [7]

:[1]
pushglb.v global.textComplete
conv.v.b
bf [7]

:[2]
pushref.i 80
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [4]

:[3]
pushref.i 80
pushi.e -999
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=4)
popz.v

:[4]
pushref.i 80
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[5]
pushref.i 81
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [7]

:[6]
pushref.i 81
push.s "UI"@724
conv.s.v
push.v builtin.y
push.v builtin.x
call.i instance_create_layer(argc=4)
popz.v

:[7]
pushi.e 40
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [9]

:[8]
pushi.e 83
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [10]

:[9]
push.e 1

:[10]
pop.v.b builtin.keyDown
pushi.e 38
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [12]

:[11]
pushi.e 87
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [13]

:[12]
push.e 1

:[13]
pop.v.b builtin.keyUp
pushi.e 90
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [15]

:[14]
pushi.e 13
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [16]

:[15]
push.e 1

:[16]
pop.v.b builtin.keyAction
push.v builtin.keyDown
conv.v.b
bf [18]

:[17]
pushglb.v global.textComplete
conv.v.b
b [19]

:[18]
push.e 0

:[19]
bf [22]

:[20]
pushref.i 80
call.i instance_exists(argc=1)
conv.v.b
bf [22]

:[21]
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

:[22]
push.v builtin.keyUp
conv.v.b
bf [24]

:[23]
pushglb.v global.textComplete
conv.v.b
b [25]

:[24]
push.e 0

:[25]
bf [28]

:[26]
pushref.i 80
call.i instance_exists(argc=1)
conv.v.b
bf [28]

:[27]
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

:[28]
pushref.i 49
pushi.e -9
push.v [stacktop]self.opSelected
pushi.e 0
cmp.i.v LT
bf [30]

:[29]
pushi.e 1
pushref.i 49
pushi.e -9
pop.v.i [stacktop]self.opSelected

:[30]
pushref.i 49
pushi.e -9
push.v [stacktop]self.opSelected
pushi.e 1
cmp.i.v GT
bf [32]

:[31]
pushi.e 0
pushref.i 49
pushi.e -9
pop.v.i [stacktop]self.opSelected

:[32]
push.v builtin.keyAction
conv.v.b
bf [40]

:[33]
pushref.i 81
call.i instance_exists(argc=1)
conv.v.b
bf [35]

:[34]
pushref.i 81
call.i instance_destroy(argc=1)
popz.v

:[35]
pushref.i 80
call.i instance_exists(argc=1)
conv.v.b
bf [37]

:[36]
pushref.i 80
call.i instance_destroy(argc=1)
popz.v

:[37]
pushref.i 49
pushi.e -9
push.v [stacktop]self.opSelected
pushi.e 0
cmp.i.v EQ
bf [39]

:[38]
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554484
call.i audio_play_sound(argc=3)
popz.v
pushi.e 2
push.v builtin.oTutorial
pushi.e -9
pop.v.i [stacktop]self.mirror
pushref.i 53
pushi.e -9
push.v [stacktop]self.inventory
call.i ds_list_clear(argc=1)
popz.v
pushref.i 92
pushi.e -9
push.v [stacktop]self.foundList
call.i ds_list_clear(argc=1)
popz.v
pushi.e 1
pop.v.i builtin.image_index
push.i 65530
setowner.e
pushi.e 120
conv.i.v
pushi.e -6
pushi.e 1
pop.v.v [array]self.alarm
pushi.e 5
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
pushi.e 0
pop.v.b global.textComplete
pushi.e 1
pushref.i 49
pushi.e -9
pop.v.i [stacktop]self.opSelected

:[39]
b [end]

:[40]
pushref.i 49
pushi.e -9
push.v [stacktop]self.opSelected
pushi.e 1
cmp.i.v EQ
bf [end]

:[41]
pushi.e 0
pop.v.b global.textComplete
pushi.e 1
pushref.i 49
pushi.e -9
pop.v.i [stacktop]self.opSelected

:[end]