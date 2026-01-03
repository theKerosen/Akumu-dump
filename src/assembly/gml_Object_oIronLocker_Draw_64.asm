:[0]
push.v builtin.leaving
conv.v.b
bf [6]

:[1]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.enterImage
pushref.i 16777249
call.i draw_sprite(argc=4)
popz.v
push.v builtin.enterImage
push.v builtin.enterImageSpeed
sub.v.v
pop.v.v builtin.enterImage
pushi.e 1
pop.v.b builtin.lockerOpening
pushi.e 0
pop.v.b builtin.lockerClosing
push.v builtin.sprite_index
call.i sprite_get_number(argc=1)
pushi.e 1
sub.i.v
pop.v.v builtin.lockerAnim
push.v builtin.storedY
pushref.i 98
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 3
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.face
push.v builtin.enterImage
pushi.e 0
cmp.i.v LTE
bf [5]

:[2]
pushi.e 0
pop.v.b builtin.leaving
pushi.e 0
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
pushref.i 83
pushi.e -9
push.v [stacktop]self.songAsset
call.i audio_resume_sound(argc=1)
popz.v
pushi.e 0
pop.v.b global.isHiding
b [4]

> gml_Script_anon@444@gml_Object_oIronLocker_Draw_64 (locals=0, argc=0)
:[3]
pushi.e 1
pop.v.b builtin.canEnter
pushi.e 1
pop.v.b builtin.canPress
exit.i

:[4]
push.i [function]gml_Script_anon@444@gml_Object_oIronLocker_Draw_64
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 1000
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v

:[5]
b [end]

:[6]
push.v builtin.entering
conv.v.b
bf [10]

:[7]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.enterImage
pushref.i 16777249
call.i draw_sprite(argc=4)
popz.v
push.v builtin.enterImage
push.v builtin.enterImageSpeed
add.v.v
pop.v.v builtin.enterImage
push.v builtin.enterImage
pushi.e 10
cmp.i.v GTE
bf [9]

:[8]
pushi.e 0
pop.v.b builtin.entering
pushi.e 1
pop.v.b builtin.inside
pushi.e 0
pop.v.b builtin.canEnter
pushi.e 0
pop.v.i builtin.animImage

:[9]
b [end]

:[10]
push.v builtin.inside
conv.v.b
bf [end]

:[11]
push.v builtin.play
conv.v.b
not.b
bf [13]

:[12]
pushi.e 1
pop.v.b builtin.play
pushi.e 1
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554441
call.i audio_play_sound(argc=3)
popz.v

:[13]
push.v builtin.animImage
push.v builtin.animImageSpeed
add.v.v
pop.v.v builtin.animImage
push.v builtin.animImage
pushref.i 16777268
call.i sprite_get_number(argc=1)
cmp.v.v GTE
bf [15]

:[14]
pushi.e 0
pop.v.i builtin.animImage

:[15]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.animImage
pushref.i 16777268
call.i draw_sprite(argc=4)
popz.v

:[end]