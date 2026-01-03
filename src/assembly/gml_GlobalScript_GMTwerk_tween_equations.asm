:[0]
b [12]

> gml_Script___te_bounce_kernel__ (locals=0, argc=3)
:[1]
push.v arg.argument0
push.d 0.36363636363636365
cmp.d.v LT
bf [4]

:[2]
push.v arg.argument2
push.d 7.5625
push.v arg.argument0
mul.v.d
push.v arg.argument0
mul.v.v
mul.v.v
push.v arg.argument1
add.v.v
ret.v

:[3]
b [11]

:[4]
push.v arg.argument0
push.d 0.7272727272727273
cmp.d.v LT
bf [7]

:[5]
push.v arg.argument0
push.d 0.5454545454545454
sub.d.v
pop.v.v arg.argument0
push.v arg.argument2
push.d 7.5625
push.v arg.argument0
mul.v.d
push.v arg.argument0
mul.v.v
push.d 0.75
add.d.v
mul.v.v
push.v arg.argument1
add.v.v
ret.v

:[6]
b [11]

:[7]
push.v arg.argument0
push.d 0.9090909090909091
cmp.d.v LT
bf [10]

:[8]
push.v arg.argument0
push.d 0.8181818181818182
sub.d.v
pop.v.v arg.argument0
push.v arg.argument2
push.d 7.5625
push.v arg.argument0
mul.v.d
push.v arg.argument0
mul.v.v
push.d 0.9375
add.d.v
mul.v.v
push.v arg.argument1
add.v.v
ret.v

:[9]
b [11]

:[10]
push.v arg.argument0
push.d 0.9545454545454546
sub.d.v
pop.v.v arg.argument0
push.v arg.argument2
push.d 7.5625
push.v arg.argument0
mul.v.d
push.v arg.argument0
mul.v.v
push.d 0.984375
add.d.v
mul.v.v
push.v arg.argument1
add.v.v
ret.v

:[11]
exit.i

:[12]
push.i [function]gml_Script___te_bounce_kernel__
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.__te_bounce_kernel__
popz.v
b [15]

> gml_Script_te_back_in (locals=1, argc=3)
:[13]
push.d 1.70158
pop.v.d local.s
push.v arg.argument1
push.v arg.argument0
sub.v.v
push.v arg.argument2
mul.v.v
push.v arg.argument2
mul.v.v
pushloc.v local.s
pushi.e 1
add.i.v
push.v arg.argument2
mul.v.v
pushloc.v local.s
sub.v.v
mul.v.v
push.v arg.argument0
add.v.v
ret.v

:[14]
exit.i

:[15]
push.i [function]gml_Script_te_back_in
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.te_back_in
popz.v
b [21]

> gml_Script_te_back_inout (locals=1, argc=3)
:[16]
push.d 2.5949095
pop.v.d local.s
push.v arg.argument2
push.d 0.5
div.d.v
pop.v.v arg.argument2
push.v arg.argument2
pushi.e 1
cmp.i.v LT
bf [19]

:[17]
push.v arg.argument1
push.v arg.argument0
sub.v.v
pushi.e 2
conv.i.d
div.d.v
push.v arg.argument2
push.v arg.argument2
mul.v.v
pushloc.v local.s
pushi.e 1
add.i.v
push.v arg.argument2
mul.v.v
pushloc.v local.s
sub.v.v
mul.v.v
mul.v.v
push.v arg.argument0
add.v.v
ret.v

:[18]
b [20]

:[19]
push.v arg.argument2
pushi.e 2
sub.i.v
pop.v.v arg.argument2
push.v arg.argument1
push.v arg.argument0
sub.v.v
pushi.e 2
conv.i.d
div.d.v
push.v arg.argument2
push.v arg.argument2
mul.v.v
pushloc.v local.s
pushi.e 1
add.i.v
push.v arg.argument2
mul.v.v
pushloc.v local.s
add.v.v
mul.v.v
pushi.e 2
add.i.v
mul.v.v
push.v arg.argument0
add.v.v
ret.v

:[20]
exit.i

:[21]
push.i [function]gml_Script_te_back_inout
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.te_back_inout
popz.v
b [24]

