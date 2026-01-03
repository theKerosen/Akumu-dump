:[0]
b [43]

> gml_Script_scrDialogueOption (locals=0, argc=0)
:[1]
push.v builtin.state
pushi.e 1
cmp.i.v EQ
bf [8]

:[2]
pushglb.v global.textComplete
conv.v.b
bf [8]

:[3]
pushref.i 80
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [5]

:[4]
pushref.i 80
pushi.e -999
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=4)
popz.v

:[5]
pushref.i 80
call.i instance_exists(argc=1)
conv.v.b
bf [8]

:[6]
pushref.i 81
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [8]

:[7]
pushref.i 81
push.s "UI"@724
conv.s.v
push.v builtin.y
push.v builtin.x
call.i instance_create_layer(argc=4)
popz.v

:[8]
pushi.e 40
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [10]

:[9]
pushi.e 83
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [11]

:[10]
push.e 1

:[11]
pop.v.b builtin.keyDown
pushi.e 38
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [13]

:[12]
pushi.e 87
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [14]

:[13]
push.e 1

:[14]
pop.v.b builtin.keyUp
pushi.e 90
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [16]

:[15]
pushi.e 13
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [17]

:[16]
push.e 1

:[17]
pop.v.b builtin.keyAction
push.v builtin.keyDown
conv.v.b
bf [19]

:[18]
pushglb.v global.textComplete
conv.v.b
b [20]

:[19]
push.e 0

:[20]
bf [23]

:[21]
pushref.i 80
call.i instance_exists(argc=1)
conv.v.b
bf [23]

:[22]
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

:[23]
push.v builtin.keyUp
conv.v.b
bf [25]

:[24]
pushglb.v global.textComplete
conv.v.b
b [26]

:[25]
push.e 0

:[26]
bf [29]

:[27]
pushref.i 80
call.i instance_exists(argc=1)
conv.v.b
bf [29]

:[28]
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

:[29]
pushref.i 49
pushi.e -9
push.v [stacktop]self.opSelected
pushi.e 0
cmp.i.v LT
bf [31]

:[30]
pushi.e 1
pushref.i 49
pushi.e -9
pop.v.i [stacktop]self.opSelected

:[31]
pushref.i 49
pushi.e -9
push.v [stacktop]self.opSelected
pushi.e 1
cmp.i.v GT
bf [33]

:[32]
pushi.e 0
pushref.i 49
pushi.e -9
pop.v.i [stacktop]self.opSelected

:[33]
push.v builtin.keyAction
conv.v.b
bf [42]

:[34]
pushref.i 81
call.i instance_exists(argc=1)
conv.v.b
bf [36]

:[35]
pushref.i 81
call.i instance_destroy(argc=1)
popz.v

:[36]
pushref.i 80
call.i instance_exists(argc=1)
conv.v.b
bf [38]

:[37]
pushref.i 80
call.i instance_destroy(argc=1)
popz.v

:[38]
pushref.i 49
pushi.e -9
push.v [stacktop]self.opSelected
pushi.e 0
cmp.i.v EQ
bf [40]

:[39]
pushref.i 108
push.s "Instances"@50
conv.s.v
push.v builtin.y
push.v builtin.x
call.i instance_create_layer(argc=4)
popz.v
pushi.e 0
pop.v.b global.textComplete
pushi.e 1
pushref.i 49
pushi.e -9
pop.v.i [stacktop]self.opSelected
b [42]

:[40]
pushref.i 49
pushi.e -9
push.v [stacktop]self.opSelected
pushi.e 1
cmp.i.v EQ
bf [42]

:[41]
pushi.e 0
pop.v.b global.textComplete
pushi.e 1
pushref.i 49
pushi.e -9
pop.v.i [stacktop]self.opSelected
pushi.e 0
pop.v.b builtin.played

:[42]
exit.i

:[43]
push.i [function]gml_Script_scrDialogueOption
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scrDialogueOption
popz.v

:[end]