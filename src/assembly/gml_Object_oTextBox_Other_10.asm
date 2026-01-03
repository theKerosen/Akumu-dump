:[0]
push.v builtin.pages
pushi.e -4
cmp.i.v EQ
bt [2]

:[1]
push.v builtin.pages
call.i array_length_1d(argc=1)
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
exit.i

:[5]
push.v builtin.textOnDisplay
pushi.e -6
push.v builtin.page
conv.v.i
push.v [array]self.pages
cmp.v.v NEQ
bf [7]

:[6]
pushi.e -6
push.v builtin.page
conv.v.i
push.v [array]self.pages
pop.v.v builtin.textOnDisplay
exit.i

:[7]
push.v builtin.page
pushi.e 1
add.i.v
pop.v.v builtin.page
push.s ""@36
pop.v.s builtin.textOnDisplay
push.i 65530
setowner.e
push.v builtin.value
pushi.e -6
pushi.e 0
pop.v.v [array]self.alarm
push.v builtin.page
push.v builtin.pages
call.i array_length_1d(argc=1)
cmp.v.v GTE
bf [end]

:[8]
pushi.e -4
pop.v.i builtin.pages
push.v builtin.callback
pushi.e -4
cmp.i.v NEQ
bf [10]

:[9]
pushi.e -6
pushi.e 1
push.v [array]self.callback
pushi.e -6
pushi.e 0
push.v [array]self.callback
call.i script_execute_ext(argc=2)
popz.v
pushi.e -4
pop.v.i builtin.callback

:[10]
pushref.i 81
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[11]
pushref.i 81
pushi.e -9
pushenv [13]

:[12]
call.i instance_destroy(argc=0)
popz.v

:[13]
popenv [12]

:[end]