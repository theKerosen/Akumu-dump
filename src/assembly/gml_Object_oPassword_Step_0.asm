; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v builtin.input_delay
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v builtin.input_delay
push.e 1
sub.i.v
pop.v.v builtin.input_delay

:[2]
pushi.e 37
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [4]

:[3]
pushi.e 65
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [5]

:[4]
push.e 1

:[5]
pop.v.b local.key_left
pushi.e 39
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [7]

:[6]
pushi.e 68
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [8]

:[7]
push.e 1

:[8]
pop.v.b local.key_right
pushi.e 38
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [10]

:[9]
pushi.e 87
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [11]

:[10]
push.e 1

:[11]
pop.v.b local.key_up
pushi.e 40
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [13]

:[12]
pushi.e 83
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [14]

:[13]
push.e 1

:[14]
pop.v.b local.key_down
pushi.e 90
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [16]

:[15]
pushi.e 13
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [17]

:[16]
push.e 1

:[17]
pop.v.b local.key_confirm
push.v builtin.input_delay
pushi.e 0
cmp.i.v LTE
bf [64]

:[18]
pushloc.v local.key_left
conv.v.b
bf [20]

:[19]
push.v builtin.digit_index
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
call.i max(argc=2)
pop.v.v builtin.digit_index
pushi.e 5
pop.v.i builtin.input_delay
b [64]

:[20]
pushloc.v local.key_right
conv.v.b
bf [22]

:[21]
push.v builtin.digit_index
pushi.e 1
add.i.v
push.v builtin.digit_count
pushi.e 1
sub.i.v
call.i min(argc=2)
pop.v.v builtin.digit_index
pushi.e 5
pop.v.i builtin.input_delay
b [64]

:[22]
pushloc.v local.key_up
conv.v.b
bf [24]

:[23]
push.i 65530
setowner.e
pushi.e -6
push.v builtin.digit_index
conv.v.i
push.v [array]self.input_digits
pushi.e 1
add.i.v
pushi.e 10
mod.i.v
pushi.e -6
push.v builtin.digit_index
conv.v.i
pop.v.v [array]self.input_digits
pushi.e 5
pop.v.i builtin.input_delay
b [64]

:[24]
pushloc.v local.key_down
conv.v.b
bf [26]

:[25]
push.i 65530
setowner.e
pushi.e -6
push.v builtin.digit_index
conv.v.i
push.v [array]self.input_digits
pushi.e 9
add.i.v
pushi.e 10
mod.i.v
pushi.e -6
push.v builtin.digit_index
conv.v.i
pop.v.v [array]self.input_digits
pushi.e 5
pop.v.i builtin.input_delay
b [64]

:[26]
pushloc.v local.key_confirm
conv.v.b
bf [64]

:[27]
pushi.e 1
pop.v.b local.correct
pushi.e 0
pop.v.i local.i

:[28]
pushloc.v local.i
push.v builtin.digit_count
cmp.v.v LT
bf [32]

:[29]
pushi.e -6
pushloc.v local.i
conv.v.i
push.v [array]self.input_digits
pushi.e -6
pushloc.v local.i
conv.v.i
push.v [array]self.correct_code
cmp.v.v NEQ
bf [31]

:[30]
pushi.e 0
pop.v.b local.correct
b [32]

:[31]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [28]

:[32]
pushi.e 1
pop.v.b local.correctforest
pushi.e 0
pop.v.i local.i

:[33]
pushloc.v local.i
push.v builtin.digit_count
cmp.v.v LT
bf [37]

:[34]
pushi.e -6
pushloc.v local.i
conv.v.i
push.v [array]self.input_digits
pushi.e -6
pushloc.v local.i
conv.v.i
push.v [array]self.forest_code
cmp.v.v NEQ
bf [36]

:[35]
pushi.e 0
pop.v.b local.correctforest
b [37]

:[36]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [33]

