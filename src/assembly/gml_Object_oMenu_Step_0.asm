; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v builtin.quit
conv.v.b
not.b
bf [2]

:[1]
push.v builtin.image_alpha
pushi.e 1
cmp.i.v NEQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v builtin.image_alpha
push.v builtin.fadeSpeed
add.v.v
pop.v.v builtin.image_alpha

:[5]
push.v builtin.quit
conv.v.b
bf [9]

:[6]
push.v builtin.image_alpha
push.v builtin.quitSpeed
sub.v.v
pop.v.v builtin.image_alpha
pushref.i 128
pushi.e -9
pushenv [8]

:[7]
push.v builtin.image_alpha
pushref.i 72
pushi.e -9
push.v [stacktop]self.quitSpeed
sub.v.v
pop.v.v builtin.image_alpha

:[8]
popenv [7]

:[9]
push.v builtin.image_alpha
push.d 0.5
cmp.d.v GTE
bf [11]

:[10]
pushi.e 1
pop.v.i builtin.completed

:[11]
pushref.i 132
call.i instance_exists(argc=1)
conv.v.b
bf [13]

:[12]
pushi.e 1
pop.v.b builtin.selected
b [14]

:[13]
pushi.e 0
pop.v.b builtin.selected

:[14]
pushi.e 40
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [16]

:[15]
pushi.e 83
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [17]

:[16]
push.e 1

:[17]
bf [27]

:[18]
push.v builtin.selected
conv.v.b
not.b
bf [27]

:[19]
push.v builtin.menuSelected
pushi.e 1
add.i.v
pop.v.v builtin.menuSelected
push.v builtin.menuSelected
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
pushglb.v global.any_save_exists
conv.v.b
not.b
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
push.v builtin.menuSelected
pushi.e 1
add.i.v
pop.v.v builtin.menuSelected

:[24]
push.v builtin.menuSelected
pushi.e 3
cmp.i.v GT
bf [26]

:[25]
pushi.e 0
pop.v.i builtin.menuSelected

:[26]
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
pushref.i 33554501
call.i audio_play_sound(argc=6)
popz.v

:[27]
pushi.e 38
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [29]

:[28]
pushi.e 87
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [30]

:[29]
push.e 1

:[30]
bf [40]

:[31]
push.v builtin.selected
conv.v.b
not.b
bf [40]

:[32]
push.v builtin.menuSelected
pushi.e 1
sub.i.v
pop.v.v builtin.menuSelected
push.v builtin.menuSelected
pushi.e 1
cmp.i.v EQ
bf [34]

:[33]
pushglb.v global.any_save_exists
conv.v.b
not.b
b [35]

:[34]
push.e 0

:[35]
bf [37]

:[36]
push.v builtin.menuSelected
pushi.e 1
sub.i.v
pop.v.v builtin.menuSelected

:[37]
push.v builtin.menuSelected
pushi.e 0
cmp.i.v LT
bf [39]

:[38]
pushi.e 3
pop.v.i builtin.menuSelected

:[39]
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
pushref.i 33554501
call.i audio_play_sound(argc=6)
popz.v

:[40]
push.v builtin.menuSelected
pushi.e 3
cmp.i.v GT
bf [42]

:[41]
pushi.e 0
pop.v.i builtin.menuSelected
b [44]

:[42]
push.v builtin.menuSelected
pushi.e 0
cmp.i.v LT
bf [44]

:[43]
pushi.e 3
pop.v.i builtin.menuSelected

:[44]
push.v builtin.menuSelected
pushi.e 0
cmp.i.v EQ
bf [73]

:[45]
pushi.e 0
pop.v.i local.i

:[46]
pushloc.v local.i
push.v builtin.total_slots
cmp.v.v LT
bf [51]

:[47]
push.s "akumu"@633
pushloc.v local.i
call.i string(argc=1)
add.v.s
push.s ".ini"@635
add.s.v
pop.v.v local.file
pushloc.v local.file
call.i file_exists(argc=1)
conv.v.b
bf [49]

