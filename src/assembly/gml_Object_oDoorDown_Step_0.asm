; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v builtin.canPlay
pushi.e 1
cmp.b.v EQ
bf [5]

:[1]
pushref.i 33554491
call.i audio_is_playing(argc=1)
conv.v.b
not.b
bf [5]

:[2]
push.v builtin.speed
pushi.e 0
cmp.i.v NEQ
bf [4]

:[3]
exit.i

:[4]
pushi.e 6
pushref.i 127
pushi.e -9
pop.v.i [stacktop]self.textSide
pushi.e 1
pushref.i 127
pushi.e -9
pop.v.b [stacktop]self.hasAudio
push.v builtin.myDialogue2
push.v builtin.myDialogue1
call.i gml_Script_OpenTextBox(argc=2)
popz.v
pushi.e 1
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
pushi.e 1
pop.v.i builtin.state
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
pushi.e 0
pop.v.b builtin.canPlay

:[5]
pushref.i 98
pushi.e -9
push.v [stacktop]self.state
pushi.e 1
cmp.i.v NEQ
bf [7]

:[6]
pushref.i 127
pushi.e -9
push.v [stacktop]self.textSide
pushi.e 6
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 7
pushref.i 127
pushi.e -9
pop.v.i [stacktop]self.textSide

:[10]
pushref.i 33554462
call.i audio_is_playing(argc=1)
conv.v.b
not.b
bf [12]

:[11]
push.v builtin.doorOpening
conv.v.b
b [13]

:[12]
push.e 0

:[13]
bf [end]

:[14]
pushref.i 139
push.l -9999999999999999
conv.l.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=4)
pop.v.v local.inst
push.v builtin.targetX
pushloc.v local.inst
pushi.e -9
pop.v.v [stacktop]self.targetX
push.v builtin.targetY
pushloc.v local.inst
pushi.e -9
pop.v.v [stacktop]self.targetY
push.v builtin.targetRoom
pushloc.v local.inst
pushi.e -9
pop.v.v [stacktop]self.targetRoom
push.v builtin.targetFace
pushloc.v local.inst
pushi.e -9
pop.v.v [stacktop]self.targetFace
pushi.e 0
pop.v.i builtin.image_speed
pushi.e 2
pop.v.i builtin.image_index
pushi.e 0
pop.v.b builtin.doorOpening

:[end]