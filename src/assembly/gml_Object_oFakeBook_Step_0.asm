:[0]
pushref.i 33554485
call.i audio_is_playing(argc=1)
conv.v.b
not.b
bf [2]

:[1]
push.v builtin.debounce
pushi.e 0
cmp.b.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [7]

:[4]
pushi.e 1
pop.v.b builtin.debounce
push.s "You found a book."@1201
conv.s.v
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
pushref.i 92
pushi.e -9
pushenv [6]

:[5]
push.v other.id
push.v builtin.foundList
call.i ds_list_add(argc=2)
popz.v

:[6]
popenv [5]
pushi.e 0
pop.v.b builtin.visible

:[7]
push.v builtin.bbox_bottom
neg.v
pop.v.v builtin.depth

:[end]