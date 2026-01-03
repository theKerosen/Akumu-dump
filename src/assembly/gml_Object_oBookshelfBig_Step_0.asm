:[0]
push.v builtin.state
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v builtin.debounce
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i builtin.debounce

:[5]
pushref.i 98
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [7]

:[6]
exit.i

:[7]
pushref.i 98
pushi.e -9
push.v [stacktop]self.state
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
push.v builtin.debounce
pushi.e 1
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushi.e 2
pop.v.i builtin.debounce
pushi.e 5
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushref.i 33554517
call.i audio_play_sound(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushref.i 33554450
call.i audio_play_sound(argc=3)
popz.v
pushref.i 120
call.i instance_destroy(argc=1)
popz.v
push.v builtin.itemTag
push.v builtin.quantity
push.v builtin.itemId
call.i gml_Script_addItem(argc=3)
popz.v

:[12]
pushref.i 33554450
call.i audio_is_playing(argc=1)
conv.v.b
not.b
bf [14]

:[13]
push.v builtin.debounce
pushi.e 2
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [end]

:[16]
pushi.e 3
pop.v.i builtin.debounce
push.s "You found a "@1116
push.v builtin.name
add.v.s
push.s "."@1117
add.s.v
call.i gml_Script_OpenTextBox(argc=1)
popz.v
pushi.e 1
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
push.i 131066
setowner.e
pushi.e -4
conv.i.v
pushref.i 98
call.i @@NewGMLArray@@(argc=2)
pushref.i gml_Script_scrFinishCharacterReading
call.i @@NewGMLArray@@(argc=2)
pushref.i 127
pushi.e -9
pop.v.v [stacktop]self.callback
pushi.e -4
pop.v.i builtin.itemId
pushref.i 92
pushi.e -9
pushenv [18]

:[17]
push.v other.id
push.v builtin.foundList
call.i ds_list_add(argc=2)
popz.v

:[18]
popenv [17]

:[end]