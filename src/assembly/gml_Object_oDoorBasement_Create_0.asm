:[0]
pushi.e 0
pop.v.i builtin.state
pushi.e 0
pop.v.i builtin.image_speed
pushi.e 0
pop.v.b builtin.canDraw
pushi.e 0
pop.v.b builtin.hasDialogue
b [2]

> gml_Script_anon@95@gml_Object_oDoorBasement_Create_0 (locals=1, argc=2)
:[1]
pushref.i 139
push.s "Instances"@50
conv.s.v
push.v builtin.y
push.v builtin.x
call.i instance_create_layer(argc=4)
pop.v.v local.inst
pushi.e -32
pushloc.v local.inst
pushi.e -9
pop.v.i [stacktop]self.targetX
pushi.e -32
pushloc.v local.inst
pushi.e -9
pop.v.i [stacktop]self.targetY
pushi.e 3
pushloc.v local.inst
pushi.e -9
pop.v.i [stacktop]self.targetFace
pushref.i 50331678
pushloc.v local.inst
pushi.e -9
pop.v.v [stacktop]self.targetRoom
pushi.e 5
pushloc.v local.inst
pushi.e -9
pop.v.i [stacktop]self.targetState
exit.i

:[2]
push.i [function]gml_Script_anon@95@gml_Object_oDoorBasement_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.myCallback

:[end]