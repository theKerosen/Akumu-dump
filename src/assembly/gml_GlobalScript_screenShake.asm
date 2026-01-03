:[0]
b [4]

> gml_Script_screenshake (locals=0, argc=3)
:[1]
pushref.i 53
pushi.e -9
pushenv [3]

:[2]
pushi.e 1
pop.v.b builtin.shake
push.v arg.argument0
pop.v.v builtin.shake_time
push.v arg.argument1
pop.v.v builtin.shake_magnitude
push.v arg.argument2
pop.v.v builtin.shake_fade

:[3]
popenv [2]
exit.i

:[4]
push.i [function]gml_Script_screenshake
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.screenshake
popz.v

:[end]