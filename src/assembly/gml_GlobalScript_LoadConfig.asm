:[0]
b [2]

> gml_Script_scrLoadConfig (locals=0, argc=0)
:[1]
push.s "config.ini"@624
conv.s.v
call.i ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "fullscreen"@626
conv.s.v
push.s "settings"@627
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v global.fullscreen
pushi.e 1
conv.i.v
push.s "crt"@629
conv.s.v
push.s "settings"@627
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v global.crt
call.i ini_close(argc=0)
popz.v
exit.i

:[2]
push.i [function]gml_Script_scrLoadConfig
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scrLoadConfig
popz.v

:[end]