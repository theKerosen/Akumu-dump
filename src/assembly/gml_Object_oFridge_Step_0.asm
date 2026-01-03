:[0]
pushref.i 11
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [2]

:[1]
exit.i

:[2]
pushref.i 33554450
call.i audio_is_playing(argc=1)
conv.v.b
not.b
bf [4]

:[3]
push.v builtin.debounce
pushi.e 0
cmp.b.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [end]

:[6]
pushi.e 1
pop.v.b builtin.debounce
push.s "You should probably heat it before eating."@1234
conv.s.v
push.s "You got a cold pizza slice."@1235
conv.s.v
call.i gml_Script_OpenTextBox(argc=2)
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
pushref.i 13
call.i instance_destroy(argc=1)
popz.v
pushref.i 13
push.s "Instances"@50
conv.s.v
pushref.i 73
pushi.e -9
push.v [stacktop]self.y
pushi.e 15
sub.i.v
pushref.i 73
pushi.e -9
push.v [stacktop]self.x
push.d 2.5
add.d.v
call.i instance_create_layer(argc=4)
popz.v

:[end]