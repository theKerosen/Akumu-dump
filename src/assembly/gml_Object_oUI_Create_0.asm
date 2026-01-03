:[0]
push.i -99999
pop.v.i builtin.depth
push.i 65530
setowner.e
push.s "Quit to Desktop"@1570
conv.s.v
push.s "Quit"@1571
conv.s.v
push.s "Continue"@1572
conv.s.v
call.i @@NewGMLArray@@(argc=3)
pop.v.v builtin.pauseOption
push.d 0.008333333333333333
pop.v.d builtin.arrowImageSpeed
pushi.e 0
pop.v.i builtin.arrowImage
pushi.e 0
pop.v.i builtin.pauseOptionSelected
pushi.e 50
pop.v.i builtin.fuel
pushi.e 180
pop.v.i builtin.burn_interval
pushi.e 0
pop.v.i builtin.burn_timer
push.v builtin.fuel
pop.v.v builtin.fuel_max
pushi.e 0
pop.v.b builtin.decrease
pushi.e 64
pop.v.i builtin.fuelbar_width
pushi.e 12
pop.v.i builtin.fuelbar_height

:[end]