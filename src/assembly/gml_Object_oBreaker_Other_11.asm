:[0]
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554489
call.i audio_play_sound(argc=3)
popz.v
pushi.e 0
pop.v.b builtin.off
pushi.e 1
pop.v.i global.lightsOut
pushi.e 0
conv.i.v
call.i gml_Script_scrSaveGame(argc=1)
popz.v

:[end]