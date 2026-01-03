; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v builtin.itemequip
dup.v 0
push.s ""@36
cmp.s.v EQ
bt [4]

:[1]
dup.v 0
push.s "knife"@1215
cmp.s.v EQ
bt [5]

:[2]
dup.v 0
push.s "candle"@957
cmp.s.v EQ
bt [6]

:[3]
b [7]

:[4]
push.i 65530
setowner.e
pushref.i 16777322
pushi.e -6
pushi.e 0
pop.v.v [array]self.sprite
pushref.i 16777324
pushi.e -6
pushi.e 1
pop.v.v [array]self.sprite
pushref.i 16777319
pushi.e -6
pushi.e 2
pop.v.v [array]self.sprite
pushref.i 16777317
pushi.e -6
pushi.e 3
pop.v.v [array]self.sprite
pushref.i 16777342
pushi.e -6
pushi.e 4
pop.v.v [array]self.sprite
pushref.i 16777343
pushi.e -6
pushi.e 5
pop.v.v [array]self.sprite
pushref.i 16777341
pushi.e -6
pushi.e 6
pop.v.v [array]self.sprite
pushref.i 16777340
pushi.e -6
pushi.e 7
pop.v.v [array]self.sprite
b [7]

:[5]
push.i 65530
setowner.e
pushref.i 16777322
pushi.e -6
pushi.e 0
pop.v.v [array]self.sprite
pushref.i 16777324
pushi.e -6
pushi.e 1
pop.v.v [array]self.sprite
pushref.i 16777319
pushi.e -6
pushi.e 2
pop.v.v [array]self.sprite
pushref.i 16777317
pushi.e -6
pushi.e 3
pop.v.v [array]self.sprite
pushref.i 16777342
pushi.e -6
pushi.e 4
pop.v.v [array]self.sprite
pushref.i 16777343
pushi.e -6
pushi.e 5
pop.v.v [array]self.sprite
pushref.i 16777341
pushi.e -6
pushi.e 6
pop.v.v [array]self.sprite
pushref.i 16777340
pushi.e -6
pushi.e 7
pop.v.v [array]self.sprite
b [7]

:[6]
push.i 65530
setowner.e
pushref.i 16777327
pushi.e -6
pushi.e 0
pop.v.v [array]self.sprite
pushref.i 16777324
pushi.e -6
pushi.e 1
pop.v.v [array]self.sprite
pushref.i 16777326
pushi.e -6
pushi.e 2
pop.v.v [array]self.sprite
pushref.i 16777325
pushi.e -6
pushi.e 3
pop.v.v [array]self.sprite
pushref.i 16777346
pushi.e -6
pushi.e 4
pop.v.v [array]self.sprite
pushref.i 16777343
pushi.e -6
pushi.e 5
pop.v.v [array]self.sprite
pushref.i 16777345
pushi.e -6
pushi.e 6
pop.v.v [array]self.sprite
pushref.i 16777344
pushi.e -6
pushi.e 7
pop.v.v [array]self.sprite
b [7]

:[7]
popz.v
pushi.e 39
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bt [9]

:[8]
pushi.e 68
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
b [10]

:[9]
push.e 1

:[10]
pop.v.b builtin.key_right
pushi.e 37
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bt [12]

:[11]
pushi.e 65
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
b [13]

:[12]
push.e 1

:[13]
pop.v.b builtin.key_left
pushi.e 38
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bt [15]

:[14]
pushi.e 87
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
b [16]

:[15]
push.e 1

:[16]
pop.v.b builtin.key_up
pushi.e 40
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bt [18]

:[17]
pushi.e 83
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
b [19]

:[18]
push.e 1

:[19]
pop.v.b builtin.key_down
pushi.e 16
conv.i.v
call.i keyboard_check(argc=1)
pop.v.v builtin.key_run
push.v builtin.hsp
pushi.e 0
cmp.i.v NEQ
bf [22]

:[20]
push.v builtin.vsp
pushi.e 0
cmp.i.v NEQ
bf [22]

:[21]
push.v builtin.key_run
conv.v.b
not.b
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
push.v builtin.diagSpd
pop.v.v builtin.spd
b [27]

:[25]
push.v builtin.key_run
conv.v.b
not.b
bf [27]

:[26]
pushi.e 1
pop.v.i builtin.spd

