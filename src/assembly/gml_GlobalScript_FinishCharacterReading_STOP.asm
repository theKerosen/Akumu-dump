:[0]
b [10]

> gml_Script_scrFinishCharacterReading_STOP (locals=0, argc=2)
:[1]
pushi.e 5
push.v arg.argument0
pushi.e -9
pop.v.i [stacktop]self.state
push.s ""@36
pushref.i 127
pushi.e -9
pop.v.s [stacktop]self.Speaker
pushi.e 0
pushref.i 127
pushi.e -9
pop.v.b [stacktop]self.hasAudio
pushref.i 86
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[2]
pushref.i 86
pushi.e -9
pushenv [6]

:[3]
b [5]

> gml_Script_anon@367@scrFinishCharacterReading_STOP@FinishCharacterReading_STOP (locals=0, argc=0)
:[4]
pushi.e 1
pop.v.b builtin.canDraw
exit.i

:[5]
push.i [function]gml_Script_anon@367@scrFinishCharacterReading_STOP@FinishCharacterReading_STOP
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 1000
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v

:[6]
popenv [3]

:[7]
push.v arg.argument1
pushi.e -4
cmp.i.v NEQ
bf [9]

:[8]
pushi.e 5
push.v arg.argument1
pushi.e -9
pop.v.i [stacktop]self.state

:[9]
exit.i

:[10]
push.i [function]gml_Script_scrFinishCharacterReading_STOP
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scrFinishCharacterReading_STOP
popz.v

:[end]