> gml_Script_te_back_out (locals=1, argc=3)
:[22]
push.d 1.70158
pop.v.d local.s
push.v arg.argument2
pushi.e 1
sub.i.v
pop.v.v arg.argument2
push.v arg.argument1
push.v arg.argument0
sub.v.v
push.v arg.argument2
push.v arg.argument2
mul.v.v
pushloc.v local.s
pushi.e 1
add.i.v
push.v arg.argument2
mul.v.v
pushloc.v local.s
add.v.v
mul.v.v
pushi.e 1
add.i.v
mul.v.v
push.v arg.argument0
add.v.v
ret.v

:[23]
exit.i

:[24]
push.i [function]gml_Script_te_back_out
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.te_back_out
popz.v
b [27]

> gml_Script_te_bounce_in (locals=1, argc=3)
:[25]
push.v arg.argument1
push.v arg.argument0
sub.v.v
pop.v.v local.c
pushloc.v local.c
pushloc.v local.c
pushi.e 0
conv.i.v
pushi.e 1
push.v arg.argument2
sub.v.i
call.i gml_Script___te_bounce_kernel__(argc=3)
sub.v.v
push.v arg.argument0
add.v.v
ret.v

:[26]
exit.i

:[27]
push.i [function]gml_Script_te_bounce_in
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.te_bounce_in
popz.v
b [33]

> gml_Script_te_bounce_inout (locals=1, argc=3)
:[28]
push.v arg.argument1
push.v arg.argument0
sub.v.v
pop.v.v local.c
push.v arg.argument2
push.d 0.5
cmp.d.v LT
bf [31]

:[29]
pushi.e 2
push.v arg.argument2
mul.v.i
push.v arg.argument0
pushloc.v local.c
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v arg.argument0
call.i gml_Script_te_bounce_in(argc=3)
ret.v

:[30]
b [32]

:[31]
pushi.e 2
push.v arg.argument2
push.d 0.5
sub.d.v
mul.v.i
push.v arg.argument0
pushloc.v local.c
add.v.v
push.v arg.argument0
pushloc.v local.c
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i gml_Script_te_bounce_out(argc=3)
ret.v

:[32]
exit.i

:[33]
push.i [function]gml_Script_te_bounce_inout
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.te_bounce_inout
popz.v
b [36]

> gml_Script_te_bounce_out (locals=0, argc=3)
:[34]
push.v arg.argument1
push.v arg.argument0
sub.v.v
push.v arg.argument0
push.v arg.argument2
call.i gml_Script___te_bounce_kernel__(argc=3)
ret.v

:[35]
exit.i

:[36]
push.i [function]gml_Script_te_bounce_out
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.te_bounce_out
popz.v
b [39]

> gml_Script_te_circ_in (locals=0, argc=3)
:[37]
push.v arg.argument0
push.v arg.argument1
sub.v.v
pushi.e 1
push.v arg.argument2
push.v arg.argument2
mul.v.v
sub.v.i
call.i sqrt(argc=1)
pushi.e 1
sub.i.v
mul.v.v
push.v arg.argument0
add.v.v
ret.v

:[38]
exit.i

:[39]
push.i [function]gml_Script_te_circ_in
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.te_circ_in
popz.v
b [45]

> gml_Script_te_circ_inout (locals=0, argc=3)
:[40]
push.v arg.argument2
push.d 0.5
div.d.v
pop.v.v arg.argument2
push.v arg.argument2
pushi.e 1
cmp.i.v LT
bf [43]

:[41]
push.v arg.argument0
push.v arg.argument1
sub.v.v
pushi.e 2
conv.i.d
div.d.v
pushi.e 1
push.v arg.argument2
push.v arg.argument2
mul.v.v
sub.v.i
call.i sqrt(argc=1)
pushi.e 1
sub.i.v
mul.v.v
push.v arg.argument0
add.v.v
ret.v

:[42]
b [44]

:[43]
push.v arg.argument2
pushi.e 2
sub.i.v
pop.v.v arg.argument2
push.v arg.argument1
push.v arg.argument0
sub.v.v
pushi.e 2
conv.i.d
div.d.v
pushi.e 1
push.v arg.argument2
push.v arg.argument2
mul.v.v
sub.v.i
call.i sqrt(argc=1)
pushi.e 1
add.i.v
mul.v.v
push.v arg.argument0
add.v.v
ret.v

:[44]
exit.i

:[45]
push.i [function]gml_Script_te_circ_inout
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.te_circ_inout
popz.v
b [48]