:[27]
push.v builtin.key_right
push.v builtin.key_left
sub.v.v
push.v builtin.spd
mul.v.v
pop.v.v builtin.hsp
push.v builtin.key_down
push.v builtin.key_up
sub.v.v
push.v builtin.spd
mul.v.v
pop.v.v builtin.vsp
push.v builtin.state
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [34]

:[28]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [35]

:[29]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [36]

:[30]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [37]

:[31]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [38]

:[32]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [39]

:[33]
b [40]

:[34]
call.i gml_Script_scrPlayerCheckInteraction(argc=0)
popz.v
call.i gml_Script_scrPlayerCheckMenus(argc=0)
popz.v
b [40]

:[35]
call.i gml_Script_scrPlayerCheckReading(argc=0)
popz.v
b [40]

:[36]
call.i gml_Script_scrPlayerUpdateInventory(argc=0)
popz.v
call.i gml_Script_scrStop(argc=0)
popz.v
b [40]

:[37]
call.i gml_Script_scrStop(argc=0)
popz.v
b [40]

:[38]
call.i gml_Script_scrStop(argc=0)
popz.v
b [40]

:[39]
call.i gml_Script_scrStabDie(argc=0)
popz.v
call.i gml_Script_scrStop(argc=0)
popz.v
b [40]

:[40]
popz.v
push.v builtin.state
pushi.e 1
cmp.i.v EQ
bt [44]

:[41]
pushref.i 91
call.i instance_exists(argc=1)
conv.v.b
bt [44]

:[42]
pushref.i 144
call.i instance_exists(argc=1)
conv.v.b
bt [44]

:[43]
pushglb.v global.gamePaused
conv.v.b
b [45]

:[44]
push.e 1

:[45]
bf [47]

:[46]
call.i gml_Script_scrStop(argc=0)
popz.v

:[47]
pushi.e -6
pushi.e 3
push.v [array]self.sprite
pop.v.v builtin.mask_index
push.v builtin.vsp
pushi.e 0
cmp.i.v EQ
bf [49]

:[48]
push.v builtin.running
pushi.e 0
cmp.b.v EQ
b [50]

:[49]
push.e 0

:[50]
bf [61]

:[51]
push.v builtin.hsp
pushi.e 0
cmp.i.v GT
bf [53]

:[52]
push.v builtin.running
pushi.e 0
cmp.b.v EQ
b [54]

:[53]
push.e 0

:[54]
bf [56]

:[55]
pushi.e 0
pop.v.i builtin.face

:[56]
push.v builtin.hsp
pushi.e 0
cmp.i.v LT
bf [58]

:[57]
push.v builtin.running
pushi.e 0
cmp.b.v EQ
b [59]

:[58]
push.e 0

:[59]
bf [61]

:[60]
pushi.e 2
pop.v.i builtin.face

:[61]
push.v builtin.hsp
pushi.e 0
cmp.i.v GT
bf [63]

:[62]
push.v builtin.running
pushi.e 0
cmp.b.v EQ
b [64]

:[63]
push.e 0

:[64]
bf [66]

:[65]
pushi.e 0
pop.v.i builtin.face

:[66]
push.v builtin.hsp
pushi.e 0
cmp.i.v LT
bf [68]

:[67]
push.v builtin.running
pushi.e 0
cmp.b.v EQ
b [69]

:[68]
push.e 0

:[69]
bf [71]

:[70]
pushi.e 2
pop.v.i builtin.face

:[71]
push.v builtin.hsp
pushi.e 0
cmp.i.v EQ
bf [73]

:[72]
push.v builtin.running
pushi.e 0
cmp.b.v EQ
b [74]

:[73]
push.e 0

:[74]
bf [85]

:[75]
push.v builtin.vsp
pushi.e 0
cmp.i.v LT
bf [77]

:[76]
push.v builtin.running
pushi.e 0
cmp.b.v EQ
b [78]

:[77]
push.e 0

:[78]
bf [80]

:[79]
pushi.e 1
pop.v.i builtin.face

:[80]
push.v builtin.vsp
pushi.e 0
cmp.i.v GT
bf [82]

:[81]
push.v builtin.running
pushi.e 0
cmp.b.v EQ
b [83]

:[82]
push.e 0

