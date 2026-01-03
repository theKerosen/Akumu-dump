:[0]
push.v builtin.canDraw
conv.v.b
bf [end]

:[1]
push.v builtin.y
push.v builtin.scroll_speed
sub.v.v
pop.v.v builtin.y
push.v builtin.y
push.v builtin.text_height
neg.v
cmp.v.v LTE
bf [end]

:[2]
b [4]

> gml_Script_anon@78@gml_Object_oCredits_Step_0 (locals=0, argc=0)
:[3]
call.i game_restart(argc=0)
popz.v
exit.i

:[4]
push.i [function]gml_Script_anon@78@gml_Object_oCredits_Step_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 5000
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v

:[end]