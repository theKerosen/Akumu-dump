; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.i -99993
pop.v.i builtin.depth
pushref.i 79
push.s "Instances"@50
conv.s.v
push.v builtin.y
push.v builtin.x
call.i instance_create_layer(argc=4)
popz.v
pushi.e 11
pop.v.i builtin.slot_count
pushi.e 0
pop.v.i builtin.scroll_offset
pushi.e 3
pop.v.i builtin.visible_slots
pushi.e 1
pop.v.i builtin.slot_selected
pushi.e 0
pop.v.i builtin.subImg
push.i 65530
setowner.e
push.s "Slot 10"@1490
conv.s.v
push.s "Slot 9"@1491
conv.s.v
push.s "Slot 8"@1492
conv.s.v
push.s "Slot 7"@1493
conv.s.v
push.s "Slot 6"@1494
conv.s.v
push.s "Slot 5"@1495
conv.s.v
push.s "Slot 4"@1496
conv.s.v
push.s "Slot 3"@1497
conv.s.v
push.s "Slot 2"@1498
conv.s.v
push.s "Slot 1"@1499
conv.s.v
push.s "Autosave"@1500
conv.s.v
call.i @@NewGMLArray@@(argc=11)
pop.v.v builtin.slot_names
push.i 65536
setowner.e
pushi.e 0
conv.b.v
push.v builtin.slot_count
call.i array_create(argc=2)
pop.v.v builtin.slot_exists
pushi.e 0
pop.v.i local.i

:[1]
pushloc.v local.i
push.v builtin.slot_count
cmp.v.v LT
bf [3]

:[2]
push.s "akumu"@633
pushloc.v local.i
call.i string(argc=1)
add.v.s
push.s ".ini"@635
add.s.v
pop.v.v local.fname
push.i 65530
setowner.e
pushloc.v local.fname
call.i file_exists(argc=1)
pushi.e -6
pushloc.v local.i
conv.v.i
pop.v.v [array]self.slot_exists
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [1]

:[3]
pushref.i 16777378
call.i sprite_get_width(argc=1)
pop.v.v builtin.slot_width
pushref.i 16777378
call.i sprite_get_height(argc=1)
pop.v.v builtin.slot_height
pushi.e 52
pop.v.i builtin.slot_spacing
pushi.e -6
pushi.e 0
push.v [array]self.view_camera
call.i camera_get_view_x(argc=1)
pushi.e 33
add.i.v
pop.v.v builtin.slot_x
pushi.e -6
pushi.e 0
push.v [array]self.view_camera
call.i camera_get_view_y(argc=1)
pushi.e 32
add.i.v
pop.v.v builtin.slot_y

:[end]