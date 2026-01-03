:[0]
push.v builtin.count
push.e 1
add.i.v
pop.v.v builtin.count
push.v builtin.count
pushi.e 100
cmp.i.v EQ
bf [2]

:[1]
push.s "IT'S ALL YOUR FAULT."@1401
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
b [end]

:[2]
push.s "The rest of the page seems to have been torn off."@1402
conv.s.v
push.s "5. That's the third digit."@1403
conv.s.v
push.s "Don't forget."@1404
conv.s.v
call.i gml_Script_OpenTextBox(argc=3)
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

:[end]