:[83]
bf [85]

:[84]
pushi.e 3
pop.v.i builtin.face

:[85]
push.v builtin.vsp
pushi.e 0
cmp.i.v GT
bf [87]

:[86]
push.v builtin.face
pushi.e 1
cmp.i.v EQ
b [88]

:[87]
push.e 0

:[88]
bf [90]

:[89]
pushi.e 3
pop.v.i builtin.face

:[90]
push.v builtin.vsp
pushi.e 0
cmp.i.v LT
bf [92]

:[91]
push.v builtin.face
pushi.e 3
cmp.i.v EQ
b [93]

:[92]
push.e 0

:[93]
bf [95]

:[94]
pushi.e 1
pop.v.i builtin.face

:[95]
pushi.e -6
push.v builtin.face
conv.v.i
push.v [array]self.sprite
pop.v.v builtin.sprite_index
pushref.i 118
push.v builtin.y
push.v builtin.x
push.v builtin.hsp
add.v.v
call.i place_meeting(argc=3)
conv.v.b
bf [97]

:[96]
pushi.e 0
pop.v.i builtin.hsp

:[97]
pushref.i 118
push.v builtin.y
push.v builtin.vsp
add.v.v
push.v builtin.x
call.i place_meeting(argc=3)
conv.v.b
bf [99]

:[98]
pushi.e 0
pop.v.i builtin.vsp

:[99]
call.i gml_Script_scrRun(argc=0)
popz.v
push.v builtin.x
push.v builtin.hsp
add.v.v
pop.v.v builtin.x
push.v builtin.y
push.v builtin.vsp
add.v.v
pop.v.v builtin.y
push.v builtin.x
pop.v.v builtin.previous_x
push.v builtin.y
pop.v.v builtin.previous_y
push.v builtin.hsp
pushi.e 0
cmp.i.v EQ
bf [105]

:[100]
push.v builtin.vsp
pushi.e 0
cmp.i.v EQ
bf [105]

:[101]
push.v builtin.running
pushi.e 0
cmp.b.v EQ
bf [105]

:[102]
push.v builtin.state
pushi.e 2
cmp.i.v NEQ
bf [105]

:[103]
push.v builtin.state
pushi.e 4
cmp.i.v NEQ
bf [105]

:[104]
pushglb.v global.gamePaused
conv.v.b
not.b
b [106]

:[105]
push.e 0

:[106]
bf [108]

:[107]
pushi.e 0
pop.v.i builtin.image_index

:[108]
push.v builtin.hsp
pushi.e 0
cmp.i.v EQ
bf [114]

:[109]
push.v builtin.vsp
pushi.e 0
cmp.i.v EQ
bf [114]

:[110]
push.v builtin.running
pushi.e 1
cmp.b.v EQ
bf [114]

:[111]
push.v builtin.state
pushi.e 2
cmp.i.v NEQ
bf [114]

:[112]
push.v builtin.state
pushi.e 4
cmp.i.v NEQ
bf [114]

:[113]
pushglb.v global.gamePaused
conv.v.b
not.b
b [115]

:[114]
push.e 0

:[115]
bf [117]

:[116]
pushi.e 0
pop.v.b builtin.running
pushi.e 0
pop.v.i builtin.image_index

:[117]
push.v builtin.hsp
pushi.e 0
cmp.i.v EQ
bf [122]

:[118]
push.v builtin.vsp
pushi.e 0
cmp.i.v EQ
bf [122]

:[119]
push.v builtin.state
pushi.e 2
cmp.i.v NEQ
bf [122]

:[120]
push.v builtin.state
pushi.e 4
cmp.i.v NEQ
bf [122]

:[121]
pushglb.v global.gamePaused
conv.v.b
not.b
b [123]

:[122]
push.e 0

:[123]
bf [134]

:[124]
push.v builtin.face
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [129]

:[125]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [130]

:[126]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [131]

:[127]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [132]

:[128]
b [133]

:[129]
pushi.e 2
pop.v.i builtin.face
b [133]

:[130]
pushi.e 0
pop.v.i builtin.face
b [133]

:[131]
pushi.e 1
pop.v.i builtin.face
b [133]

:[132]
pushi.e 3
pop.v.i builtin.face
b [133]

:[133]
popz.v