> gml_Script_te_circ_out (locals=0, argc=3)
:[46]
push.v arg.argument2
pushi.e 1
sub.i.v
pop.v.v arg.argument2
push.v arg.argument1
push.v arg.argument0
sub.v.v
pushi.e 1
push.v arg.argument2
push.v arg.argument2
mul.v.v
sub.v.i
call.i sqrt(argc=1)
mul.v.v
push.v arg.argument0
add.v.v
ret.v

:[47]
exit.i

:[48]
push.i [function]gml_Script_te_circ_out
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.te_circ_out
popz.v
b [51]

> gml_Script_te_cubic_in (locals=0, argc=3)
:[49]
push.v arg.argument1
push.v arg.argument0
sub.v.v
push.v arg.argument2
mul.v.v
push.v arg.argument2
mul.v.v
push.v arg.argument2
mul.v.v
push.v arg.argument0
add.v.v
ret.v

:[50]
exit.i

:[51]
push.i [function]gml_Script_te_cubic_in
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.te_cubic_in
popz.v
b [57]

> gml_Script_te_cubic_inout (locals=0, argc=3)
:[52]
push.v arg.argument2
push.d 0.5
div.d.v
pop.v.v arg.argument2
push.v arg.argument2
pushi.e 1
cmp.i.v LT
bf [55]

:[53]
push.v arg.argument1
push.v arg.argument0
sub.v.v
pushi.e 2
conv.i.d
div.d.v
push.v arg.argument2
mul.v.v
push.v arg.argument2
mul.v.v
push.v arg.argument2
mul.v.v
push.v arg.argument0
add.v.v
ret.v

:[54]
b [56]

:[55]
push.v arg.argument2
pushi.e 2
sub.i.v
pop.v.v arg.argument2
push.v arg.argument1
push.v arg.argument0
sub.v.v
pushi.e 2
conv.i.d
div.d.v
push.v arg.argument2
push.v arg.argument2
mul.v.v
push.v arg.argument2
mul.v.v
pushi.e 2
add.i.v
mul.v.v
push.v arg.argument0
add.v.v
ret.v

:[56]
exit.i

:[57]
push.i [function]gml_Script_te_cubic_inout
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.te_cubic_inout
popz.v
b [60]

> gml_Script_te_cubic_out (locals=0, argc=3)
:[58]
push.v arg.argument2
pushi.e 1
sub.i.v
pop.v.v arg.argument2
push.v arg.argument1
push.v arg.argument0
sub.v.v
push.v arg.argument2
push.v arg.argument2
mul.v.v
push.v arg.argument2
mul.v.v
pushi.e 1
add.i.v
mul.v.v
push.v arg.argument0
add.v.v
ret.v

:[59]
exit.i

:[60]
push.i [function]gml_Script_te_cubic_out
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.te_cubic_out
popz.v
b [70]

> gml_Script_te_elastic_in (locals=4, argc=3)
:[61]
push.v arg.argument1
push.v arg.argument0
sub.v.v
pop.v.v local.c
push.d 1.70158
pop.v.d local.s
push.v arg.argument2
pushi.e 0
cmp.i.v EQ
bf [63]

:[62]
push.v arg.argument0
ret.v

:[63]
push.v arg.argument2
pushi.e 1
cmp.i.v EQ
bf [65]

:[64]
push.v arg.argument0
pushloc.v local.c
add.v.v
ret.v

:[65]
push.d 0.6
pop.v.d local.p
pushloc.v local.c
pop.v.v local.a
pushloc.v local.a
pushloc.v local.c
call.i abs(argc=1)
cmp.v.v LT
bf [67]

:[66]
pushloc.v local.c
pop.v.v local.a
pushloc.v local.p
pushi.e 4
conv.i.d
div.d.v
pop.v.v local.s
b [68]

:[67]
pushloc.v local.p
push.d 6.283185307179586
div.d.v
pushloc.v local.c
pushloc.v local.a
div.v.v
call.i arcsin(argc=1)
mul.v.v
pop.v.v local.s

:[68]
push.v arg.argument2
pushi.e 1
sub.i.v
pop.v.v arg.argument2
pushloc.v local.a
pushi.e 10
push.v arg.argument2
mul.v.i
pushi.e 2
conv.i.v
call.i power(argc=2)
mul.v.v
push.v arg.argument2
pushi.e 1
mul.i.v
pushloc.v local.s
sub.v.v
push.d 6.283185307179586
mul.d.v
pushloc.v local.p
div.v.v
call.i sin(argc=1)
mul.v.v
neg.v
push.v arg.argument0
add.v.v
ret.v

