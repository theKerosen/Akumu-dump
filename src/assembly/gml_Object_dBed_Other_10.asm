:[0]
pushglb.v global.gamePaused
pushi.e 0
cmp.b.v EQ
bf [end]

:[1]
pushglb.v global.jmpsc1
pushi.e 0
cmp.i.v EQ
bf [5]

:[2]
push.v builtin.speed
pushi.e 0
cmp.i.v NEQ
bf [4]

:[3]
exit.i

:[4]
pushref.i 79
pushi.e 0
conv.i.v
push.v builtin.y
push.v builtin.x
call.i instance_create_depth(argc=4)
popz.v
push.d 1.5
pop.v.d builtin.image_speed
pushref.i 98
call.i instance_destroy(argc=1)
popz.v
pushref.i 16777218
pop.v.v builtin.sprite_index
pushi.e 1
pop.v.b builtin.entrando
pushi.e 110
pop.v.i builtin.depth
b [end]

:[5]
push.v builtin.speed
pushi.e 0
cmp.i.v NEQ
bf [7]

:[6]
exit.i

:[7]
push.s "You're too scared to sleep."@1048
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
pushref.i 2
pushref.i 98
call.i @@NewGMLArray@@(argc=2)
pushref.i gml_Script_scrFinishCharacterReading
call.i @@NewGMLArray@@(argc=2)
pushref.i 127
pushi.e -9
pop.v.v [stacktop]self.callback

:[end]