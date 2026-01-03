:[0]
push.s "READ ME.txt"@1246
conv.s.v
call.i file_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.s "READ ME.txt"@1246
conv.s.v
call.i file_delete(argc=1)
popz.v

:[2]
push.s "READ ME.txt"@1246
conv.s.v
call.i ini_open(argc=1)
popz.v
push.s "Messing with the savefile will corrupt it. If this happens, you should delete it."@1247
conv.s.v
push.s "READ ME.txt"@1246
conv.s.v
call.i gml_Script_file_write_all_text(argc=2)
popz.v
call.i ini_close(argc=0)
popz.v
pushref.i 50331649
call.i room_goto(argc=1)
popz.v
pushi.e 0
pop.v.b builtin.canCount
pushi.e 0
pop.v.i builtin.hours
pushi.e 0
pop.v.i builtin.seconds
pushi.e 0
pop.v.i builtin.minutes
push.d 0.45
pop.v.d global.baseLight
pushi.e 0
pop.v.i global.leave
pushi.e 0
pop.v.b global.cooldown
pushi.e 0
pop.v.b global.cantKill
pushi.e 0
pop.v.i global.tutorial
pushi.e 2
conv.i.v
pushi.e 1
conv.b.v
pushi.e 32
conv.i.v
pushref.i 16777285
call.i font_add_sprite(argc=4)
pop.v.v global.TEXTBOX_FONT
pushi.e 0
pop.v.b global.deathSound
pushi.e 1
pop.v.i global.maxPages
pushi.e 1
pop.v.b global.crt
pushi.e 0
pop.v.b global.fullscreen
push.s "config.ini"@624
conv.s.v
call.i file_exists(argc=1)
conv.v.b
not.b
bf [4]

:[3]
call.i gml_Script_scrSaveConfig(argc=0)
popz.v

:[4]
call.i gml_Script_scrLoadConfig(argc=0)
popz.v
pushi.e 0
pop.v.b builtin.shake
pushi.e 0
pop.v.i builtin.shake_time
pushi.e 0
pop.v.i builtin.shake_magnitude
push.d 0.25
pop.v.d builtin.shake_fade
pushi.e 5
pop.v.i global.chase
pushi.e 180
pop.v.i global.chase_interval
pushi.e 0
pop.v.i global.chase_timer
pushglb.v global.chase
pop.v.v global.chase_max
pushi.e 0
pop.v.b global.chasing
pushi.e 0
pop.v.b global.shouldStayonRoom
pushi.e 0
pop.v.i global.monsterX
pushi.e 0
pop.v.i global.monsterY
pushi.e 0
pop.v.i global.lastMonsterRoom
pushi.e 0
pop.v.b global.isHiding
pushi.e 0
pop.v.b global.safe
call.i ds_list_create(argc=0)
pop.v.v builtin.inventory
call.i gml_Script_scrInitItems(argc=0)
popz.v
pushi.e 0
pop.v.b global.debounce1
pushi.e 0
pop.v.b global.debounce2
pushi.e 0
pop.v.b global.debounce3
pushi.e 0
pop.v.b global.debounce4
pushi.e 0
pop.v.b global.basementpuzzlecomplete
push.s ""@36
pop.v.s global.current_code
pushi.e 0
pop.v.b global.dialogue
pushi.e 0
pop.v.b global.dialogue2
pushi.e 0
pop.v.b builtin.myDeb
pushi.e 0
pop.v.b global.toiletCorrect
pushi.e 0
pop.v.b global.paperCorrect
pushi.e 0
pop.v.b global.sinkCorrect
pushi.e 0
pop.v.b global.allCorrect
pushi.e 0
pop.v.b global.allCorrectDebounce
pushi.e 0
pop.v.b global.unlockedCode
pushi.e 0
pop.v.b global.switchBooks
pushi.e 0
pop.v.b global.screwUsed
pushi.e 0
pop.v.b global.everythingCorrect
pushi.e 0
pop.v.i global.lightsOut
pushi.e 0
pop.v.b global.atepizza

:[end]