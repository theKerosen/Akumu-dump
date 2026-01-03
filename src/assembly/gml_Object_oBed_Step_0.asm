; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushi.e 1
conv.i.v
call.i keyboard_check_pressed(argc=1)
pop.v.v local.actionkey
pushloc.v local.actionkey
conv.v.b
bf [2]

:[1]
push.v builtin.deitado
pushi.e 1
cmp.b.v EQ
b [3]

:[2]
push.e 0

:[3]
bt [5]

:[4]
pushglb.v global.leave
pushi.e 1
cmp.i.v EQ
b [6]

:[5]
push.e 1

:[6]
bf [end]

:[7]
pushglb.v global.leave
pushi.e 1
cmp.i.v EQ
bf [8]

:[8]
pushi.e 0
pop.v.b builtin.deitado
push.d 1.5
pop.v.d builtin.image_speed
pushi.e 1
pop.v.i builtin.saindo
pushref.i 16777219
pop.v.v builtin.sprite_index
pushi.e 0
pop.v.i global.leave

:[end]