:[48]
pushi.e 4
conv.i.v
b [50]

:[49]
pushi.e 0
conv.i.v

:[50]
pop.v.v builtin.image_index
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [46]

:[51]
pushi.e 90
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [56]

:[52]
pushi.e 13
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [54]

:[53]
push.v builtin.selected
pushi.e 0
cmp.b.v EQ
b [55]

:[54]
push.e 0

:[55]
b [57]

:[56]
push.e 1

:[57]
bf [73]

:[58]
pushi.e 0
pop.v.i local.i

:[59]
pushloc.v local.i
push.v builtin.total_slots
cmp.v.v LT
bf [73]

:[60]
push.s "akumu"@633
pushloc.v local.i
call.i string(argc=1)
add.v.s
push.s ".ini"@635
add.s.v
pop.v.v local.file
pushglb.v global.any_save_exists
conv.v.b
bf [67]

:[61]
push.v builtin.completed
pushi.e 1
cmp.i.v EQ
bf [63]

:[62]
push.v builtin.selected
pushi.e 0
cmp.b.v EQ
b [64]

:[63]
push.e 0

:[64]
bf [66]

:[65]
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
pushref.i 108
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
pushi.e 1
pop.v.b builtin.selected

:[66]
b [72]

:[67]
push.v builtin.completed
pushi.e 1
cmp.i.v EQ
bf [69]

:[68]
push.v builtin.selected
pushi.e 0
cmp.b.v EQ
b [70]

:[69]
push.e 0

:[70]
bf [72]

:[71]
pushi.e 1
pushref.i 53
pushi.e -9
pop.v.b [stacktop]self.canCount
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
pushref.i 132
push.i -999999999
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=4)
popz.v
pushref.i 50331683
pushref.i 132
pushi.e -9
pop.v.v [stacktop]self.targetRoom
pushi.e 1
pop.v.b builtin.selected

:[72]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [59]

:[73]
push.v builtin.menuSelected
pushi.e 1
cmp.i.v EQ
bf [102]

:[74]
pushi.e 0
pop.v.i local.i

:[75]
pushloc.v local.i
push.v builtin.total_slots
cmp.v.v LT
bf [80]

:[76]
push.s "akumu"@633
pushloc.v local.i
call.i string(argc=1)
add.v.s
push.s ".ini"@635
add.s.v
pop.v.v local.file
pushloc.v local.file
call.i file_exists(argc=1)
conv.v.b
bf [78]

:[77]
pushi.e 5
conv.i.v
b [79]

:[78]
pushi.e 1
conv.i.v

:[79]
pop.v.v builtin.image_index
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [75]

:[80]
pushi.e 90
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [85]

:[81]
pushi.e 13
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [83]

:[82]
push.v builtin.selected
pushi.e 0
cmp.b.v EQ
b [84]

:[83]
push.e 0

:[84]
b [86]

:[85]
push.e 1

:[86]
bf [102]

:[87]
pushi.e 0
pop.v.i local.i

:[88]
pushloc.v local.i
push.v builtin.total_slots
cmp.v.v LT
bf [102]

:[89]
push.s "akumu"@633
pushloc.v local.i
call.i string(argc=1)
add.v.s
push.s ".ini"@635
add.s.v
pop.v.v local.file
pushglb.v global.any_save_exists
conv.v.b
bf [96]

:[90]
push.v builtin.completed
pushi.e 1
cmp.i.v EQ
bf [92]

:[91]
push.v builtin.selected
pushi.e 0
cmp.b.v EQ
b [93]

:[92]
push.e 0

:[93]
bf [95]

:[94]
pushi.e 1
pushref.i 53
pushi.e -9
pop.v.b [stacktop]self.canCount
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
pushref.i 132
push.i -999999999
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=4)
popz.v
pushref.i 50331683
pushref.i 132
pushi.e -9
pop.v.v [stacktop]self.targetRoom
pushi.e 1
pop.v.b builtin.selected

