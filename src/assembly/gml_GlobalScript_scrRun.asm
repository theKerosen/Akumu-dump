:[0]
b [24]

> gml_Script_scrRun (locals=0, argc=0)
:[1]
push.v builtin.key_run
conv.v.b
bf [15]

:[2]
pushref.i 23
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[3]
exit.i

:[4]
push.v builtin.hsp
pushi.e 0
cmp.i.v NEQ
bt [6]

:[5]
push.v builtin.vsp
pushi.e 0
cmp.i.v NEQ
b [7]

:[6]
push.e 1

:[7]
bf [14]

:[8]
pushi.e 1
pop.v.b builtin.running
push.v builtin.hsp
pushi.e 0
cmp.i.v NEQ
bf [10]

:[9]
push.v builtin.vsp
pushi.e 0
cmp.i.v NEQ
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
push.v builtin.rundiagSpd
pop.v.v builtin.spd
b [14]

:[13]
push.v builtin.runspd
pop.v.v builtin.spd

:[14]
b [23]

:[15]
push.v builtin.running
pushi.e 1
cmp.b.v EQ
bf [17]

:[16]
push.v builtin.hsp
pushi.e 0
cmp.i.v EQ
b [18]

:[17]
push.e 0

:[18]
bt [20]

:[19]
push.v builtin.vsp
pushi.e 0
cmp.i.v EQ
b [21]

:[20]
push.e 1

:[21]
bf [23]

:[22]
pushi.e 1
pop.v.i builtin.spd
pushi.e 0
pop.v.b builtin.running

:[23]
exit.i

:[24]
push.i [function]gml_Script_scrRun
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scrRun
popz.v

:[end]