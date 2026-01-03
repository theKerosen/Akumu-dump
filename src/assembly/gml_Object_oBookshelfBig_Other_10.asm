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
push.v builtin.itemId
pushi.e -4
cmp.i.v NEQ
bf [12]

:[6]
push.v builtin.canDialogue
conv.v.b
bf [8]

:[7]
pushi.e 1
pushref.i 127
pushi.e -9
pop.v.b [stacktop]self.hasAudio
push.s "Maybe I can use it for something."@1118
conv.s.v
push.s "There's a strange book here."@1119
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
pushref.i 18
pushref.i 98
call.i @@NewGMLArray@@(argc=2)
pushref.i gml_Script_scrFinishCharacterReading
call.i @@NewGMLArray@@(argc=2)
pushref.i 127
pushi.e -9
pop.v.v [stacktop]self.callback
b [11]

:[8]
push.v builtin.speed
pushi.e 0
cmp.i.v NEQ
bf [10]

:[9]
exit.i

:[10]
pushi.e 1
pushref.i 127
pushi.e -9
pop.v.b [stacktop]self.hasAudio
push.v builtin.inicialDialogue
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

:[11]
b [end]

:[12]
push.v builtin.speed
pushi.e 0
cmp.i.v NEQ
bf [14]

:[13]
exit.i

:[14]
pushi.e 1
pushref.i 127
pushi.e -9
pop.v.b [stacktop]self.hasAudio
push.v builtin.inicialDialogue
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