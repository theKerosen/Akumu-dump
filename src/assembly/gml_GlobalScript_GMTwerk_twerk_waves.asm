:[0]
b [10]

> gml_Script_tw_sawtooth (locals=0, argc=2)
:[1]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e 1
pop.v.b builtin.argument1

:[3]
push.v arg.argument1
conv.v.b
bf [5]

:[4]
push.v arg.argument0
b [8]

:[5]
push.v arg.argument0
push.d 0.5
cmp.d.v LTE
bf [7]

:[6]
pushi.e 2
push.v arg.argument0
mul.v.i
b [8]

:[7]
pushi.e 2
push.v arg.argument0
mul.v.i
pushi.e 2
sub.i.v

:[8]
ret.v

:[9]
exit.i

:[10]
push.i [function]gml_Script_tw_sawtooth
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.tw_sawtooth
popz.v
b [18]

> gml_Script_tw_sawtooth_reverse (locals=0, argc=2)
:[11]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [13]

:[12]
pushi.e 1
pop.v.b builtin.argument1

:[13]
push.v arg.argument1
conv.v.b
bf [15]

:[14]
pushi.e 1
push.v arg.argument0
sub.v.i
b [16]

:[15]
pushi.e 1
pushi.e 2
push.v arg.argument0
mul.v.i
sub.v.i

:[16]
ret.v

:[17]
exit.i

:[18]
push.i [function]gml_Script_tw_sawtooth_reverse
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.tw_sawtooth_reverse
popz.v
b [26]

> gml_Script_tw_sinusoid (locals=0, argc=2)
:[19]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [21]

:[20]
pushi.e 1
pop.v.b builtin.argument1

:[21]
push.v arg.argument1
conv.v.b
bf [23]

:[22]
push.d 0.5
push.d 0.5
push.d 6.283185307179586
push.v arg.argument0
mul.v.d
call.i cos(argc=1)
mul.v.d
sub.v.d
b [24]

:[23]
push.d 6.283185307179586
push.v arg.argument0
mul.v.d
call.i sin(argc=1)

:[24]
ret.v

:[25]
exit.i

:[26]
push.i [function]gml_Script_tw_sinusoid
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.tw_sinusoid
popz.v
b [41]

> gml_Script_tw_triangle (locals=0, argc=2)
:[27]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [29]

:[28]
pushi.e 1
pop.v.b builtin.argument1

:[29]
push.v arg.argument1
conv.v.b
bf [34]

:[30]
push.v arg.argument0
push.d 0.5
cmp.d.v LTE
bf [32]

:[31]
pushi.e 2
push.v arg.argument0
mul.v.i
b [33]

:[32]
pushi.e 2
pushi.e 2
push.v arg.argument0
mul.v.i
sub.v.i

:[33]
b [39]

:[34]
push.v arg.argument0
push.d 0.25
cmp.d.v LTE
bf [36]

:[35]
pushi.e 4
push.v arg.argument0
mul.v.i
b [39]

:[36]
push.v arg.argument0
push.d 0.75
cmp.d.v LTE
bf [38]

:[37]
pushi.e 2
pushi.e 4
push.v arg.argument0
mul.v.i
sub.v.i
b [39]

:[38]
pushi.e 4
push.v arg.argument0
mul.v.i
pushi.e 4
sub.i.v

:[39]
ret.v

:[40]
exit.i

:[41]
push.i [function]gml_Script_tw_triangle
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.tw_triangle
popz.v

:[end]