:[69]
exit.i

:[70]
push.i [function]gml_Script_te_elastic_in
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.te_elastic_in
popz.v
b [83]

> gml_Script_te_elastic_inout (locals=4, argc=3)
:[71]
push.v arg.argument1
push.v arg.argument0
sub.v.v
pop.v.v local.c
push.d 1.70158
pop.v.d local.s
push.v arg.argument2
push.d 0.5
div.d.v
pop.v.v arg.argument2
push.v arg.argument2
pushi.e 0
cmp.i.v EQ
bf [73]

:[72]
push.v arg.argument0
ret.v

:[73]
push.v arg.argument2
pushi.e 2
cmp.i.v EQ
bf [75]

:[74]
push.v arg.argument0
pushloc.v local.c
add.v.v
ret.v

:[75]
push.d 0.8999999999999999
pop.v.d local.p
pushloc.v local.c
pop.v.v local.a
pushloc.v local.a
pushloc.v local.c
call.i abs(argc=1)
cmp.v.v LT
bf [77]

:[76]
pushloc.v local.c
pop.v.v local.a
pushloc.v local.p
pushi.e 4
conv.i.d
div.d.v
pop.v.v local.s
b [78]

:[77]
pushloc.v local.p
push.d 6.283185307179586
div.d.v
pushloc.v local.c
pushloc.v local.a
div.v.v
call.i arcsin(argc=1)
mul.v.v
pop.v.v local.s

:[78]
push.v arg.argument2
pushi.e 1
sub.i.v
pop.v.v arg.argument2
push.v arg.argument2
pushi.e 0
cmp.i.v LT
bf [81]

:[79]
push.d -0.5
pushloc.v local.a
pushi.e 10
push.v arg.argument2
mul.v.i
pushi.e 2
conv.i.v
call.i power(argc=2)
mul.v.v
push.v arg.argument2
pushi.e 1
mul.i.v
pushloc.v local.s
sub.v.v
push.d 6.283185307179586
mul.d.v
pushloc.v local.p
div.v.v
call.i sin(argc=1)
mul.v.v
mul.v.d
push.v arg.argument0
add.v.v
ret.v

:[80]
b [82]

:[81]
pushloc.v local.a
pushi.e -10
push.v arg.argument2
mul.v.i
pushi.e 2
conv.i.v
call.i power(argc=2)
mul.v.v
push.v arg.argument2
pushi.e 1
mul.i.v
pushloc.v local.s
sub.v.v
push.d 6.283185307179586
mul.d.v
pushloc.v local.p
div.v.v
call.i sin(argc=1)
mul.v.v
push.d 0.5
mul.d.v
pushloc.v local.c
add.v.v
push.v arg.argument0
add.v.v
ret.v

:[82]
exit.i

:[83]
push.i [function]gml_Script_te_elastic_inout
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.te_elastic_inout
popz.v
b [93]

> gml_Script_te_elastic_out (locals=4, argc=3)
:[84]
push.v arg.argument1
push.v arg.argument0
sub.v.v
pop.v.v local.c
push.d 1.70158
pop.v.d local.s
push.v arg.argument2
pushi.e 0
cmp.i.v EQ
bf [86]

:[85]
push.v arg.argument0
ret.v

:[86]
push.v arg.argument2
pushi.e 1
cmp.i.v EQ
bf [88]

:[87]
push.v arg.argument0
pushloc.v local.c
add.v.v
ret.v

:[88]
push.d 0.6
pop.v.d local.p
pushloc.v local.c
pop.v.v local.a
pushloc.v local.a
pushloc.v local.c
call.i abs(argc=1)
cmp.v.v LT
bf [90]

:[89]
pushloc.v local.c
pop.v.v local.a
pushloc.v local.p
pushi.e 4
conv.i.d
div.d.v
pop.v.v local.s
b [91]

:[90]
pushloc.v local.p
push.d 6.283185307179586
div.d.v
pushloc.v local.c
pushloc.v local.a
div.v.v
call.i arcsin(argc=1)
mul.v.v
pop.v.v local.s