:[95]
b [101]

:[96]
push.v builtin.completed
pushi.e 1
cmp.i.v EQ
bf [98]

:[97]
push.v builtin.selected
pushi.e 0
cmp.b.v EQ
b [99]

:[98]
push.e 0

:[99]
bf [101]

:[100]
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
pushref.i 108
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
pushi.e 1
pop.v.b builtin.selected

:[101]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [88]

:[102]
push.v builtin.menuSelected
pushi.e 2
cmp.i.v EQ
bf [121]

:[103]
pushi.e 0
pop.v.i local.i

:[104]
pushloc.v local.i
push.v builtin.total_slots
cmp.v.v LT
bf [109]

:[105]
push.s "akumu"@633
pushloc.v local.i
call.i string(argc=1)
add.v.s
push.s ".ini"@635
add.s.v
pop.v.v local.file
pushloc.v local.file
call.i file_exists(argc=1)
conv.v.b
bf [107]

:[106]
pushi.e 6
conv.i.v
b [108]

:[107]
pushi.e 2
conv.i.v

:[108]
pop.v.v builtin.image_index
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [104]

:[109]
pushi.e 90
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [114]

:[110]
pushi.e 13
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [112]

:[111]
push.v builtin.selected
pushi.e 0
cmp.b.v EQ
b [113]

:[112]
push.e 0

:[113]
b [115]

:[114]
push.e 1

:[115]
bf [121]

:[116]
push.v builtin.completed
pushi.e 1
cmp.i.v EQ
bf [118]

:[117]
push.v builtin.selected
pushi.e 0
cmp.b.v EQ
b [119]

:[118]
push.e 0

:[119]
bf [121]

:[120]
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
pushref.i 132
push.i -999999999
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=4)
popz.v
pushref.i 50331650
pushref.i 132
pushi.e -9
pop.v.v [stacktop]self.targetRoom
pushi.e -35
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e -7
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.y
pushi.e 3
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.face
pushi.e 1
pop.v.b builtin.selected

:[121]
push.v builtin.menuSelected
pushi.e 3
cmp.i.v EQ
bf [142]

:[122]
pushi.e 0
pop.v.i local.i

:[123]
pushloc.v local.i
push.v builtin.total_slots
cmp.v.v LT
bf [128]

:[124]
push.s "akumu"@633
pushloc.v local.i
call.i string(argc=1)
add.v.s
push.s ".ini"@635
add.s.v
pop.v.v local.file
pushloc.v local.file
call.i file_exists(argc=1)
conv.v.b
bf [126]

:[125]
pushi.e 7
conv.i.v
b [127]

:[126]
pushi.e 3
conv.i.v

:[127]
pop.v.v builtin.image_index
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [123]

:[128]
pushi.e 90
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [133]

:[129]
pushi.e 13
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [131]

:[130]
push.v builtin.selected
pushi.e 0
cmp.b.v EQ
b [132]

:[131]
push.e 0

:[132]
b [134]

:[133]
push.e 1

:[134]
bf [142]

:[135]
push.v builtin.completed
pushi.e 1
cmp.i.v EQ
bf [137]

:[136]
push.v builtin.selected
pushi.e 0
cmp.b.v EQ
b [138]

:[137]
push.e 0

:[138]
bf [142]

:[139]
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
pushi.e 1
pop.v.b builtin.quit
b [141]

> gml_Script_anon@4070@gml_Object_oMenu_Step_0 (locals=0, argc=0)
:[140]
call.i game_end(argc=0)
popz.v
exit.i

:[141]
push.i [function]gml_Script_anon@4070@gml_Object_oMenu_Step_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 1000
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v

:[142]
pushglb.v global.any_save_exists
conv.v.b
bf [end]

:[143]
push.v builtin.image_index
pushi.e 4
add.i.v
pop.v.v builtin.image_index

:[end]