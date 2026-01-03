:[0]
push.v builtin.speed
pushi.e 0
cmp.i.v NEQ
bf [2]

:[1]
exit.i

:[2]
pushglb.v global.debounce2
pushi.e 0
cmp.b.v EQ
bf [4]

:[3]
push.s "The one who did everything."@1445
conv.s.v
call.i gml_Script_OpenTextBox(argc=1)
popz.v
b [6]

:[4]
pushglb.v global.debounce2
pushi.e 1
cmp.b.v EQ
bf [6]

:[5]
push.s "The button is locked in place."@1438
conv.s.v
call.i gml_Script_OpenTextBox(argc=1)
popz.v

:[6]
pushi.e 1
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
pushi.e 1
pop.v.i builtin.state
push.i 131066
setowner.e
pushref.i 94
pushref.i 98
call.i @@NewGMLArray@@(argc=2)
pushref.i gml_Script_scrFinishCharacterReading
call.i @@NewGMLArray@@(argc=2)
pushref.i 127
pushi.e -9
pop.v.v [stacktop]self.callback

:[end]