:[91]
pushloc.v local.a
pushi.e -10
push.v arg.argument2
mul.v.i
pushi.e 2
conv.i.v
call.i power(argc=2)
mul.v.v
push.v arg.argument2
pushi.e 1
mul.i.v
pushloc.v local.s
sub.v.v
push.d 6.283185307179586
mul.d.v
pushloc.v local.p
div.v.v
call.i sin(argc=1)
mul.v.v
pushloc.v local.c
add.v.v
push.v arg.argument0
add.v.v
ret.v

:[92]
exit.i

:[93]
push.i [function]gml_Script_te_elastic_out
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.te_elastic_out
popz.v
b [99]

> gml_Script_te_exp_in (locals=0, argc=3)
:[94]
push.v arg.argument2
pushi.e 0
cmp.i.v EQ
bf [97]

:[95]
push.v arg.argument0
ret.v

:[96]
b [98]

:[97]
push.v arg.argument1
push.v arg.argument0
sub.v.v
pushi.e 10
push.v arg.argument2
pushi.e 1
conv.i.d
div.d.v
pushi.e 1
sub.i.v
mul.v.i
pushi.e 2
conv.i.v
call.i power(argc=2)
mul.v.v
push.v arg.argument0
add.v.v
ret.v

:[98]
exit.i

:[99]
push.i [function]gml_Script_te_exp_in
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.te_exp_in
popz.v
b [109]

> gml_Script_te_exp_inout (locals=0, argc=3)
:[100]
push.v arg.argument2
pushi.e 0
cmp.i.v EQ
bf [102]

:[101]
push.v arg.argument0
ret.v

:[102]
push.v arg.argument2
pushi.e 1
cmp.i.v EQ
bf [104]

:[103]
push.v arg.argument1
ret.v

:[104]
push.v arg.argument2
push.d 0.5
div.d.v
pop.v.v arg.argument2
push.v arg.argument2
pushi.e 1
cmp.i.v LT
bf [107]

:[105]
push.v arg.argument1
push.v arg.argument0
sub.v.v
pushi.e 2
conv.i.d
div.d.v
pushi.e 10
push.v arg.argument2
pushi.e 1
sub.i.v
mul.v.i
pushi.e 2
conv.i.v
call.i power(argc=2)
mul.v.v
push.v arg.argument0
add.v.v
ret.v

:[106]
b [108]

:[107]
push.v arg.argument2
pushi.e 1
sub.i.v
pop.v.v arg.argument2
push.v arg.argument1
push.v arg.argument0
sub.v.v
pushi.e 2
conv.i.d
div.d.v
pushi.e -10
push.v arg.argument2
mul.v.i
pushi.e 2
conv.i.v
call.i power(argc=2)
neg.v
pushi.e 2
add.i.v
mul.v.v
push.v arg.argument0
add.v.v
ret.v

:[108]
exit.i

:[109]
push.i [function]gml_Script_te_exp_inout
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.te_exp_inout
popz.v
b [115]

> gml_Script_te_exp_out (locals=0, argc=3)
:[110]
push.v arg.argument2
pushi.e 1
cmp.i.v EQ
bf [113]

:[111]
push.v arg.argument1
ret.v

:[112]
b [114]

:[113]
push.v arg.argument1
push.v arg.argument0
sub.v.v
pushi.e -10
push.v arg.argument2
mul.v.i
pushi.e 1
conv.i.d
div.d.v
pushi.e 2
conv.i.v
call.i power(argc=2)
neg.v
pushi.e 1
add.i.v
mul.v.v
push.v arg.argument0
add.v.v
ret.v

:[114]
exit.i

:[115]
push.i [function]gml_Script_te_exp_out
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.te_exp_out
popz.v
b [118]

> gml_Script_te_linear (locals=0, argc=3)
:[116]
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
call.i lerp(argc=3)
ret.v

:[117]
exit.i

:[118]
push.i [function]gml_Script_te_linear
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.te_linear
popz.v
b [121]

> gml_Script_te_quadratic_in (locals=0, argc=3)
:[119]
push.v arg.argument1
push.v arg.argument0
sub.v.v
push.v arg.argument2
mul.v.v
push.v arg.argument2
mul.v.v
push.v arg.argument0
add.v.v
ret.v

:[120]
exit.i

:[121]
push.i [function]gml_Script_te_quadratic_in
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.te_quadratic_in
popz.v
b [127]

