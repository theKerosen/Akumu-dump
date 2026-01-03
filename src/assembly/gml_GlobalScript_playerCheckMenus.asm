:[0]
b [11]

> gml_Script_scrPlayerCheckMenus (locals=0, argc=0)
:[1]
pushi.e 67
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [7]

:[2]
pushref.i 144
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [7]

:[3]
pushref.i 98
pushi.e -9
push.v [stacktop]self.state
pushi.e 0
cmp.i.v EQ
bf [7]

:[4]
pushglb.v global.gamePaused
pushi.e 1
cmp.b.v NEQ
bf [7]

:[5]
pushref.i 91
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [7]

:[6]
pushref.i 139
call.i instance_exists(argc=1)
conv.v.b
not.b
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554517
call.i audio_play_sound(argc=6)
popz.v
pushi.e 0
pushref.i 57
pushi.e -9
pop.v.i [stacktop]self.cursor
pushi.e 1
pushref.i 57
pushi.e -9
pop.v.b [stacktop]self.active
pushi.e 8
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state

:[10]
exit.i

:[11]
push.i [function]gml_Script_scrPlayerCheckMenus
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scrPlayerCheckMenus
popz.v

:[end]