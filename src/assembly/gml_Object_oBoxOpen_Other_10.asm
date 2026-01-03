:[0]
push.v builtin.itemId
pushi.e -4
cmp.i.v NEQ
bf [2]

:[1]
pushi.e 1
pushref.i 127
pushi.e -9
pop.v.b [stacktop]self.hasAudio
push.s "There's something inside\nthe box."@1121
conv.s.v
push.s "..."@1054
conv.s.v
call.i gml_Script_OpenTextBox(argc=2)
popz.v
pushi.e 1
pop.v.i builtin.state
pushi.e 1
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
push.i 131066
setowner.e
pushref.i 20
pushref.i 98
call.i @@NewGMLArray@@(argc=2)
pushref.i gml_Script_scrFinishCharacterReading
call.i @@NewGMLArray@@(argc=2)
pushref.i 127
pushi.e -9
pop.v.v [stacktop]self.callback
b [end]

:[2]
push.v builtin.speed
pushi.e 0
cmp.i.v NEQ
bf [4]

:[3]
exit.i

:[4]
pushi.e 1
pushref.i 127
pushi.e -9
pop.v.b [stacktop]self.hasAudio
push.s "Nothing inside of it."@1122
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