> gml_Script_te_quadratic_inout (locals=0, argc=3)
:[122]
push.v arg.argument2
push.d 0.5
div.d.v
pop.v.v arg.argument2
push.v arg.argument2
pushi.e 1
cmp.i.v LT
bf [125]

:[123]
push.v arg.argument1
push.v arg.argument0
sub.v.v
pushi.e 2
conv.i.d
div.d.v
push.v arg.argument2
mul.v.v
push.v arg.argument2
mul.v.v
push.v arg.argument0
add.v.v
ret.v

:[124]
b [126]

:[125]
push.v arg.argument2
push.e 1
sub.i.v
pop.v.v arg.argument2
push.v arg.argument0
push.v arg.argument1
sub.v.v
pushi.e 2
conv.i.d
div.d.v
push.v arg.argument2
push.v arg.argument2
pushi.e 2
sub.i.v
mul.v.v
pushi.e 1
sub.i.v
mul.v.v
push.v arg.argument0
add.v.v
ret.v

:[126]
exit.i

:[127]
push.i [function]gml_Script_te_quadratic_inout
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.te_quadratic_inout
popz.v
b [130]

> gml_Script_te_quadratic_out (locals=0, argc=3)
:[128]
push.v arg.argument0
push.v arg.argument1
sub.v.v
push.v arg.argument2
mul.v.v
push.v arg.argument2
pushi.e 2
sub.i.v
mul.v.v
push.v arg.argument0
add.v.v
ret.v

:[129]
exit.i

:[130]
push.i [function]gml_Script_te_quadratic_out
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.te_quadratic_out
popz.v
b [133]

> gml_Script_te_quartic_in (locals=0, argc=3)
:[131]
push.v arg.argument1
push.v arg.argument0
sub.v.v
push.v arg.argument2
mul.v.v
push.v arg.argument2
mul.v.v
push.v arg.argument2
mul.v.v
push.v arg.argument2
mul.v.v
push.v arg.argument0
add.v.v
ret.v

:[132]
exit.i

:[133]
push.i [function]gml_Script_te_quartic_in
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.te_quartic_in
popz.v
b [139]

> gml_Script_te_quartic_inout (locals=0, argc=3)
:[134]
push.v arg.argument2
push.d 0.5
div.d.v
pop.v.v arg.argument2
push.v arg.argument2
pushi.e 1
cmp.i.v LT
bf [137]

:[135]
push.v arg.argument1
push.v arg.argument0
sub.v.v
pushi.e 2
conv.i.d
div.d.v
push.v arg.argument2
mul.v.v
push.v arg.argument2
mul.v.v
push.v arg.argument2
mul.v.v
push.v arg.argument2
mul.v.v
push.v arg.argument0
add.v.v
ret.v

:[136]
b [138]

:[137]
push.v arg.argument2
pushi.e 2
sub.i.v
pop.v.v arg.argument2
push.v arg.argument0
push.v arg.argument1
sub.v.v
pushi.e 2
conv.i.d
div.d.v
push.v arg.argument2
push.v arg.argument2
mul.v.v
push.v arg.argument2
mul.v.v
push.v arg.argument2
mul.v.v
pushi.e 2
sub.i.v
mul.v.v
push.v arg.argument0
add.v.v
ret.v

:[138]
exit.i

:[139]
push.i [function]gml_Script_te_quartic_inout
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.te_quartic_inout
popz.v
b [142]

> gml_Script_te_quartic_out (locals=0, argc=3)
:[140]
push.v arg.argument2
pushi.e 1
sub.i.v
pop.v.v arg.argument2
push.v arg.argument0
push.v arg.argument1
sub.v.v
push.v arg.argument2
push.v arg.argument2
mul.v.v
push.v arg.argument2
mul.v.v
push.v arg.argument2
mul.v.v
pushi.e 1
sub.i.v
mul.v.v
push.v arg.argument0
add.v.v
ret.v

:[141]
exit.i

:[142]
push.i [function]gml_Script_te_quartic_out
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.te_quartic_out
popz.v
b [145]

> gml_Script_te_quintic_in (locals=0, argc=3)
:[143]
push.v arg.argument1
push.v arg.argument0
sub.v.v
push.v arg.argument2
mul.v.v
push.v arg.argument2
mul.v.v
push.v arg.argument2
mul.v.v
push.v arg.argument2
mul.v.v
push.v arg.argument2
mul.v.v
push.v arg.argument0
add.v.v
ret.v