:[134]
push.v builtin.hsp
pushi.e 0
cmp.i.v EQ
bf [137]

:[135]
push.v builtin.vsp
pushi.e 0
cmp.i.v EQ
bf [137]

:[136]
push.v builtin.running
pushi.e 1
cmp.b.v EQ
b [138]

:[137]
push.e 0

:[138]
bf [140]

:[139]
pushi.e 0
pop.v.i builtin.hsp
pushi.e 0
pop.v.i builtin.vsp
pushi.e 1
pop.v.i builtin.spd

:[140]
push.v builtin.vsp
pushi.e 0
cmp.i.v EQ
bf [142]

:[141]
push.v builtin.running
pushi.e 1
cmp.b.v EQ
b [143]

:[142]
push.e 0

:[143]
bf [154]

:[144]
push.v builtin.hsp
pushi.e 0
cmp.i.v GT
bf [146]

:[145]
push.v builtin.running
pushi.e 1
cmp.b.v EQ
b [147]

:[146]
push.e 0

:[147]
bf [149]

:[148]
pushi.e 4
pop.v.i builtin.face

:[149]
push.v builtin.hsp
pushi.e 0
cmp.i.v LT
bf [151]

:[150]
push.v builtin.running
pushi.e 1
cmp.b.v EQ
b [152]

:[151]
push.e 0

:[152]
bf [154]

:[153]
pushi.e 6
pop.v.i builtin.face

:[154]
push.v builtin.hsp
pushi.e 0
cmp.i.v GT
bf [156]

:[155]
push.v builtin.running
pushi.e 1
cmp.b.v EQ
b [157]

:[156]
push.e 0

:[157]
bf [159]

:[158]
pushi.e 4
pop.v.i builtin.face

:[159]
push.v builtin.hsp
pushi.e 0
cmp.i.v LT
bf [161]

:[160]
push.v builtin.running
pushi.e 1
cmp.b.v EQ
b [162]

:[161]
push.e 0

:[162]
bf [164]

:[163]
pushi.e 6
pop.v.i builtin.face

:[164]
push.v builtin.hsp
pushi.e 0
cmp.i.v EQ
bf [166]

:[165]
push.v builtin.running
pushi.e 1
cmp.b.v EQ
b [167]

:[166]
push.e 0

:[167]
bf [178]

:[168]
push.v builtin.vsp
pushi.e 0
cmp.i.v LT
bf [170]

:[169]
push.v builtin.running
pushi.e 1
cmp.b.v EQ
b [171]

:[170]
push.e 0

:[171]
bf [173]

:[172]
pushi.e 5
pop.v.i builtin.face

:[173]
push.v builtin.vsp
pushi.e 0
cmp.i.v GT
bf [175]

:[174]
push.v builtin.running
pushi.e 1
cmp.b.v EQ
b [176]

:[175]
push.e 0

:[176]
bf [178]

:[177]
pushi.e 7
pop.v.i builtin.face

:[178]
push.v builtin.vsp
pushi.e 0
cmp.i.v GT
bf [180]

:[179]
push.v builtin.face
pushi.e 5
cmp.i.v EQ
b [181]

:[180]
push.e 0

:[181]
bf [183]

:[182]
pushi.e 7
pop.v.i builtin.face

:[183]
push.v builtin.vsp
pushi.e 0
cmp.i.v LT
bf [185]

:[184]
push.v builtin.face
pushi.e 7
cmp.i.v EQ
b [186]

:[185]
push.e 0

:[186]
bf [188]

:[187]
pushi.e 5
pop.v.i builtin.face

:[188]
pushref.i 144
call.i instance_exists(argc=1)
conv.v.b
bf [190]

:[189]
pushi.e 0
pop.v.b builtin.visible
b [191]

:[190]
pushi.e 1
pop.v.b builtin.visible

:[191]
push.v builtin.bbox_bottom
neg.v
pop.v.v builtin.depth
pushi.e 0
conv.i.v
push.v builtin.y
push.v builtin.x
call.i audio_listener_position(argc=3)
popz.v
push.v builtin.state
pushi.e 0
cmp.i.v EQ
bf [end]

:[192]
pushglb.v global.gamePaused
conv.v.b
bf [194]

:[193]
exit.i

:[194]
push.v builtin.running
pushi.e 0
cmp.b.v EQ
bf [207]

