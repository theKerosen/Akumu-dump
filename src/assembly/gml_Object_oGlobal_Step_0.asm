:[0]
push.v builtin.shake
conv.v.b
bf [4]

:[1]
push.v builtin.shake_time
pushi.e 1
sub.i.v
pop.v.v builtin.shake_time
push.i 65530
setowner.e
push.v builtin.shake_magnitude
push.v builtin.shake_magnitude
neg.v
call.i choose(argc=2)
pushi.e -6
pushi.e 0
pop.v.v [array]self.view_xport
push.v builtin.shake_magnitude
push.v builtin.shake_magnitude
neg.v
call.i choose(argc=2)
pushi.e -6
pushi.e 0
pop.v.v [array]self.view_yport
push.v builtin.shake_time
pushi.e 0
cmp.i.v LTE
bf [4]

:[2]
push.v builtin.shake_magnitude
push.v builtin.shake_fade
sub.v.v
pop.v.v builtin.shake_magnitude
push.v builtin.shake_magnitude
pushi.e 0
cmp.i.v LTE
bf [4]

:[3]
pushi.e 0
pop.v.b builtin.shake

:[4]
push.v builtin.canCount
conv.v.b
bf [9]

:[5]
push.v builtin.seconds
pushbltn.v builtin.delta_time
push.d 1E-06
mul.d.v
add.v.v
pop.v.v builtin.seconds
push.v builtin.seconds
pushi.e 60
cmp.i.v GTE
bf [7]

:[6]
push.v builtin.seconds
pushi.e 60
sub.i.v
pop.v.v builtin.seconds
push.v builtin.minutes
pushi.e 1
add.i.v
pop.v.v builtin.minutes

:[7]
push.v builtin.minutes
pushi.e 60
cmp.i.v GTE
bf [9]

:[8]
push.v builtin.minutes
pushi.e 60
sub.i.v
pop.v.v builtin.minutes
push.v builtin.hours
pushi.e 1
add.i.v
pop.v.v builtin.hours

:[9]
pushglb.v global.gamePaused
conv.v.b
not.b
bf [13]

:[10]
pushref.i 31
call.i instance_exists(argc=1)
conv.v.b
bf [13]

:[11]
pushglb.v global.isHiding
conv.v.b
not.b
bf [13]

:[12]
pushref.i 139
call.i instance_exists(argc=1)
conv.v.b
not.b
b [14]

:[13]
push.e 0

:[14]
bf [18]

:[15]
pushglb.v global.chasing
conv.v.b
bf [18]

:[16]
push.v global.chase_timer
pushi.e 1
sub.i.v
pop.v.v global.chase_timer
pushglb.v global.chase_timer
pushi.e 0
cmp.i.v LTE
bf [18]

:[17]
push.v global.chase
pushi.e 1
sub.i.v
pop.v.v global.chase
pushglb.v global.chase_interval
pop.v.v global.chase_timer
pushglb.v global.chase
call.i show_debug_message(argc=1)
popz.v

:[18]
pushglb.v global.isHiding
conv.v.b
bf [20]

:[19]
pushglb.v global.chasing
conv.v.b
b [21]

:[20]
push.e 0

:[21]
bf [27]

:[22]
b [26]

> gml_Script_anon@892@gml_Object_oGlobal_Step_0 (locals=0, argc=0)
:[23]
pushref.i 33554470
call.i audio_is_playing(argc=1)
conv.v.b
not.b
bf [25]

:[24]
pushi.e 0
pop.v.b global.chasing
pushglb.v global.chase_max
pop.v.v global.chase
pushref.i 31
call.i instance_destroy(argc=1)
popz.v
pushi.e 1
pop.v.b global.safe
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554470
call.i audio_play_sound(argc=3)
popz.v

:[25]
exit.i

:[26]
push.i [function]gml_Script_anon@892@gml_Object_oGlobal_Step_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 3000
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v

