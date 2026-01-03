:[0]
pushi.e 0
pop.v.b builtin.canDraw
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
pop.v.v builtin.x
pushbltn.v builtin.room_height
pop.v.v builtin.y
push.i -99999
pop.v.i builtin.depth
push.d 0.4
pop.v.d builtin.scroll_speed
pushref.i 98
call.i instance_destroy(argc=1)
popz.v
push.s "\nDemo\n\nMade with Game Maker: Studio 2\n\n-Programmer-\nVini\n\n-Graphics-\nVini\nAsset Bakery\n\n-Sound and Music-\nFreesound.org\nBGMemon\n\n-Special Thanks-\nMoon\nIlliumBr\n\nCouldn't do this without you guys <3\n\n\n2025 Akumu Development Team.\n\n\nThanks for playing!"@1133
pop.v.s builtin.text
pushglb.v global.TEXTBOX_FONT
call.i draw_set_font(argc=1)
popz.v
push.v builtin.text
call.i string_height(argc=1)
pop.v.v builtin.text_height
b [2]

> gml_Script_anon@519@gml_Object_oCredits_Create_0 (locals=0, argc=0)
:[1]
pushi.e 1
pop.v.b builtin.canDraw
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554454
call.i audio_play_sound(argc=3)
popz.v
exit.i

:[2]
push.i [function]gml_Script_anon@519@gml_Object_oCredits_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 2000
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v

:[end]