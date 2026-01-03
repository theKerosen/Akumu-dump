:[0]
push.v builtin.speed
pushi.e 0
cmp.i.v NEQ
bf [2]

:[1]
exit.i

:[2]
pushi.e 1
pushref.i 127
pushi.e -9
pop.v.b [stacktop]self.hasAudio
push.s ""@36
pushref.i 127
pushi.e -9
pop.v.s [stacktop]self.Speaker
push.s "My sister, my father... and me."@1208
conv.s.v
push.s "Our family."@1209
conv.s.v
call.i gml_Script_OpenTextBox(argc=2)
popz.v
pushi.e 1
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
pushi.e 1
pop.v.i builtin.state
push.i 131066
setowner.e
call.i @@This@@(argc=0)
pushref.i 98
call.i @@NewGMLArray@@(argc=2)
pushref.i gml_Script_scrFinishCharacterReading
call.i @@NewGMLArray@@(argc=2)
pushref.i 127
pushi.e -9
pop.v.v [stacktop]self.callback

:[end]