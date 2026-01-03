:[0]
b [2]

> gml_Script_scrStop (locals=0, argc=0)
:[1]
pushi.e 0
pop.v.i builtin.hsp
pushi.e 0
pop.v.i builtin.vsp
exit.i

:[2]
push.i [function]gml_Script_scrStop
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scrStop
popz.v

:[end]