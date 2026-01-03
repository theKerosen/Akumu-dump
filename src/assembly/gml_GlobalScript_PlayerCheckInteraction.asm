:[0]
b [15]

> gml_Script_scrPlayerCheckInteraction (locals=2, argc=0)
:[1]
pushi.e 90
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [3]

:[2]
pushi.e 13
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [4]

:[3]
push.e 1

:[4]
pop.v.b local.actionkey
pushloc.v local.actionkey
conv.v.b
bf [7]

:[5]
pushglb.v global.gamePaused
pushi.e 0
cmp.b.v EQ
bf [7]

:[6]
pushref.i 91
call.i instance_exists(argc=1)
conv.v.b
not.b
b [8]

:[7]
push.e 0

:[8]
bf [14]

:[9]
pushglb.v global.gamePaused
conv.v.b
not.b
bf [14]

:[10]
call.i gml_Script_GetFacingObject(argc=0)
pop.v.v local.interactive
pushloc.v local.interactive
conv.v.b
bf [14]

:[11]
pushloc.v local.interactive
pushi.e -9
pushenv [13]

:[12]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[13]
popenv [12]

:[14]
exit.i

:[15]
push.i [function]gml_Script_scrPlayerCheckInteraction
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scrPlayerCheckInteraction
popz.v

:[end]