:[195]
push.v builtin.sprite_index
call.i sprite_get_speed(argc=1)
pushbltn.v builtin.room_speed
div.v.v
pushi.e 2
conv.i.d
div.d.v
pop.v.v local._his
push.v builtin.image_index
pushloc.v local._his
sub.v.v
pushi.e 1
cmp.i.v LT
bf [197]

:[196]
push.v builtin.image_index
pushloc.v local._his
add.v.v
pushi.e 1
cmp.i.v GT
b [198]

:[197]
push.e 0

:[198]
bt [203]

:[199]
push.v builtin.image_index
pushloc.v local._his
sub.v.v
pushi.e 3
cmp.i.v LT
bf [201]

:[200]
push.v builtin.image_index
pushloc.v local._his
add.v.v
pushi.e 3
cmp.i.v GT
b [202]

:[201]
push.e 0

:[202]
b [204]

:[203]
push.e 1

:[204]
bf [206]

:[205]
pushref.i 33554513
pushref.i 33554512
pushref.i 33554511
pushref.i 33554510
pushref.i 33554509
call.i choose(argc=5)
pop.v.v builtin.sound
push.d 0.2
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.sound
call.i audio_play_sound(argc=4)
popz.v

:[206]
b [end]

:[207]
push.v builtin.face
pushi.e 6
cmp.i.v EQ
bt [209]

:[208]
push.v builtin.face
pushi.e 4
cmp.i.v EQ
b [210]

:[209]
push.e 1

:[210]
bf [223]

:[211]
push.v builtin.sprite_index
call.i sprite_get_speed(argc=1)
pushbltn.v builtin.room_speed
div.v.v
pushi.e 2
conv.i.d
div.d.v
pop.v.v local._his
push.v builtin.image_index
pushloc.v local._his
sub.v.v
pushi.e 1
cmp.i.v LT
bf [213]

:[212]
push.v builtin.image_index
pushloc.v local._his
add.v.v
pushi.e 1
cmp.i.v GT
b [214]

:[213]
push.e 0

:[214]
bt [219]

:[215]
push.v builtin.image_index
pushloc.v local._his
sub.v.v
pushi.e 6
cmp.i.v LT
bf [217]

:[216]
push.v builtin.image_index
pushloc.v local._his
add.v.v
pushi.e 6
cmp.i.v GT
b [218]

:[217]
push.e 0

:[218]
b [220]

:[219]
push.e 1

:[220]
bf [222]

:[221]
pushref.i 33554513
pushref.i 33554512
pushref.i 33554511
pushref.i 33554510
pushref.i 33554509
call.i choose(argc=5)
pop.v.v builtin.sound
push.d 0.2
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.sound
call.i audio_play_sound(argc=4)
popz.v

:[222]
b [end]

:[223]
push.v builtin.face
pushi.e 5
cmp.i.v EQ
bt [225]

:[224]
push.v builtin.face
pushi.e 7
cmp.i.v EQ
b [226]

:[225]
push.e 1

:[226]
bf [end]

:[227]
push.v builtin.sprite_index
call.i sprite_get_speed(argc=1)
pushbltn.v builtin.room_speed
div.v.v
pushi.e 2
conv.i.d
div.d.v
pop.v.v local._his
push.v builtin.image_index
pushloc.v local._his
sub.v.v
pushi.e 1
cmp.i.v LT
bf [229]

:[228]
push.v builtin.image_index
pushloc.v local._his
add.v.v
pushi.e 1
cmp.i.v GT
b [230]

:[229]
push.e 0

:[230]
bt [235]

:[231]
push.v builtin.image_index
pushloc.v local._his
sub.v.v
pushi.e 3
cmp.i.v LT
bf [233]

:[232]
push.v builtin.image_index
pushloc.v local._his
add.v.v
pushi.e 3
cmp.i.v GT
b [234]

:[233]
push.e 0

:[234]
b [236]

:[235]
push.e 1

:[236]
bf [end]

:[237]
pushref.i 33554513
pushref.i 33554512
pushref.i 33554511
pushref.i 33554510
pushref.i 33554509
call.i choose(argc=5)
pop.v.v builtin.sound
push.d 0.2
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.sound
call.i audio_play_sound(argc=4)
popz.v

:[end]