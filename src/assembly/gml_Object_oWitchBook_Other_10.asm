; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushglb.v global.switchBooks
conv.v.b
bf [2]

:[1]
push.s "It's stuck now."@1586
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
b [end]

:[2]
push.s "fakebook"@1017
conv.s.v
pushi.e 9
conv.i.v
call.i gml_Script_getItem(argc=2)
pop.v.v local.item
push.v builtin.sprite_index
pushref.i 16777224
cmp.v.v EQ
bf [4]

:[3]
push.v builtin.visible
pushi.e 1
cmp.b.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [end]

:[6]
pushref.i 107
push.s "Instances"@50
conv.s.v
pushi.e 49
conv.i.v
pushi.e 112
conv.i.v
call.i instance_create_layer(argc=4)
pop.v.v local.ritual
pushi.e 2
pushloc.v local.ritual
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 0
pop.v.b builtin.debounce
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
push.v builtin.itemTag
push.v builtin.quantity
push.v builtin.itemId
call.i gml_Script_addItem(argc=3)
popz.v

:[end]