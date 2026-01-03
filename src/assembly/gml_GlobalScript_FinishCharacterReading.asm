:[0]
b [15]

> gml_Script_scrFinishCharacterReading (locals=0, argc=2)
:[1]
pushi.e 0
push.v arg.argument0
pushi.e -9
pop.v.i [stacktop]self.state
pushi.e 0
pushref.i 127
pushi.e -9
pop.v.b [stacktop]self.hasAudio
push.s ""@36
pushref.i 127
pushi.e -9
pop.v.s [stacktop]self.Speaker
push.v arg.argument1
pushi.e -4
cmp.i.v NEQ
bf [14]

:[2]
pushi.e 0
push.v arg.argument1
pushi.e -9
pop.v.i [stacktop]self.state
pushref.i 80
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[3]
pushref.i 80
pushi.e -9
pushenv [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
popenv [4]

:[6]
pushref.i 77
call.i instance_exists(argc=1)
conv.v.b
bf [10]

:[7]
pushref.i 77
pushi.e -9
pushenv [9]

:[8]
pushi.e 0
pop.v.b builtin.debounce

:[9]
popenv [8]

:[10]
pushref.i 17
call.i instance_exists(argc=1)
conv.v.b
bf [14]

:[11]
pushref.i 17
pushi.e -9
pushenv [13]

:[12]
pushi.e 0
pop.v.b builtin.debounce

:[13]
popenv [12]

:[14]
exit.i

:[15]
push.i [function]gml_Script_scrFinishCharacterReading
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scrFinishCharacterReading
popz.v

:[end]