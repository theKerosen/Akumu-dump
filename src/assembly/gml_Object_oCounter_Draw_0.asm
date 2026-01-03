:[0]
call.i draw_self(argc=0)
popz.v
push.v builtin.canDraw
conv.v.b
not.b
bf [2]

:[1]
exit.i

:[2]
pushref.i 98
pushi.e -9
push.v [stacktop]self.state
pushi.e 0
cmp.i.v EQ
bf [6]

:[3]
pushi.e 0
pop.v.i builtin.image_index
pushi.e 5
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
b [5]

> gml_Script_anon@149@gml_Object_oCounter_Draw_0 (locals=0, argc=0)
:[4]
pushi.e 1
pop.v.b global.atepizza
pushi.e 1
pop.v.b global.canWatch
pushi.e 72
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e 119
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.y
pushi.e 1
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.face
pushi.e 1
pushref.i 98
pushi.e -9
pop.v.b [stacktop]self.visible
pushref.i 33554508
call.i audio_resume_sound(argc=1)
popz.v
pushref.i 50331656
call.i room_goto(argc=1)
popz.v
exit.i

:[5]
push.i [function]gml_Script_anon@149@gml_Object_oCounter_Draw_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 5000
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v

:[6]
pushi.e 0
pushref.i 98
pushi.e -9
pop.v.b [stacktop]self.visible
push.v builtin.drawing
push.s "black"@871
cmp.s.v EQ
bf [8]

:[7]
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
b [end]

:[8]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushref.i 16777314
call.i draw_sprite(argc=4)
popz.v

:[end]