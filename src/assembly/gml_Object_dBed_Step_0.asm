; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushi.e 1
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [2]

:[1]
push.i 32770
conv.i.v
pushglb.v global.controller
call.i gamepad_button_check_pressed(argc=2)
conv.v.b
b [3]

:[2]
push.e 1

:[3]
pop.v.b local.actionkey
pushloc.v local.actionkey
conv.v.b
bf [5]

:[4]
push.v builtin.deitado
pushi.e 1
cmp.b.v EQ
b [6]

:[5]
push.e 0

:[6]
bt [8]

:[7]
pushglb.v global.leaveDeath
pushi.e 1
cmp.i.v EQ
b [9]

:[8]
push.e 1

:[9]
bf [end]

:[10]
pushglb.v global.leaveDeath
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
pushi.e 110
pop.v.i builtin.depth

:[12]
push.v builtin.oTimer
call.i instance_exists(argc=1)
conv.v.b
bf [14]

:[13]
push.v builtin.oTimer
call.i instance_destroy(argc=1)
popz.v

:[14]
pushi.e 0
pop.v.b builtin.deitado
push.d 1.5
pop.v.d builtin.image_speed
pushi.e 1
pop.v.i builtin.saindo
push.i 65530
setowner.e
pushi.e -1
conv.i.v
pushi.e -6
pushi.e 0
pop.v.v [array]self.alarm
pushref.i 16777219
pop.v.v builtin.sprite_index
pushi.e 0
pop.v.i global.leaveDeath

:[end]