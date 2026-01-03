:[0]
push.v builtin.activate
pushi.e 1
cmp.b.v EQ
bf [25]

:[1]
push.v builtin.alarm0
pushi.e 1
cmp.b.v EQ
bf [3]

:[2]
pushi.e 90
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [4]

:[3]
push.e 0

:[4]
bt [13]

:[5]
push.v builtin.alarm0
pushi.e 1
cmp.b.v EQ
bf [7]

:[6]
pushi.e 88
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [8]

:[7]
push.e 0

:[8]
bt [13]

:[9]
push.v builtin.alarm0
pushi.e 1
cmp.b.v EQ
bf [11]

:[10]
pushi.e 13
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [12]

:[11]
push.e 0

:[12]
b [14]

:[13]
push.e 1

:[14]
bf [19]

:[15]
push.v builtin.oTutorial
pushi.e -9
push.v [stacktop]self.mirror
pushi.e 0
cmp.i.v EQ
bf [17]

:[16]
push.s "You barely can see anything on the mirror."@1379
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
pushi.e 0
pop.v.b builtin.alarm0
pushi.e 0
pop.v.b builtin.activate
b [19]

:[17]
push.v builtin.oTutorial
pushi.e -9
push.v [stacktop]self.mirror
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
push.s "The mirror shard fits perfectly. Do you want to place it?"@1380
conv.s.v
call.i gml_Script_OpenTextBox(argc=1)
popz.v
pushi.e 1
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
pushi.e 1
pop.v.i builtin.state
push.i 131066
setowner.e
pushref.i 76
pushref.i 98
call.i @@NewGMLArray@@(argc=2)
pushref.i gml_Script_scrFinishCharacterReading
call.i @@NewGMLArray@@(argc=2)
pushref.i 127
pushi.e -9
pop.v.v [stacktop]self.callback
pushi.e 0
pop.v.b builtin.alarm0
pushi.e 0
pop.v.b builtin.activate

:[19]
push.v builtin.alarm0
pushi.e 1
cmp.b.v EQ
bf [22]

:[20]
push.v builtin.oTutorial
pushi.e -9
push.v [stacktop]self.mirror
pushi.e 2
cmp.i.v EQ
bf [22]

:[21]
pushi.e 1
pop.v.b builtin.canTeleport
pushi.e 0
pop.v.b builtin.alarm0
pushi.e 0
pop.v.b builtin.activate

:[22]
push.v builtin.oTutorial
pushi.e -9
push.v [stacktop]self.mirror
pushi.e 2
cmp.i.v NEQ
bf [24]

:[23]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.sReflexo
call.i draw_sprite(argc=4)
popz.v
b [25]

:[24]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.sReflexo
call.i draw_sprite(argc=4)
popz.v

:[25]
push.v builtin.canTeleport
conv.v.b
bf [end]

:[26]
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 600
conv.i.v
pushi.e 800
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_rectangle_color(argc=9)
popz.v
push.v builtin.alreadyPlayed
pushi.e 0
cmp.b.v EQ
bf [end]

:[27]
push.i 65530
setowner.e
pushi.e 300
conv.i.v
pushi.e -6
pushi.e 2
pop.v.v [array]self.alarm
pushi.e 1
pop.v.b builtin.alreadyPlayed

:[end]