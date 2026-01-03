:[0]
call.i draw_self(argc=0)
popz.v
pushref.i 11
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[1]
pushref.i 11
pushi.e -9
push.v [stacktop]self.lightsOut
conv.v.b
bf [3]

:[2]
exit.i

:[3]
call.i gml_Script_scrDialogueOption(argc=0)
popz.v

:[end]