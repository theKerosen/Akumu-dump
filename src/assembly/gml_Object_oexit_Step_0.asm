:[0]
pushref.i 98
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [2]

:[1]
exit.i

:[2]
push.v builtin.canPlay
pushi.e 1
cmp.b.v EQ
bf [7]

:[3]
pushi.e 6
pushref.i 127
pushi.e -9
pop.v.i [stacktop]self.textSide
pushref.i 33554491
call.i audio_is_playing(argc=1)
conv.v.b
not.b
bf [7]

:[4]
push.v builtin.speed
pushi.e 0
cmp.i.v NEQ
bf [6]

:[5]
exit.i

:[6]
pushi.e 1
pushref.i 127
pushi.e -9
pop.v.b [stacktop]self.hasAudio
push.v builtin.myDialogue
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
pushref.i 41
pushref.i 98
call.i @@NewGMLArray@@(argc=2)
pushref.i gml_Script_scrFinishCharacterReading
call.i @@NewGMLArray@@(argc=2)
pushref.i 127
pushi.e -9
pop.v.v [stacktop]self.callback
pushi.e 0
pop.v.b builtin.canPlay

:[7]
pushref.i 98
pushi.e -9
push.v [stacktop]self.state
pushi.e 1
cmp.i.v NEQ
bf [9]

:[8]
pushref.i 127
pushi.e -9
push.v [stacktop]self.textSide
pushi.e 6
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [end]

:[11]
pushi.e 7
pushref.i 127
pushi.e -9
pop.v.i [stacktop]self.textSide

:[end]