:[0]
pushref.i 98
pushi.e -9
push.v [stacktop]self.face
pushi.e 1
cmp.i.v NEQ
bf [2]

:[1]
exit.i

:[2]
push.v builtin.locked
conv.v.b
bf [4]

:[3]
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushref.i 33554474
call.i audio_play_sound(argc=4)
popz.v
pushi.e 5
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
pushi.e 1
pop.v.b builtin.canPlay
exit.i

:[4]
push.v builtin.canEnter
conv.v.b
not.b
bf [6]

:[5]
exit.i

:[6]
pushi.e 1
pop.v.b builtin.lockerClosing
pushi.e 1
pop.v.b global.isHiding
pushi.e 0
pop.v.b builtin.lockerOpening
pushi.e 0
pop.v.i builtin.lockerAnim
pushi.e 0
pop.v.b builtin.canEnter
pushi.e 1
pop.v.b builtin.entering
pushi.e 0
pop.v.b builtin.play
pushref.i 83
pushi.e -9
push.v [stacktop]self.songAsset
call.i audio_pause_sound(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554492
call.i audio_play_sound(argc=3)
popz.v
pushref.i 98
pushi.e -9
push.v [stacktop]self.y
pop.v.v builtin.storedY
pushi.e -32
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.y
b [8]

> gml_Script_anon@460@gml_Object_oIronLocker_Other_10 (locals=0, argc=0)
:[7]
pushi.e 1
pop.v.b builtin.canPress
exit.i

:[8]
push.i [function]gml_Script_anon@460@gml_Object_oIronLocker_Other_10
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 1000
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v
pushi.e 5
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state

:[end]