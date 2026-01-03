:[0]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushref.i 98
pushi.e -9
push.v [stacktop]self.state
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
exit.i

:[2]
push.s "blablabla"@1603
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

:[end]