:[27]
pushglb.v global.lightsOut
pushi.e 0
cmp.i.v EQ
bf [29]

:[28]
pushbltn.v builtin.room
pushref.i 50331652
cmp.v.v EQ
b [30]

:[29]
push.e 0

:[30]
bf [33]

:[31]
pushref.i 11
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [33]

:[32]
pushref.i 11
push.s "Instances"@50
conv.s.v
push.v builtin.y
push.v builtin.x
call.i instance_create_layer(argc=4)
popz.v

:[33]
pushglb.v global.lightsOut
pushi.e 1
cmp.i.v EQ
bf [35]

:[34]
pushref.i 11
call.i instance_exists(argc=1)
conv.v.b
b [36]

:[35]
push.e 0

:[36]
bf [38]

:[37]
pushref.i 11
call.i instance_destroy(argc=1)
popz.v

:[38]
pushref.i 98
call.i instance_exists(argc=1)
conv.v.b
bf [75]

:[39]
pushbltn.v builtin.room
pushref.i 50331659
cmp.v.v EQ
bt [47]

:[40]
pushref.i 50331660
conv.v.b
bt [47]

:[41]
pushref.i 50331661
conv.v.b
bt [47]

:[42]
pushref.i 50331662
conv.v.b
bt [47]

:[43]
pushref.i 50331663
conv.v.b
bt [47]

:[44]
pushref.i 50331664
conv.v.b
bt [47]

:[45]
pushref.i 50331665
conv.v.b
bt [47]

:[46]
pushref.i 50331666
conv.v.b
b [48]

:[47]
push.e 1

:[48]
bf [70]

:[49]
pushglb.v global.debounce1
pushi.e 1
cmp.b.v EQ
bf [55]

:[50]
pushglb.v global.debounce2
pushi.e 1
cmp.b.v EQ
bf [55]

:[51]
pushglb.v global.debounce3
pushi.e 1
cmp.b.v EQ
bf [55]

:[52]
pushglb.v global.basementpuzzlecomplete
pushi.e 0
cmp.b.v EQ
bf [55]

:[53]
pushref.i 98
pushi.e -9
push.v [stacktop]self.state
pushi.e 0
cmp.i.v EQ
bf [55]

:[54]
pushglb.v global.dialogue
pushi.e 0
cmp.b.v EQ
b [56]

:[55]
push.e 0

:[56]
bf [64]

:[57]
pushi.e 1
pop.v.b global.dialogue
pushglb.v global.current_code
push.s "CAB"@1266
cmp.s.v EQ
bf [61]

:[58]
pushi.e 1
pop.v.b global.basementpuzzlecomplete
push.s "correct"@1267
conv.s.v
call.i show_debug_message(argc=1)
popz.v
push.v builtin.speed
pushi.e 0
cmp.i.v NEQ
bf [60]

:[59]
exit.i

:[60]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushref.i 33554525
call.i audio_play_sound(argc=3)
popz.v
pushi.e 5
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
b [64]

:[61]
pushi.e 0
pop.v.b global.dialogue
push.s "wrong"@1268
conv.s.v
call.i show_debug_message(argc=1)
popz.v
pushi.e 5
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
push.v builtin.myDeb
pushi.e 0
cmp.b.v EQ
bf [63]

:[62]
pushi.e 1
pop.v.b builtin.myDeb
pushi.e 100
conv.i.v
pushi.e -6
pushi.e 1
pop.v.v [array]self.alarm

:[63]
pushi.e 0
pop.v.b global.debounce1
pushi.e 0
pop.v.b global.debounce2
pushi.e 0
pop.v.b global.debounce3
pushi.e 0
pop.v.b global.debounce4
push.s ""@36
pop.v.s global.current_code

:[64]
pushglb.v global.dialogue2
pushi.e 0
cmp.b.v EQ
bf [66]

:[65]
pushglb.v global.dialogue
pushi.e 1
cmp.b.v EQ
b [67]

:[66]
push.e 0

