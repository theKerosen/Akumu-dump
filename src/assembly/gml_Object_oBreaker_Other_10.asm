:[0]
push.v builtin.speed
pushi.e 0
cmp.i.v NEQ
bf [2]

:[1]
exit.i

:[2]
push.v builtin.off
conv.v.b
bf [4]

:[3]
push.s "The power is currently off. Want to turn it on?"@1124
conv.s.v
call.i gml_Script_OpenTextBox(argc=1)
popz.v
b [5]

:[4]
push.s "The power is already on."@1125
conv.s.v
call.i gml_Script_OpenTextBox(argc=1)
popz.v

:[5]
pushi.e 1
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
pushi.e 1
pop.v.i builtin.state
push.i 131066
setowner.e
pushref.i 21
pushref.i 98
call.i @@NewGMLArray@@(argc=2)
pushref.i gml_Script_scrFinishCharacterReading
call.i @@NewGMLArray@@(argc=2)
pushref.i 127
pushi.e -9
pop.v.v [stacktop]self.callback

:[end]