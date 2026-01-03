; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushbltn.v builtin.room
pushref.i 50331649
cmp.v.v EQ
bf [2]

:[1]
pushi.e 0
conv.i.v
b [3]

:[2]
pushi.e 0
conv.i.v

:[3]
pop.v.v local.min_slot
push.v builtin.slot_count
pushi.e 1
sub.i.v
pop.v.v local.max_slot
pushi.e 40
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [5]

:[4]
pushi.e 83
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [6]

:[5]
push.e 1

:[6]
bf [9]

:[7]
pushref.i 139
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [9]

:[8]
pushref.i 132
call.i instance_exists(argc=1)
conv.v.b
not.b
b [10]

:[9]
push.e 0

:[10]
bf [14]

:[11]
push.v builtin.slot_selected
pushi.e 1
add.i.v
pop.v.v builtin.slot_selected
push.v builtin.slot_selected
pushloc.v local.max_slot
cmp.v.v GT
bf [13]

:[12]
pushloc.v local.min_slot
pop.v.v builtin.slot_selected

:[13]
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

:[14]
pushi.e 38
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [16]

:[15]
pushi.e 87
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [17]

:[16]
push.e 1

:[17]
bf [20]

:[18]
pushref.i 139
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [20]

:[19]
pushref.i 132
call.i instance_exists(argc=1)
conv.v.b
not.b
b [21]

:[20]
push.e 0

:[21]
bf [25]

:[22]
push.v builtin.slot_selected
pushi.e 1
sub.i.v
pop.v.v builtin.slot_selected
push.v builtin.slot_selected
pushloc.v local.min_slot
cmp.v.v LT
bf [24]

:[23]
pushloc.v local.max_slot
pop.v.v builtin.slot_selected

:[24]
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

:[25]
pushi.e 90
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [27]

:[26]
pushi.e 13
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [28]

:[27]
push.e 1

:[28]
bf [38]

:[29]
pushbltn.v builtin.room
pushref.i 50331649
cmp.v.v NEQ
bf [35]

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
pushref.i 33554517
call.i audio_play_sound(argc=6)
popz.v
push.v builtin.slot_selected
call.i gml_Script_scrSaveGame(argc=1)
popz.v
pushi.e 0
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554515
call.i audio_play_sound(argc=3)
popz.v
pushref.i 79
pushi.e -9
pushenv [34]

:[31]
b [33]

> gml_Script_anon@1016@gml_Object_oSaveSlots_Step_0 (locals=0, argc=0)
:[32]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[33]
push.i [function]gml_Script_anon@1016@gml_Object_oSaveSlots_Step_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 100
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v

:[34]
popenv [31]
call.i instance_destroy(argc=0)
popz.v
b [38]

:[35]
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
bf [37]

:[36]
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
pushref.i 33554517
call.i audio_play_sound(argc=6)
popz.v
push.v builtin.slot_selected
call.i gml_Script_scrLoadGame(argc=1)
popz.v
b [38]

:[37]
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554527
call.i audio_play_sound(argc=3)
popz.v

:[38]
pushi.e 88
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [46]

:[39]
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
pushbltn.v builtin.room
pushref.i 50331649
cmp.v.v NEQ
bf [45]

:[40]
pushi.e 0
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
pushref.i 79
pushi.e -9
pushenv [44]

:[41]
b [43]

> gml_Script_anon@1630@gml_Object_oSaveSlots_Step_0 (locals=0, argc=0)
:[42]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[43]
push.i [function]gml_Script_anon@1630@gml_Object_oSaveSlots_Step_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 100
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v

:[44]
popenv [41]
call.i instance_destroy(argc=0)
popz.v
b [46]

:[45]
pushref.i 72
call.i instance_activate_object(argc=1)
popz.v
pushref.i 128
call.i instance_activate_object(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[46]
push.v builtin.slot_selected
push.v builtin.scroll_offset
cmp.v.v LT
bf [48]

:[47]
push.v builtin.slot_selected
pop.v.v builtin.scroll_offset
b [50]

:[48]
push.v builtin.slot_selected
push.v builtin.scroll_offset
push.v builtin.visible_slots
add.v.v
cmp.v.v GTE
bf [50]

:[49]
push.v builtin.slot_selected
push.v builtin.visible_slots
sub.v.v
pushi.e 1
add.i.v
pop.v.v builtin.scroll_offset

:[50]
pushi.e 0
pop.v.i local.i

:[51]
pushloc.v local.i
push.v builtin.slot_count
cmp.v.v LT
bf [end]

:[52]
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
b [51]

:[end]