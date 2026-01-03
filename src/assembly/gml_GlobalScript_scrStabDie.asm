:[0]
b [10]

> gml_Script_scrStabDie (locals=0, argc=0)
:[1]
push.v builtin.state
pushi.e 4
cmp.i.v EQ
bf [9]

:[2]
push.v builtin.image_index
pushi.e 11
cmp.i.v GTE
bf [5]

:[3]
push.v builtin._played
pushi.e 0
cmp.b.v EQ
bf [5]

:[4]
pushi.e 1
pop.v.b builtin._played
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushref.i 33554519
call.i audio_play_sound(argc=3)
popz.v

:[5]
push.v builtin.image_index
pushi.e 27
cmp.i.v GTE
bf [9]

:[6]
pushref.i 98
pushi.e -9
pushenv [8]

:[7]
push.s ""@36
pop.v.s builtin.itemequip

:[8]
popenv [7]
pushref.i 50331682
call.i room_goto(argc=1)
popz.v
pushi.e 0
pop.v.b builtin._played
pushi.e -32
pop.v.i builtin.x
pushi.e -16
pop.v.i builtin.y
pushi.e 0
pop.v.i builtin.state
pushi.e 3
pop.v.i builtin.face

:[9]
exit.i

:[10]
push.i [function]gml_Script_scrStabDie
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scrStabDie
popz.v

:[end]