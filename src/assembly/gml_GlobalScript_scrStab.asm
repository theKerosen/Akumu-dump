:[0]
b [8]

> gml_Script_scrStab (locals=0, argc=0)
:[1]
pushglb.v global.cantKill
conv.v.b
bf [3]

:[2]
exit.i

:[3]
pushi.e 5
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
b [7]

> gml_Script_anon@263@scrStab@scrStab (locals=0, argc=0)
:[4]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e -4
conv.i.v
call.i gml_Script_set_song_ingame(argc=3)
popz.v
pushi.e 3
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.face
b [6]

> gml_Script_anon@358@anon@263@scrStab@scrStab (locals=0, argc=0)
:[5]
pushi.e 0
pop.v.i builtin.hsp
pushi.e 0
pop.v.i builtin.vsp
pushi.e 1
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.spd
pushi.e 4
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
pushi.e 0
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 16
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.face
exit.i

:[6]
push.i [function]gml_Script_anon@358@anon@263@scrStab@scrStab
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 4000
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v
exit.i

:[7]
push.i [function]gml_Script_anon@263@scrStab@scrStab
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 1000
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v
exit.i

:[8]
push.i [function]gml_Script_scrStab
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scrStab
popz.v

:[end]