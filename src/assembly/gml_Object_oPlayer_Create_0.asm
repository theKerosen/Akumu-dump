:[0]
push.s ""@36
pop.v.s builtin.itemequip
pushi.e 0
pop.v.i builtin.vsp
pushi.e 0
pop.v.i builtin.hsp
pushi.e 1
pop.v.i builtin.spd
push.d 1.2
pop.v.d builtin.runspd
push.v builtin.spd
pushi.e 2
conv.i.v
call.i sqrt(argc=1)
pushi.e 2
conv.i.d
div.d.v
mul.v.v
pop.v.v builtin.diagSpd
push.v builtin.runspd
pushi.e 2
conv.i.v
call.i sqrt(argc=1)
pushi.e 2
conv.i.d
div.d.v
mul.v.v
pop.v.v builtin.rundiagSpd
pushi.e 0
pop.v.b builtin.running
pushi.e 0
pop.v.b builtin.check
pushi.e 3
pop.v.i builtin.face
push.v builtin.x
pop.v.v builtin.previous_x
push.v builtin.y
pop.v.v builtin.previous_y
pushi.e 0
pop.v.i builtin.state
push.i 65530
setowner.e
pushref.i 16777337
pushi.e -6
pushi.e 12
pop.v.v [array]self.sprite
pushref.i 16777338
pushi.e -6
pushi.e 13
pop.v.v [array]self.sprite
pushref.i 16777335
pushi.e -6
pushi.e 14
pop.v.v [array]self.sprite
pushref.i 16777332
pushi.e -6
pushi.e 15
pop.v.v [array]self.sprite
pushref.i 16777323
pushi.e -6
pushi.e 16
pop.v.v [array]self.sprite
pushi.e 0
pop.v.i builtin.alpha
push.i 8421504
pop.v.i builtin.color
pushi.e 0
pop.v.b builtin._played
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i audio_listener_orientation(argc=6)
popz.v

:[end]