:[144]
exit.i

:[145]
push.i [function]gml_Script_te_quintic_in
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.te_quintic_in
popz.v
b [151]

> gml_Script_te_quintic_inout (locals=0, argc=3)
:[146]
push.v arg.argument2
push.d 0.5
div.d.v
pop.v.v arg.argument2
push.v arg.argument2
pushi.e 1
cmp.i.v LT
bf [149]

:[147]
push.v arg.argument1
push.v arg.argument0
sub.v.v
pushi.e 2
conv.i.d
div.d.v
push.v arg.argument2
mul.v.v
push.v arg.argument2
mul.v.v
push.v arg.argument2
mul.v.v
push.v arg.argument2
mul.v.v
push.v arg.argument2
mul.v.v
push.v arg.argument0
add.v.v
ret.v

:[148]
b [150]

:[149]
push.v arg.argument2
pushi.e 2
sub.i.v
pop.v.v arg.argument2
push.v arg.argument1
push.v arg.argument0
sub.v.v
pushi.e 2
conv.i.d
div.d.v
push.v arg.argument2
push.v arg.argument2
mul.v.v
push.v arg.argument2
mul.v.v
push.v arg.argument2
mul.v.v
push.v arg.argument2
mul.v.v
pushi.e 2
add.i.v
mul.v.v
push.v arg.argument0
add.v.v
ret.v

:[150]
exit.i

:[151]
push.i [function]gml_Script_te_quintic_inout
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.te_quintic_inout
popz.v
b [154]

> gml_Script_te_quintic_out (locals=0, argc=3)
:[152]
push.v arg.argument2
pushi.e 1
sub.i.v
pop.v.v arg.argument2
push.v arg.argument1
push.v arg.argument0
sub.v.v
push.v arg.argument2
push.v arg.argument2
mul.v.v
push.v arg.argument2
mul.v.v
push.v arg.argument2
mul.v.v
push.v arg.argument2
mul.v.v
pushi.e 1
add.i.v
mul.v.v
push.v arg.argument0
add.v.v
ret.v

:[153]
exit.i

:[154]
push.i [function]gml_Script_te_quintic_out
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.te_quintic_out
popz.v
b [157]

> gml_Script_te_sine_in (locals=1, argc=3)
:[155]
push.v arg.argument1
push.v arg.argument0
sub.v.v
pop.v.v local.c
pushloc.v local.c
neg.v
push.v arg.argument2
push.d 3.141592653589793
mul.d.v
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
mul.v.v
pushloc.v local.c
add.v.v
push.v arg.argument0
add.v.v
ret.v

:[156]
exit.i

:[157]
push.i [function]gml_Script_te_sine_in
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.te_sine_in
popz.v
b [160]

> gml_Script_te_sine_inout (locals=0, argc=3)
:[158]
push.v arg.argument0
push.v arg.argument1
sub.v.v
pushi.e 2
conv.i.d
div.d.v
push.v arg.argument2
push.d 3.141592653589793
mul.d.v
call.i cos(argc=1)
pushi.e 1
sub.i.v
mul.v.v
push.v arg.argument0
add.v.v
ret.v

:[159]
exit.i

:[160]
push.i [function]gml_Script_te_sine_inout
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.te_sine_inout
popz.v
b [163]

> gml_Script_te_sine_out (locals=0, argc=3)
:[161]
push.v arg.argument1
push.v arg.argument0
sub.v.v
push.v arg.argument2
push.d 3.141592653589793
mul.d.v
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
mul.v.v
push.v arg.argument0
add.v.v
ret.v

:[162]
exit.i

:[163]
push.i [function]gml_Script_te_sine_out
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.te_sine_out
popz.v
b [166]

> gml_Script_te_swing (locals=0, argc=3)
:[164]
push.d 0.5
push.v arg.argument2
push.d 3.141592653589793
mul.d.v
call.i cos(argc=1)
pushi.e 2
conv.i.d
div.d.v
sub.v.d
push.v arg.argument1
push.v arg.argument0
call.i lerp(argc=3)
ret.v

:[165]
exit.i

:[166]
push.i [function]gml_Script_te_swing
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.te_swing
popz.v

:[end]