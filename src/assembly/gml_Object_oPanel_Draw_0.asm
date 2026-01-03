:[0]
push.v builtin.canDraw
conv.v.b
not.b
bf [2]

:[1]
call.i draw_self(argc=0)
popz.v
exit.i

:[2]
pushi.e 5
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
pushi.e -6
pushi.e 0
push.v [array]self.view_camera
call.i camera_get_view_y(argc=1)
pushi.e -6
pushi.e 0
push.v [array]self.view_camera
call.i camera_get_view_x(argc=1)
push.v builtin.bgImage
push.v builtin.designedSprite
call.i draw_sprite(argc=4)
popz.v
push.v builtin.screwlock
pushi.e -4
cmp.i.v EQ
bf [4]

:[3]
pushglb.v global.screwUsed
conv.v.b
not.b
b [5]

:[4]
push.e 0

:[5]
bf [14]

:[6]
pushref.i 16777302
pop.v.v builtin.designedSprite
b [13]

> gml_Script_anon@269@gml_Object_oPanel_Draw_0 (locals=0, argc=0)
:[7]
pushref.i 16777303
pop.v.v builtin.designedSprite
push.v builtin.play
conv.v.b
not.b
bf [9]

:[8]
pushi.e 1
pop.v.b builtin.play
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554516
call.i audio_play_sound(argc=3)
popz.v

:[9]
b [12]

> gml_Script_anon@416@anon@269@gml_Object_oPanel_Draw_0 (locals=0, argc=0)
:[10]
pushi.e 1
pop.v.i builtin.image_index
push.v builtin.bgImage
push.v builtin.bgImageSpeed
add.v.v
pop.v.v builtin.bgImage
exit.i

:[11]
exit.i

:[12]
push.i [function]gml_Script_anon@416@anon@269@gml_Object_oPanel_Draw_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 500
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v
exit.i

:[13]
push.i [function]gml_Script_anon@269@gml_Object_oPanel_Draw_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 2000
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v
b [end]

:[14]
b [29]

> gml_Script_anon@525@gml_Object_oPanel_Draw_0 (locals=1, argc=0)
:[15]
pushi.e 90
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [18]

:[16]
pushi.e 88
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [18]

:[17]
pushi.e 13
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [19]

:[18]
push.e 1

:[19]
pop.v.b local.leave
pushloc.v local.leave
conv.v.b
bf [21]

:[20]
push.v builtin.canDraw
conv.v.b
b [22]

:[21]
push.e 0

:[22]
bf [28]

:[23]
pushi.e 0
pop.v.b builtin.canEnter
pushi.e 0
pop.v.b builtin.canDraw
pushi.e 0
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
b [25]

> gml_Script_anon@777@anon@525@gml_Object_oPanel_Draw_0 (locals=0, argc=0)
:[24]
pushref.i 79
call.i instance_destroy(argc=1)
popz.v
exit.i

:[25]
push.i [function]gml_Script_anon@777@anon@525@gml_Object_oPanel_Draw_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 100
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v
b [27]

> gml_Script_anon@845@anon@525@gml_Object_oPanel_Draw_0 (locals=0, argc=0)
:[26]
pushi.e 1
pop.v.b builtin.canEnter
exit.i

:[27]
push.i [function]gml_Script_anon@845@anon@525@gml_Object_oPanel_Draw_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 1000
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v

:[28]
exit.i

:[29]
push.i [function]gml_Script_anon@525@gml_Object_oPanel_Draw_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 1000
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v

:[end]