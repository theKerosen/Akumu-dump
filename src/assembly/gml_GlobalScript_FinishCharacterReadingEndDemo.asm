:[0]
b [2]

> gml_Script_scrFinishCharacterReadingEndDemo (locals=1, argc=2)
:[1]
pushi.e 0
push.v arg.argument0
pushi.e -9
pop.v.i [stacktop]self.state
push.v builtin.oTriggerThunder
push.s "Instances"@50
conv.s.v
pushi.e 128
conv.i.v
pushi.e 64
conv.i.v
call.i instance_create_layer(argc=4)
pop.v.v local.t
push.d 4.5
pushloc.v local.t
pushi.e -9
pop.v.d [stacktop]self.image_xscale
push.d 0.5
pushloc.v local.t
pushi.e -9
pop.v.d [stacktop]self.image_yscale
pushref.i 77
call.i instance_destroy(argc=1)
popz.v
exit.i

:[2]
push.i [function]gml_Script_scrFinishCharacterReadingEndDemo
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scrFinishCharacterReadingEndDemo
popz.v

:[end]