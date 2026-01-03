:[0]
b [9]

> gml_Script_scrPlayerCheckReading (locals=1, argc=0)
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
bf [8]

:[5]
pushref.i 127
pushi.e -9
pushenv [7]

:[6]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[7]
popenv [6]

:[8]
exit.i

:[9]
push.i [function]gml_Script_scrPlayerCheckReading
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scrPlayerCheckReading
popz.v

:[end]