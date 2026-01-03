:[0]
pushi.e 1
pop.v.b builtin.canDraw
pushi.e 5
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
b [14]

> gml_Script_anon@57@gml_Object_oPicture4_Other_10 (locals=0, argc=0)
:[1]
pushi.e 0
pop.v.b builtin.canDraw
push.v builtin.speed
pushi.e 0
cmp.i.v NEQ
bf [3]

:[2]
exit.i

:[3]
pushglb.v global.debounce2
pushi.e 0
cmp.b.v EQ
bf [5]

:[4]
pushglb.v global.basementpuzzlecomplete
pushi.e 0
cmp.b.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
push.s "There is a hidden button behind the painting, want to press it?"@1437
conv.s.v
call.i gml_Script_OpenTextBox(argc=1)
popz.v
b [13]

:[8]
pushglb.v global.debounce2
pushi.e 1
cmp.b.v EQ
bt [10]

:[9]
pushglb.v global.basementpuzzlecomplete
pushi.e 1
cmp.b.v EQ
b [11]

:[10]
push.e 1

:[11]
bf [13]

:[12]
pushi.e 1
pushref.i 127
pushi.e -9
pop.v.b [stacktop]self.hasAudio
push.s "The button is locked in place."@1438
conv.s.v
call.i gml_Script_OpenTextBox(argc=1)
popz.v

:[13]
pushi.e 1
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
pushi.e 1
pop.v.i builtin.state
push.i 40763386
setowner.e
pushref.i 96
pushref.i 98
call.i @@NewGMLArray@@(argc=2)
pushref.i gml_Script_scrFinishCharacterReading
call.i @@NewGMLArray@@(argc=2)
pushref.i 127
pushi.e -9
pop.v.v [stacktop]self.callback
exit.i

:[14]
push.i [function]gml_Script_anon@57@gml_Object_oPicture4_Other_10
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 2000
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v

:[end]