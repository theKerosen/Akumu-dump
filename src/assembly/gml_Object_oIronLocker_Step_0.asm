; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v builtin.locked
conv.v.b
bf [7]

:[1]
push.v builtin.canPlay
pushi.e 1
cmp.b.v EQ
bf [6]

:[2]
pushref.i 33554474
call.i audio_is_playing(argc=1)
conv.v.b
not.b
bf [6]

:[3]
push.v builtin.speed
pushi.e 0
cmp.i.v NEQ
bf [5]

:[4]
exit.i

:[5]
push.s "It's locked."@1191
conv.s.v
call.i gml_Script_OpenTextBox(argc=1)
popz.v
pushi.e 1
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
push.i 131066
setowner.e
pushi.e -4
conv.i.v
pushref.i 98
call.i @@NewGMLArray@@(argc=2)
pushref.i gml_Script_scrFinishCharacterReading
call.i @@NewGMLArray@@(argc=2)
pushref.i 127
pushi.e -9
pop.v.v [stacktop]self.callback
pushi.e 0
pop.v.b builtin.canPlay

:[6]
b [24]

:[7]
pushi.e 13
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [9]

:[8]
pushi.e 90
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [10]

:[9]
push.e 1

:[10]
pop.v.b local.action
push.v builtin.inside
conv.v.b
bf [15]

:[11]
push.v builtin.canPress
conv.v.b
bf [15]

:[12]
pushloc.v local.action
conv.v.b
bf [15]

:[13]
pushglb.v global.chasing
conv.v.b
not.b
bf [15]

:[14]
pushref.i 33554470
call.i audio_is_playing(argc=1)
conv.v.b
not.b
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
pushi.e 1
pop.v.b builtin.leaving
pushref.i 33554441
call.i audio_stop_sound(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554493
call.i audio_play_sound(argc=3)
popz.v
pushi.e 0
pop.v.b builtin.inside
pushi.e 0
pop.v.b builtin.canPress
pushi.e 10
pop.v.i builtin.enterImage

:[18]
pushi.e 0
pop.v.i builtin.image_speed
push.v builtin.lockerClosing
conv.v.b
bf [21]

:[19]
push.v builtin.lockerAnim
push.v builtin.animLockerSpeed
add.v.v
pop.v.v builtin.lockerAnim
push.v builtin.sprite_index
call.i sprite_get_number(argc=1)
pushi.e 1
sub.i.v
push.v builtin.lockerAnim
call.i min(argc=2)
pop.v.v builtin.lockerAnim
push.v builtin.lockerAnim
pop.v.v builtin.image_index
push.v builtin.lockerAnim
push.v builtin.sprite_index
call.i sprite_get_number(argc=1)
pushi.e 1
sub.i.v
cmp.v.v GTE
bf [21]

:[20]
pushi.e 0
pop.v.b builtin.lockerClosing
push.v builtin.sprite_index
call.i sprite_get_number(argc=1)
pushi.e 1
sub.i.v
pop.v.v builtin.image_index

:[21]
push.v builtin.lockerOpening
conv.v.b
bf [24]

:[22]
push.v builtin.lockerAnim
push.v builtin.animLockerSpeed
sub.v.v
pop.v.v builtin.lockerAnim
pushi.e 0
conv.i.v
push.v builtin.lockerAnim
call.i max(argc=2)
pop.v.v builtin.lockerAnim
push.v builtin.lockerAnim
pop.v.v builtin.image_index
push.v builtin.lockerAnim
pushi.e 0
cmp.i.v LTE
bf [24]

:[23]
pushi.e 0
pop.v.b builtin.lockerOpening
pushi.e 0
pop.v.i builtin.image_index

:[24]
push.v builtin.bbox_bottom
neg.v
pop.v.v builtin.depth

:[end]