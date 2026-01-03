:[0]
push.v builtin.debounce
conv.v.b
bf [2]

:[1]
exit.i

:[2]
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
pushref.i 139
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [7]

:[3]
pushglb.v global.tutorial
pushi.e 1
cmp.i.v NEQ
bf [7]

:[4]
pushi.e 5
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
pushi.e 1
pop.v.i global.tutorial
b [6]

> gml_Script_anon@277@gml_Object_inicialMonologue_Draw_0 (locals=0, argc=0)
:[5]
pushi.e 1
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
pushi.e 1
pushref.i 127
pushi.e -9
pop.v.b [stacktop]self.hasAudio
push.s "Dad"@1039
pushref.i 127
pushi.e -9
pop.v.s [stacktop]self.Speaker
push.s "Keep moving. The path ahead awaits."@1063
conv.s.v
push.s "Remember, some fires, once lit, never truly die."@1064
conv.s.v
push.s "You can run with [SHIFT], if you're in a hurry."@1065
conv.s.v
push.s "Press [C] to open your inventory. To use an item, you must select it from there."@1066
conv.s.v
push.s "[X] lets you pause, if you need to."@1067
conv.s.v
push.s "[Z] should still let you interact."@1068
conv.s.v
push.s "Use the arrow keys or WASD to move."@1069
conv.s.v
push.s "Sometimes, choices made in darkness leave traces that even time can't erase."@1070
conv.s.v
push.s "There's a quiet echo in the air, as if distant embers still glow."@1071
conv.s.v
push.s "Feels familiar, doesn't it?"@1072
conv.s.v
call.i gml_Script_OpenTextBox(argc=10)
popz.v
push.i 34078714
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
exit.i

:[6]
push.i [function]gml_Script_anon@277@gml_Object_inicialMonologue_Draw_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 3000
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v

:[7]
pushglb.v global.tutorial
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
pushref.i 98
pushi.e -9
push.v [stacktop]self.state
pushi.e 0
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [end]

:[11]
pushi.e 5
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
b [13]

> gml_Script_anon@1330@gml_Object_inicialMonologue_Draw_0 (locals=0, argc=0)
:[12]
pushref.i 50331652
call.i room_goto(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v
exit.i

:[13]
push.i [function]gml_Script_anon@1330@gml_Object_inicialMonologue_Draw_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 5000
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v

:[end]