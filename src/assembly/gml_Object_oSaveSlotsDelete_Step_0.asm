; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushi.e 0
pop.v.i local.min_slot
push.v builtin.slot_count
pushi.e 1
sub.i.v
pop.v.v local.max_slot
pushi.e 40
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [2]

:[1]
pushi.e 83
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [3]

:[2]
push.e 1

:[3]
bf [6]

:[4]
pushref.i 139
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [6]

:[5]
pushref.i 132
call.i instance_exists(argc=1)
conv.v.b
not.b
b [7]

:[6]
push.e 0

:[7]
bf [11]

:[8]
push.v builtin.slot_selected
pushi.e 1
add.i.v
pop.v.v builtin.slot_selected
push.v builtin.slot_selected
pushloc.v local.max_slot
cmp.v.v GT
bf [10]

:[9]
pushloc.v local.min_slot
pop.v.v builtin.slot_selected

:[10]
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554501
call.i audio_play_sound(argc=6)
popz.v

:[11]
pushi.e 38
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [13]

:[12]
pushi.e 87
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [14]

:[13]
push.e 1

:[14]
bf [17]

:[15]
pushref.i 139
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [17]

:[16]
pushref.i 132
call.i instance_exists(argc=1)
conv.v.b
not.b
b [18]

:[17]
push.e 0

:[18]
bf [22]

:[19]
push.v builtin.slot_selected
pushi.e 1
sub.i.v
pop.v.v builtin.slot_selected
push.v builtin.slot_selected
pushloc.v local.min_slot
cmp.v.v LT
bf [21]

:[20]
pushloc.v local.max_slot
pop.v.v builtin.slot_selected

:[21]
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554501
call.i audio_play_sound(argc=6)
popz.v

:[22]
pushi.e 90
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [24]

:[23]
pushi.e 13
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [25]

:[24]
push.e 1

:[25]
bf [29]

:[26]
pushi.e 1
pushref.i 53
pushi.e -9
pop.v.b [stacktop]self.canCount
push.s "akumu"@633
push.v builtin.slot_selected
call.i string(argc=1)
add.v.s
push.s ".ini"@635
add.s.v
pop.v.v local.save_file
pushloc.v local.save_file
call.i file_exists(argc=1)
conv.v.b
bf [28]

:[27]
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554483
call.i audio_play_sound(argc=3)
popz.v
pushloc.v local.save_file
call.i file_delete(argc=1)
popz.v
push.s "Save deletado: "@1538
pushloc.v local.save_file
add.v.s
call.i show_debug_message(argc=1)
popz.v
b [29]

:[28]
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554527
call.i audio_play_sound(argc=3)
popz.v

:[29]
pushi.e 88
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [31]

:[30]
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554443
call.i audio_play_sound(argc=6)
popz.v
pushref.i 82
call.i instance_activate_object(argc=1)
popz.v
pushref.i 128
call.i instance_activate_object(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[31]
push.v builtin.slot_selected
push.v builtin.scroll_offset
cmp.v.v LT
bf [33]

:[32]
push.v builtin.slot_selected
pop.v.v builtin.scroll_offset
b [35]

:[33]
push.v builtin.slot_selected
push.v builtin.scroll_offset
push.v builtin.visible_slots
add.v.v
cmp.v.v GTE
bf [35]

:[34]
push.v builtin.slot_selected
push.v builtin.visible_slots
sub.v.v
pushi.e 1
add.i.v
pop.v.v builtin.scroll_offset

:[35]
pushi.e 0
pop.v.i local.i

:[36]
pushloc.v local.i
push.v builtin.slot_count
cmp.v.v LT
bf [end]

:[37]
push.i 65530
setowner.e
push.s "akumu"@633
pushloc.v local.i
call.i string(argc=1)
add.v.s
push.s ".ini"@635
add.s.v
call.i file_exists(argc=1)
pushi.e -6
pushloc.v local.i
conv.v.i
pop.v.v [array]self.slot_exists
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [36]

:[end]