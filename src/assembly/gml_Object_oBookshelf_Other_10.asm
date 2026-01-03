:[0]
push.v builtin.speed
pushi.e 0
cmp.i.v NEQ
bf [2]

:[1]
exit.i

:[2]
pushref.i 98
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[3]
pushref.i 98
pushi.e -9
push.v [stacktop]self.face
pushi.e 1
cmp.i.v NEQ
bf [5]

:[4]
exit.i

:[5]
push.v builtin.inicialDialogue
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
pushref.i 17
pushref.i 98
call.i @@NewGMLArray@@(argc=2)
pushref.i gml_Script_scrFinishCharacterReading
call.i @@NewGMLArray@@(argc=2)
pushref.i 127
pushi.e -9
pop.v.v [stacktop]self.callback

:[end]