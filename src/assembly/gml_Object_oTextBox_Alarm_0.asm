; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v builtin.pages
pushi.e -4
cmp.i.v NEQ
bf [2]

:[1]
push.v builtin.textOnDisplay
pushi.e -6
push.v builtin.page
conv.v.i
push.v [array]self.pages
cmp.v.v NEQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
push.v builtin.textOnDisplay
push.v builtin.textOnDisplay
call.i string_length(argc=1)
pushi.e 1
add.i.v
pushi.e -6
push.v builtin.page
conv.v.i
push.v [array]self.pages
call.i string_char_at(argc=2)
add.v.v
pop.v.v builtin.textOnDisplay
push.i 65530
setowner.e
push.v builtin.value
pushi.e -6
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 1
pop.v.b local.acceptable
push.v builtin.hasAudio
conv.v.b
bf [21]

:[5]
pushi.e 1
pop.v.i local.i

:[6]
pushloc.v local.i
push.v builtin.textOnDisplay
call.i string_length(argc=1)
cmp.v.v LTE
bf [11]

:[7]
push.s "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_?."@1561
conv.s.v
pushloc.v local.i
push.v builtin.textOnDisplay
call.i string_char_at(argc=2)
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
pushi.e 0
pop.v.b local.acceptable
b [10]

:[9]
pushi.e 1
pop.v.b local.acceptable

:[10]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [6]

:[11]
pushloc.v local.acceptable
pushi.e 1
cmp.b.v EQ
bf [13]

:[12]
push.v builtin.Speaker
push.s ""@36
cmp.s.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
push.d 1.5
conv.d.v
pushi.e 0
conv.b.v
pushi.e 1
conv.i.v
pushref.i 33554461
pushref.i 33554460
pushref.i 33554459
pushref.i 33554458
pushref.i 33554457
call.i choose(argc=5)
call.i audio_play_sound(argc=4)
popz.v

:[16]
pushloc.v local.acceptable
pushi.e 1
cmp.b.v EQ
bf [18]

:[17]
push.v builtin.Speaker
push.s "Dad"@1039
cmp.s.v EQ
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
push.d 1.5
conv.d.v
pushi.e 0
conv.b.v
pushi.e 1
conv.i.v
pushref.i 33554498
pushref.i 33554497
pushref.i 33554496
pushref.i 33554495
pushref.i 33554494
call.i choose(argc=5)
call.i audio_play_sound(argc=4)
popz.v

:[21]
pushi.e 1
pop.v.i local.i

:[22]
pushloc.v local.i
push.v builtin.textOnDisplay
call.i string_length(argc=1)
cmp.v.v LTE
bf [end]

:[23]
push.s ",."@1562
conv.s.v
pushloc.v local.i
push.v builtin.textOnDisplay
call.i string_char_at(argc=2)
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v EQ
bf [25]

:[24]
pushi.e 0
pop.v.b builtin.pause
pushi.e 5
pop.v.i builtin.value
b [27]

:[25]
push.v builtin.textOnDisplay
pushi.e -6
push.v builtin.page
conv.v.i
push.v [array]self.pages
cmp.v.v NEQ
bf [27]

:[26]
pushi.e 1
pop.v.b builtin.pause
pushi.e 20
pop.v.i builtin.value

:[27]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [22]

:[end]