:[0]
pushref.i 98
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [2]

:[1]
exit.i

:[2]
pushbltn.v builtin.room
pushref.i 50331667
cmp.v.v EQ
bt [15]

:[3]
pushbltn.v builtin.room
pushref.i 50331668
cmp.v.v EQ
bt [15]

:[4]
pushbltn.v builtin.room
pushref.i 50331669
cmp.v.v EQ
bt [15]

:[5]
pushbltn.v builtin.room
pushref.i 50331670
cmp.v.v EQ
bt [15]

:[6]
pushbltn.v builtin.room
pushref.i 50331671
cmp.v.v EQ
bt [15]

:[7]
pushbltn.v builtin.room
pushref.i 50331672
cmp.v.v EQ
bt [15]

:[8]
pushbltn.v builtin.room
pushref.i 50331673
cmp.v.v EQ
bt [15]

:[9]
pushbltn.v builtin.room
pushref.i 50331674
cmp.v.v EQ
bt [15]

:[10]
pushbltn.v builtin.room
pushref.i 50331675
cmp.v.v EQ
bt [15]

:[11]
pushbltn.v builtin.room
pushref.i 50331676
cmp.v.v EQ
bt [15]

:[12]
pushbltn.v builtin.room
pushref.i 50331677
cmp.v.v EQ
bt [15]

:[13]
pushbltn.v builtin.room
pushref.i 50331678
cmp.v.v EQ
bt [15]

:[14]
pushbltn.v builtin.room
pushref.i 50331679
cmp.v.v EQ
b [16]

:[15]
push.e 1

:[16]
bf [18]

:[17]
b [19]

:[18]
call.i instance_destroy(argc=0)
popz.v
push.s "destroyed"@1108
conv.s.v
call.i show_debug_message(argc=1)
popz.v

:[19]
pushglb.v global.allCorrect
conv.v.b
bf [24]

:[20]
pushref.i 76
call.i instance_exists(argc=1)
conv.v.b
bf [24]

:[21]
pushref.i 76
pushi.e -9
pushenv [23]

:[22]
pushi.e 2
pop.v.i builtin.image_index

:[23]
popenv [22]

:[24]
pushglb.v global.toiletCorrect
conv.v.b
bf [27]

:[25]
pushglb.v global.paperCorrect
conv.v.b
bf [27]

:[26]
pushglb.v global.sinkCorrect
conv.v.b
b [28]

:[27]
push.e 0

:[28]
bf [31]

:[29]
pushglb.v global.allCorrectDebounce
conv.v.b
not.b
bf [31]

:[30]
pushi.e 1
pop.v.b global.allCorrectDebounce
pushi.e 1
pop.v.b builtin.canLights
pushi.e 6
pushref.i 127
pushi.e -9
pop.v.i [stacktop]self.textSide
pushi.e 20
pushref.i 127
pushi.e -9
pop.v.i [stacktop]self.value
push.s "..."@1054
conv.s.v
call.i gml_Script_OpenTextBox(argc=1)
popz.v
pushi.e 1
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
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

:[31]
pushref.i 98
pushi.e -9
push.v [stacktop]self.state
pushi.e 0
cmp.i.v EQ
bf [33]

:[32]
push.v builtin.canLights
conv.v.b
b [34]

:[33]
push.e 0

:[34]
bf [42]

:[35]
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554469
call.i audio_play_sound(argc=3)
popz.v
pushi.e 5
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
pushi.e 0
pop.v.b builtin.canLights
pushi.e 1
pop.v.b builtin.canDraw
b [41]

> gml_Script_anon@1148@gml_Object_oBasementFloor2_Step_0 (locals=0, argc=0)
:[36]
pushi.e 0
pop.v.b builtin.canDraw
push.d 0.73
pushref.i 69
pushi.e -9
pop.v.d [stacktop]self.darkness
b [40]

> gml_Script_anon@1241@anon@1148@gml_Object_oBasementFloor2_Step_0 (locals=0, argc=0)
:[37]
pushi.e 1
pop.v.b builtin.canDraw
b [39]

> gml_Script_anon@1306@anon@1241@anon@1148@gml_Object_oBasementFloor2_Step_0 (locals=0, argc=0)
:[38]
push.d 0.73
pushref.i 69
pushi.e -9
pop.v.d [stacktop]self.darkness
pushi.e 1
pop.v.b global.allCorrect
pushi.e 0
pop.v.b builtin.canDraw
pushi.e 0
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
exit.i

:[39]
push.i [function]gml_Script_anon@1306@anon@1241@anon@1148@gml_Object_oBasementFloor2_Step_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 500
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v
exit.i

:[40]
push.i [function]gml_Script_anon@1241@anon@1148@gml_Object_oBasementFloor2_Step_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 100
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v
exit.i

:[41]
push.i [function]gml_Script_anon@1148@gml_Object_oBasementFloor2_Step_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 200
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v

:[42]
pushglb.v global.allCorrect
conv.v.b
bf [46]

:[43]
pushglb.v global.screwUsed
conv.v.b
bf [46]

:[44]
pushglb.v global.switchBooks
conv.v.b
bf [46]

:[45]
pushglb.v global.everythingCorrect
conv.v.b
not.b
b [47]

:[46]
push.e 0

:[47]
bf [49]

:[48]
pushi.e 1
pop.v.b global.everythingCorrect

:[49]
pushglb.v global.unlockedCode
conv.v.b
bt [51]

:[50]
pushglb.v global.everythingCorrect
conv.v.b
b [52]

:[51]
push.e 1

:[52]
bf [end]

:[53]
pushref.i 121
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[54]
pushref.i 121
call.i instance_destroy(argc=1)
popz.v

:[end]