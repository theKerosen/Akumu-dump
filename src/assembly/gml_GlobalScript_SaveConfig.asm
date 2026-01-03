:[0]
b [4]

> gml_Script_scrSaveConfig (locals=2, argc=0)
:[1]
push.s "config.ini"@624
conv.s.v
call.i file_exists(argc=1)
conv.v.b
bf [3]

:[2]
push.s "config.ini"@624
conv.s.v
call.i file_delete(argc=1)
popz.v

:[3]
push.s "config.ini"@624
conv.s.v
call.i ini_open(argc=1)
popz.v
pushglb.v global.fullscreen
pop.v.v local.fullscreen
pushglb.v global.crt
pop.v.v local.crt
pushloc.v local.fullscreen
push.s "fullscreen"@626
conv.s.v
push.s "settings"@627
conv.s.v
call.i ini_write_real(argc=3)
popz.v
pushloc.v local.crt
push.s "crt"@629
conv.s.v
push.s "settings"@627
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ini_close(argc=0)
popz.v
exit.i

:[4]
push.i [function]gml_Script_scrSaveConfig
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scrSaveConfig
popz.v

:[end]