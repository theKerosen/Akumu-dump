; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushi.e 37
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [2]

:[1]
pushi.e 65
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [3]

:[2]
push.e 1

:[3]
pop.v.b local.key_left
pushi.e 39
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [5]

:[4]
pushi.e 68
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [6]

:[5]
push.e 1

:[6]
pop.v.b local.key_right
pushi.e 27
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [8]

:[7]
pushi.e 88
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [9]

:[8]
push.e 1

:[9]
pop.v.b local.cancel
pushi.e 90
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [11]

:[10]
pushi.e 13
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [12]

:[11]
push.e 1

:[12]
pop.v.b local.confirm
pushloc.v local.key_right
conv.v.b
bf [14]

:[13]
pushref.i 98
pushi.e -9
push.v [stacktop]self.state
pushi.e 5
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [19]

:[16]
push.v builtin.page
pushglb.v global.maxPages
cmp.v.v LT
bf [18]

:[17]
push.v builtin.page
pushi.e 1
add.i.v
pop.v.v builtin.page
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554504
call.i audio_play_sound(argc=3)
popz.v
b [19]

:[18]
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554527
call.i audio_play_sound(argc=3)
popz.v

:[19]
pushloc.v local.key_left
conv.v.b
bf [21]

:[20]
pushref.i 98
pushi.e -9
push.v [stacktop]self.state
pushi.e 5
cmp.i.v EQ
b [22]

:[21]
push.e 0

:[22]
bf [26]

:[23]
push.v builtin.page
pushi.e 0
cmp.i.v GT
bf [25]

:[24]
push.v builtin.page
pushi.e 1
sub.i.v
pop.v.v builtin.page
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554504
call.i audio_play_sound(argc=3)
popz.v
b [26]

:[25]
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554527
call.i audio_play_sound(argc=3)
popz.v

:[26]
pushloc.v local.cancel
conv.v.b
bf [28]

:[27]
pushref.i 98
pushi.e -9
push.v [stacktop]self.state
pushi.e 5
cmp.i.v EQ
b [29]

:[28]
push.e 0

:[29]
bf [35]

:[30]
pushref.i 79
pushi.e -9
pushenv [34]

:[31]
b [33]

> gml_Script_anon@769@gml_Object_oWitchbookLayout_Step_0 (locals=0, argc=0)
:[32]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[33]
push.i [function]gml_Script_anon@769@gml_Object_oWitchbookLayout_Step_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 100
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v

:[34]
popenv [31]
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554437
call.i audio_play_sound(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v
pushi.e 0
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state

:[35]
push.v builtin.page
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [39]

:[36]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [44]

:[37]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [50]

:[38]
b [56]

:[39]
pushloc.v local.confirm
conv.v.b
bf [41]

:[40]
pushref.i 98
pushi.e -9
push.v [stacktop]self.state
pushi.e 5
cmp.i.v EQ
b [42]

:[41]
push.e 0

:[42]
bf [44]

:[43]
push.s "they hold the last digit."@1593
conv.s.v
push.s "Look to the candles in the ritual room..."@1594
conv.s.v
push.s "Every path has its cost, but together we'll reach the truth."@1595
conv.s.v
push.s "I can show you the way forward, if you'll let me."@1596
conv.s.v
push.s "You've taken the first step."@1597
conv.s.v
call.i gml_Script_OpenTextBox(argc=5)
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

:[44]
pushloc.v local.confirm
conv.v.b
bf [46]

:[45]
pushref.i 98
pushi.e -9
push.v [stacktop]self.state
pushi.e 5
cmp.i.v EQ
b [47]

:[46]
push.e 0

:[47]
bf [49]

:[48]
push.s "teste2"@1598
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

:[49]
b [56]

:[50]
pushloc.v local.confirm
conv.v.b
bf [52]

:[51]
pushref.i 98
pushi.e -9
push.v [stacktop]self.state
pushi.e 5
cmp.i.v EQ
b [53]

:[52]
push.e 0

:[53]
bf [55]

:[54]
push.s "teste3"@1599
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

:[55]
b [56]

:[56]
popz.v

:[end]