:[37]
pushloc.v local.correctforest
conv.v.b
bf [39]

:[38]
pushref.i 33554435
call.i audio_stop_sound(argc=1)
popz.v
pushref.i 50331686
call.i room_goto(argc=1)
popz.v
pushi.e -32
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e -32
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.y
push.s ""@36
pushref.i 98
pushi.e -9
pop.v.s [stacktop]self.itemequip
b [39]

:[39]
pushi.e 1
pop.v.b local.correctmonster
pushi.e 0
pop.v.i local.i

:[40]
pushloc.v local.i
push.v builtin.digit_count
cmp.v.v LT
bf [44]

:[41]
pushi.e -6
pushloc.v local.i
conv.v.i
push.v [array]self.input_digits
pushi.e -6
pushloc.v local.i
conv.v.i
push.v [array]self.monster_code
cmp.v.v NEQ
bf [43]

:[42]
pushi.e 0
pop.v.b local.correctmonster
b [44]

:[43]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [40]

:[44]
pushloc.v local.correctmonster
conv.v.b
bf [57]

:[45]
pushref.i 121
pushi.e -9
pushenv [56]

:[46]
push.v builtin.directionspawn
dup.v 0
push.s "LEFT"@990
cmp.s.v EQ
bt [51]

:[47]
dup.v 0
push.s "RIGHT"@995
cmp.s.v EQ
bt [52]

:[48]
dup.v 0
push.s "UP"@994
cmp.s.v EQ
bt [53]

:[49]
dup.v 0
push.s "DOWN"@1004
cmp.s.v EQ
bt [54]

:[50]
b [55]

:[51]
pushref.i 31
push.s "Instances"@50
conv.s.v
push.v builtin.y
pushi.e 29
add.i.v
push.v builtin.x
pushi.e 32
sub.i.v
call.i instance_create_layer(argc=4)
popz.v
b [55]

:[52]
pushref.i 31
push.s "Instances"@50
conv.s.v
push.v builtin.y
pushi.e 29
add.i.v
push.v builtin.x
pushi.e 32
add.i.v
call.i instance_create_layer(argc=4)
popz.v
b [55]

:[53]
pushref.i 31
push.s "Instances"@50
conv.s.v
push.v builtin.y
pushi.e 18
sub.i.v
push.v builtin.x
pushi.e 16
add.i.v
call.i instance_create_layer(argc=4)
popz.v
b [55]

:[54]
pushref.i 31
push.s "Instances"@50
conv.s.v
push.v builtin.y
pushi.e 18
add.i.v
push.v builtin.x
pushi.e 16
add.i.v
call.i instance_create_layer(argc=4)
popz.v
b [55]

:[55]
popz.v

:[56]
popenv [46]
b [57]

:[57]
pushloc.v local.correct
conv.v.b
bf [59]

:[58]
pushi.e 1
conv.i.v
b [60]

:[59]
pushi.e -1
conv.i.v

:[60]
pop.v.v builtin.code_status
pushloc.v local.correct
conv.v.b
bf [62]

:[61]
pushref.i 33554435
call.i audio_stop_sound(argc=1)
popz.v
push.s "Senha correta!"@1431
conv.s.v
call.i show_debug_message(argc=1)
popz.v
b [63]

:[62]
push.s "Senha incorreta!"@1432
conv.s.v
call.i show_debug_message(argc=1)
popz.v

:[63]
pushi.e 10
pop.v.i builtin.input_delay

:[64]
push.v builtin.bgImage
pushi.e 92
cmp.i.v GTE
bf [66]

:[65]
pushglb.v global.unlockedCode
conv.v.b
b [67]

:[66]
push.e 0

:[67]
bf [end]

:[68]
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554475
call.i audio_play_sound(argc=3)
popz.v
pushref.i 33554476
call.i audio_stop_sound(argc=1)
popz.v
pushi.e 0
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
pushref.i 52
call.i instance_destroy(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]