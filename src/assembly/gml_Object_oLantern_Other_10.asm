; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.s "candle"@957
conv.s.v
pushi.e 6
conv.i.v
call.i gml_Script_getItem(argc=2)
pop.v.v local.item
push.v builtin.canTake
pushi.e 1
cmp.b.v EQ
bf [5]

:[1]
pushloc.v local.item
pushref.i 53
pushi.e -9
push.v [stacktop]self.inventory
call.i ds_list_find_index(argc=2)
pushi.e -1
cmp.i.v EQ
bf [3]

:[2]
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
pushi.e 50
pushref.i 137
pushi.e -9
pop.v.i [stacktop]self.fuel
pushi.e 0
pushref.i 137
pushi.e -9
pop.v.b [stacktop]self.decrease
push.v builtin.itemTag
push.v builtin.quantity
push.v builtin.itemId
call.i gml_Script_addItem(argc=3)
popz.v
b [4]

:[3]
pushi.e 1
pop.v.b builtin.debounce
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
pushi.e 50
pushref.i 137
pushi.e -9
pop.v.i [stacktop]self.fuel
pushi.e 0
pushref.i 137
pushi.e -9
pop.v.b [stacktop]self.decrease
call.i instance_destroy(argc=0)
popz.v

:[4]
b [end]

:[5]
pushi.e 1
pushref.i 127
pushi.e -9
pop.v.b [stacktop]self.hasAudio
push.s ""@36
pushref.i 127
pushi.e -9
pop.v.s [stacktop]self.Speaker
push.v builtin.myDialogue2
push.s "Just a normal candle."@1332
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

:[end]