:[67]
bf [70]

:[68]
pushref.i 33554525
call.i audio_is_playing(argc=1)
conv.v.b
not.b
bf [70]

:[69]
pushi.e 1
pop.v.b global.dialogue2
pushi.e 1
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
push.s "A door has opened."@1269
conv.s.v
call.i gml_Script_OpenTextBox(argc=1)
popz.v
push.i 131066
setowner.e
pushi.e -4
conv.i.v
pushref.i 98
call.i @@NewGMLArray@@(argc=2)
pushref.i gml_Script_scrFinishCharacterReading
call.i @@NewGMLArray@@(argc=2)
pushref.i 127
pushi.e -9
pop.v.v [stacktop]self.callback

:[70]
pushbltn.v builtin.room
pushref.i 50331660
cmp.v.v EQ
bf [75]

:[71]
pushref.i 38
call.i instance_exists(argc=1)
conv.v.b
bf [75]

:[72]
pushglb.v global.basementpuzzlecomplete
pushi.e 1
cmp.b.v EQ
bf [74]

:[73]
pushi.e -4
pushref.i 38
pushi.e -9
pop.v.i [stacktop]self.lock
b [75]

:[74]
push.s "supertagsecretawow"@1270
pushref.i 38
pushi.e -9
pop.v.s [stacktop]self.lock

:[75]
pushi.e 109
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [77]

:[76]
pushref.i 50331685
call.i room_goto(argc=1)
popz.v
pushi.e -32
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e -32
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.y

:[77]
push.s "Effect_1"@1272
conv.s.v
call.i layer_exists(argc=1)
conv.v.b
bf [79]

:[78]
pushi.e -1000
conv.i.v
push.s "Effect_1"@1272
conv.s.v
call.i layer_depth(argc=2)
popz.v

:[79]
push.s "Effect_1_1"@1275
conv.s.v
call.i layer_exists(argc=1)
conv.v.b
bf [81]

:[80]
pushi.e -1000
conv.i.v
push.s "Effect_1_1"@1275
conv.s.v
call.i layer_depth(argc=2)
popz.v

:[81]
push.s "Effect_1_1_1"@1276
conv.s.v
call.i layer_exists(argc=1)
conv.v.b
bf [83]

:[82]
pushi.e -1000
conv.i.v
push.s "Effect_1_1_1"@1276
conv.s.v
call.i layer_depth(argc=2)
popz.v

:[83]
push.s "Effect_1_1_1_1"@1277
conv.s.v
call.i layer_exists(argc=1)
conv.v.b
bf [85]

:[84]
pushi.e -1000
conv.i.v
push.s "Effect_1_1_1_1"@1277
conv.s.v
call.i layer_depth(argc=2)
popz.v

:[85]
push.s "Effect_1_1_1_1_1"@1278
conv.s.v
call.i layer_exists(argc=1)
conv.v.b
bf [87]

:[86]
pushi.e -1000
conv.i.v
push.s "Effect_1_1_1_1_1"@1278
conv.s.v
call.i layer_depth(argc=2)
popz.v

:[87]
push.s "loading_layer"@1279
conv.s.v
call.i layer_exists(argc=1)
conv.v.b
bf [89]

:[88]
pushi.e -1000
conv.i.v
push.s "loading_layer"@1279
conv.s.v
call.i layer_depth(argc=2)
popz.v

:[89]
push.s "Tiles_4"@1280
conv.s.v
call.i layer_exists(argc=1)
conv.v.b
bf [91]

:[90]
pushi.e -999
conv.i.v
push.s "Tiles_4"@1280
conv.s.v
call.i layer_depth(argc=2)
popz.v

:[91]
push.s "Assets_2"@1281
conv.s.v
call.i layer_exists(argc=1)
conv.v.b
bf [end]

:[92]
pushi.e -999
conv.i.v
push.s "Assets_2"@1281
conv.s.v
call.i layer_depth(argc=2)
popz.v

:[end]