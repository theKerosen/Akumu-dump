:[0]
pushi.e 0
pop.v.i builtin.state
pushi.e 0
pop.v.b builtin.turn
pushi.e 0
pop.v.i builtin.myDialogue
b [2]

> gml_Script_anon@65@gml_Object_oTV_Create_0 (locals=0, argc=2)
:[1]
pushi.e 0
push.v arg.argument0
pushi.e -9
pop.v.i [stacktop]self.state
pushi.e 72
push.v arg.argument0
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e 114
push.v arg.argument0
pushi.e -9
pop.v.i [stacktop]self.y
pushi.e 0
pushref.i 127
pushi.e -9
pop.v.b [stacktop]self.hasAudio
pushref.i 26
pushi.e -9
push.v [stacktop]self.bbox_bottom
neg.v
pushref.i 26
pushi.e -9
pop.v.v [stacktop]self.depth
push.s ""@36
pushref.i 127
pushi.e -9
pop.v.s [stacktop]self.Speaker
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554477
call.i audio_play_sound(argc=3)
popz.v
exit.i

:[2]
push.i [function]gml_Script_anon@65@gml_Object_oTV_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.myCallback

:[end]