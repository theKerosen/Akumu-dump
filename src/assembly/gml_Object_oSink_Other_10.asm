; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushbltn.v builtin.room
pushref.i 50331670
cmp.v.v NEQ
bt [2]

:[1]
pushglb.v global.allCorrect
conv.v.b
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
exit.i

:[5]
push.v builtin.image_index
pushi.e 0
cmp.i.v EQ
bf [12]

:[6]
pushi.e 1
pop.v.i builtin.image_index
push.s "sound_instance"@1548
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bt [8]

:[7]
push.v builtin.sound_instance
call.i audio_is_playing(argc=1)
conv.v.b
not.b
b [9]

:[8]
push.e 1

:[9]
bf [11]

:[10]
pushi.e 1
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554526
call.i audio_play_sound(argc=3)
pop.v.v builtin.sound_instance

:[11]
b [17]

:[12]
pushi.e 0
pop.v.i builtin.image_index
push.v builtin.sound_instance
pushi.e -4
cmp.i.v NEQ
bf [14]

:[13]
push.v builtin.sound_instance
call.i audio_is_playing(argc=1)
conv.v.b
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
push.v builtin.sound_instance
call.i audio_stop_sound(argc=1)
popz.v
pushi.e -4
pop.v.i builtin.sound_instance

:[17]
pushi.e 1
pop.v.i local.correct_sink_id
pushi.e 1
pop.v.b local.all_good
pushref.i 115
pushi.e -9
pushenv [24]

:[18]
push.v builtin.sink_id
pushloc.v local.correct_sink_id
cmp.v.v EQ
bf [22]

:[19]
push.v builtin.image_index
pushi.e 1
cmp.i.v NEQ
bf [21]

:[20]
pushi.e 0
pop.v.b local.all_good

:[21]
b [24]

:[22]
push.v builtin.image_index
pushi.e 1
cmp.i.v EQ
bf [24]

:[23]
pushi.e 0
pop.v.b local.all_good

:[24]
popenv [18]
pushloc.v local.all_good
conv.v.b
bf [28]

:[25]
pushglb.v global.sinkCorrect
conv.v.b
not.b
bf [27]

:[26]
pushi.e 1
pop.v.b global.sinkCorrect

:[27]
b [end]

:[28]
pushglb.v global.sinkCorrect
conv.v.b
bf [end]

:[29]
pushi.e 0
pop.v.b global.sinkCorrect

:[end]