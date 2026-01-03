; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v builtin.image_alpha
pushi.e 1
cmp.i.v NEQ
bf [2]

:[1]
push.v builtin.image_alpha
push.v builtin.fadeSpeed
add.v.v
pop.v.v builtin.image_alpha

:[2]
pushref.i 132
call.i instance_exists(argc=1)
conv.v.b
not.b
pop.v.b builtin.completed
pushref.i 132
call.i instance_exists(argc=1)
pop.v.v builtin.selected
push.v builtin.selected
conv.v.b
not.b
bf [13]

:[3]
pushi.e 40
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [5]

:[4]
pushi.e 83
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [6]

:[5]
push.e 1

:[6]
bf [8]

:[7]
push.v builtin.optionsSelected
pushi.e 1
add.i.v
pop.v.v builtin.optionsSelected
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

:[8]
pushi.e 38
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [10]

:[9]
pushi.e 87
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [11]

:[10]
push.e 1

:[11]
bf [13]

:[12]
push.v builtin.optionsSelected
pushi.e 1
sub.i.v
pop.v.v builtin.optionsSelected
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

:[13]
push.v builtin.optionsSelected
pushi.e 3
cmp.i.v GT
bf [15]

:[14]
pushi.e 0
pop.v.i builtin.optionsSelected
b [17]

:[15]
push.v builtin.optionsSelected
pushi.e 0
cmp.i.v LT
bf [17]

:[16]
pushi.e 3
pop.v.i builtin.optionsSelected

:[17]
pushglb.v global.fullscreen
pushi.e 1
mul.i.v
pushglb.v global.crt
pushi.e 2
mul.i.v
add.v.v
pop.v.v local.combination
push.v builtin.optionsSelected
pushloc.v local.combination
pushi.e 4
mul.i.v
add.v.v
pop.v.v builtin.image_index
push.v builtin.optionsSelected
pushi.e 0
cmp.i.v EQ
bf [22]

:[18]
pushi.e 90
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [20]

:[19]
pushi.e 13
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [21]

:[20]
push.e 1

:[21]
b [23]

:[22]
push.e 0

:[23]
bf [32]

:[24]
push.v builtin.completed
conv.v.b
bf [26]

:[25]
push.v builtin.selected
conv.v.b
not.b
b [27]

:[26]
push.e 0

:[27]
bf [32]

:[28]
call.i window_get_fullscreen(argc=0)
pushi.e 1
cmp.i.v EQ
bf [30]

:[29]
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554443
call.i audio_play_sound(argc=6)
popz.v
pushi.e 0
pop.v.b global.fullscreen
b [31]

:[30]
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554517
call.i audio_play_sound(argc=6)
popz.v
pushi.e 1
pop.v.b global.fullscreen

:[31]
call.i gml_Script_scrSaveConfig(argc=0)
popz.v

:[32]
push.v builtin.optionsSelected
pushi.e 2
cmp.i.v EQ
bf [37]

:[33]
pushi.e 90
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [35]

:[34]
pushi.e 13
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [36]

:[35]
push.e 1

:[36]
b [38]

:[37]
push.e 0

:[38]
bf [44]

:[39]
push.v builtin.completed
conv.v.b
bf [41]

:[40]
push.v builtin.selected
conv.v.b
not.b
b [42]

:[41]
push.e 0

:[42]
bf [44]

:[43]
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554517
call.i audio_play_sound(argc=6)
popz.v
pushref.i 109
push.s "Instances"@50
conv.s.v
push.v builtin.y
push.v builtin.x
call.i instance_create_layer(argc=4)
popz.v
call.i @@This@@(argc=0)
call.i instance_deactivate_object(argc=1)
popz.v
pushref.i 128
call.i instance_deactivate_object(argc=1)
popz.v

:[44]
push.v builtin.optionsSelected
pushi.e 1
cmp.i.v EQ
bf [49]

:[45]
pushi.e 90
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [47]

:[46]
pushi.e 13
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [48]

:[47]
push.e 1

:[48]
b [50]

:[49]
push.e 0

:[50]
bf [56]

:[51]
push.v builtin.completed
conv.v.b
bf [53]

:[52]
push.v builtin.selected
conv.v.b
not.b
b [54]

:[53]
push.e 0

:[54]
bf [56]

:[55]
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554517
call.i audio_play_sound(argc=6)
popz.v
pushglb.v global.crt
conv.v.b
not.b
pop.v.b global.crt
call.i gml_Script_scrSaveConfig(argc=0)
popz.v

:[56]
push.v builtin.optionsSelected
pushi.e 3
cmp.i.v EQ
bf [61]

:[57]
pushi.e 90
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [59]

:[58]
pushi.e 13
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [60]

:[59]
push.e 1

:[60]
b [62]

:[61]
push.e 0

:[62]
bf [end]

:[63]
push.v builtin.completed
conv.v.b
bf [65]

:[64]
push.v builtin.selected
conv.v.b
not.b
b [66]

:[65]
push.e 0

:[66]
bf [end]

:[67]
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554443
call.i audio_play_sound(argc=6)
popz.v
pushref.i 132
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [69]

:[68]
pushref.i 132
push.i -999999999
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=4)
pop.v.v local.inst
pushref.i 50331649
pushloc.v local.inst
pushi.e -9
pop.v.v [stacktop]self.targetRoom

:[69]
pushi.e 1
pop.v.b builtin.selected

:[end]