:[0]
push.v builtin.havingDialogue
call.i show_debug_message(argc=1)
popz.v
pushref.i 98
pushi.e -9
push.v [stacktop]self.state
pushi.e 5
cmp.i.v EQ
bf [3]

:[1]
push.v builtin.havingDialogue
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.v builtin.state
pushi.e 5
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [end]

:[5]
pushi.e 0
pop.v.i builtin.state
b [7]

> gml_Script_anon@159@gml_Object_o31013Diag_Step_0 (locals=0, argc=0)
:[6]
push.s "I have to do this."@1103
conv.s.v
call.i gml_Script_OpenTextBox(argc=1)
popz.v
pushi.e 1
pushref.i 127
pushi.e -9
pop.v.b [stacktop]self.hasAudio
push.s ""@36
pushref.i 127
pushi.e -9
pop.v.s [stacktop]self.Speaker
pushi.e 1
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
pushi.e 1
pop.v.i builtin.state
push.v builtin.havingDialogue
push.e 1
add.i.v
pop.v.v builtin.havingDialogue
push.i 35913722
setowner.e
call.i @@This@@(argc=0)
pushref.i 98
call.i @@NewGMLArray@@(argc=2)
push.v builtin.myCallback
call.i @@NewGMLArray@@(argc=2)
pushref.i 127
pushi.e -9
pop.v.v [stacktop]self.callback
exit.i

:[7]
push.i [function]gml_Script_anon@159@gml_Object_o31013Diag_Step_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 3000
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v

:[end]