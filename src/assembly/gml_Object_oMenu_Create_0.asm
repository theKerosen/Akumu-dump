:[0]
push.s "akumu.ini"@1359
pop.v.s builtin._arq
pushi.e 0
pop.v.i builtin.image_speed
push.d 0.008
pop.v.d builtin.fadeSpeed
push.d 0.02
pop.v.d builtin.quitSpeed
pushi.e 0
pop.v.i builtin.image_alpha
pushi.e 0
pop.v.i builtin.completed
pushi.e 0
pop.v.i builtin.menuSelected
pushi.e 0
pop.v.b builtin.selected
pushi.e 0
pop.v.b builtin.quit
pushi.e 15
pop.v.i builtin.total_slots
pushi.e 0
pop.v.b global.any_save_exists
push.i 65530
setowner.e
pushi.e 1
conv.i.v
pushi.e -6
pushi.e 0
pop.v.v [array]self.alarm

:[end]