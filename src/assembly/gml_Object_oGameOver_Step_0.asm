:[0]
push.v builtin.canFade
conv.v.b
bf [2]

:[1]
push.v builtin.alpha
push.d 0.01
sub.d.v
pop.v.v builtin.alpha
pushi.e 1
pop.v.b builtin.canTeleport
pushi.e 120
conv.i.v
pushi.e 30
conv.i.v
pushref.i 33554472
call.i gml_Script_set_song_ingame(argc=3)
popz.v

:[2]
push.v builtin.alpha
pushi.e 0
cmp.i.v LTE
bf [4]

:[3]
push.v builtin.canTeleport
pushi.e 1
cmp.b.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 0
pop.v.b builtin.canFade
pushi.e 0
pop.v.b builtin.canTeleport
pushi.e 0
pop.v.b builtin.canDraw
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[7]
push.v builtin.fadeGo
conv.v.b
bf [9]

:[8]
push.v builtin.alpha
push.d 0.02
add.d.v
pop.v.v builtin.alpha

:[9]
push.v builtin.fadeGo
conv.v.b
bf [11]

:[10]
push.v builtin.alpha
pushi.e 1
cmp.i.v GTE
b [12]

:[11]
push.e 0

:[12]
bf [end]

:[13]
call.i game_restart(argc=0)
popz.v

:[end]