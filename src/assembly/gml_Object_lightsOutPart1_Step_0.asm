; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.s "healpizza"@1075
conv.s.v
pushi.e 5
conv.i.v
call.i gml_Script_getItem(argc=2)
pop.v.v local.item
push.s "hotpizza"@897
conv.s.v
pushi.e 4
conv.i.v
call.i gml_Script_getItem(argc=2)
pop.v.v local.item2
push.s "pizza"@868
conv.s.v
pushi.e 3
conv.i.v
call.i gml_Script_getItem(argc=2)
pop.v.v local.item3
push.v builtin.lightsOut
pushi.e 2
cmp.i.v EQ
bt [2]

:[1]
pushglb.v global.lightsOut
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i global.lightsOut
pushglb.v global.baseLight
pushref.i 69
pushi.e -9
pop.v.v [stacktop]self.darkness
call.i instance_destroy(argc=0)
popz.v

:[5]
push.v builtin.lightsOut
pushi.e 1
cmp.i.v EQ
bf [8]

:[6]
push.v builtin.canPlay
pushi.e 0
cmp.b.v EQ
bf [8]

:[7]
push.d 0.93
pushref.i 69
pushi.e -9
pop.v.d [stacktop]self.darkness
pushi.e 1
pop.v.b builtin.canPlay
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554490
call.i audio_play_sound(argc=3)
popz.v

:[8]
push.v builtin.debounce
pushi.e 0
cmp.b.v EQ
bf [14]

:[9]
pushi.e 1
pop.v.b builtin.debounce
push.s "healpizza"@1075
conv.s.v
pushi.e 5
conv.i.v
call.i gml_Script_getItem(argc=2)
pop.v.v local.item
push.s "hotpizza"@897
conv.s.v
pushi.e 4
conv.i.v
call.i gml_Script_getItem(argc=2)
pop.v.v local.item2
push.s "pizza"@868
conv.s.v
pushi.e 3
conv.i.v
call.i gml_Script_getItem(argc=2)
pop.v.v local.item3
pushref.i 16
call.i instance_exists(argc=1)
conv.v.b
bf [11]

:[10]
pushglb.v global.atepizza
pushi.e 0
cmp.b.v EQ
pushloc.v local.item2
pushref.i 53
pushi.e -9
push.v [stacktop]self.inventory
call.i ds_list_find_index(argc=2)
pushi.e -1
cmp.i.v EQ
xor.b.b
pushloc.v local.item3
pushref.i 53
pushi.e -9
push.v [stacktop]self.inventory
call.i ds_list_find_index(argc=2)
pushi.e -1
cmp.i.v EQ
xor.b.b
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushref.i 16777218
pushref.i 16
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushi.e 0
pushref.i 16
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 8
pushref.i 16
pushi.e -9
pop.v.i [stacktop]self.image_index
push.i 65530
setowner.e
pushi.e 300
conv.i.v
pushi.e -6
pushi.e 0
pop.v.v [array]self.alarm

:[14]
pushref.i 98
call.i instance_exists(argc=1)
conv.v.b
bf [19]

:[15]
push.v builtin.debounce2
pushi.e 0
cmp.b.v EQ
bf [19]

:[16]
pushglb.v global.atepizza
pushi.e 0
cmp.b.v EQ
pushloc.v local.item2
pushref.i 53
pushi.e -9
push.v [stacktop]self.inventory
call.i ds_list_find_index(argc=2)
pushi.e -1
cmp.i.v EQ
xor.b.b
pushloc.v local.item3
pushref.i 53
pushi.e -9
push.v [stacktop]self.inventory
call.i ds_list_find_index(argc=2)
pushi.e -1
cmp.i.v EQ
xor.b.b
bf [19]

:[17]
push.v builtin.lightsOut
pushi.e 0
cmp.i.v EQ
bf [19]

:[18]
pushbltn.v builtin.room
pushref.i 50331652
cmp.v.v EQ
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
pushi.e 1
pop.v.b builtin.debounce2
pushi.e 5
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
pushi.e 50
conv.i.v
pushi.e -6
pushi.e 2
pop.v.v [array]self.alarm

:[22]
pushbltn.v builtin.room
pushref.i 50331652
cmp.v.v EQ
bf [43]

:[23]
push.s "healpizza"@1075
conv.s.v
pushi.e 5
conv.i.v
call.i gml_Script_getItem(argc=2)
pop.v.v local.item
pushref.i 16
pushi.e -9
push.v [stacktop]self.deitado
pushi.e 1
cmp.b.v EQ
bf [25]

:[24]
push.v builtin.lightsOut
pushi.e 0
cmp.i.v EQ
b [26]

:[25]
push.e 0

:[26]
bf [43]

:[27]
pushglb.v global.atepizza
pushi.e 0
cmp.b.v NEQ
bf [43]

:[28]
pushi.e 0
pushref.i 16
pushi.e -9
pop.v.b [stacktop]self.deitado
b [42]

> gml_Script_anon@1449@gml_Object_lightsOutPart1_Step_0 (locals=0, argc=0)
:[29]
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushref.i 33554469
call.i audio_play_sound(argc=3)
popz.v
push.d 0.93
pushref.i 69
pushi.e -9
pop.v.d [stacktop]self.darkness
b [41]

> gml_Script_anon@1553@anon@1449@gml_Object_lightsOutPart1_Step_0 (locals=0, argc=0)
:[30]
pushglb.v global.baseLight
pushref.i 69
pushi.e -9
pop.v.v [stacktop]self.darkness
b [40]

> gml_Script_anon@1634@anon@1553@anon@1449@gml_Object_lightsOutPart1_Step_0 (locals=0, argc=0)
:[31]
pushi.e 1
pushref.i 11
pushi.e -9
pop.v.i [stacktop]self.lightsOut
b [33]

> gml_Script_anon@1702@anon@1634@anon@1553@anon@1449@gml_Object_lightsOutPart1_Step_0 (locals=0, argc=0)
:[32]
pushref.i 33554469
call.i audio_stop_sound(argc=1)
popz.v
exit.i

:[33]
push.i [function]gml_Script_anon@1702@anon@1634@anon@1553@anon@1449@gml_Object_lightsOutPart1_Step_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 50
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v
b [39]

> gml_Script_anon@1793@anon@1634@anon@1553@anon@1449@gml_Object_lightsOutPart1_Step_0 (locals=0, argc=0)
:[34]
pushi.e 1
pushref.i 127
pushi.e -9
pop.v.b [stacktop]self.hasAudio
pushi.e 20
pushref.i 127
pushi.e -9
pop.v.i [stacktop]self.value
push.s "..."@1054
conv.s.v
call.i gml_Script_OpenTextBox(argc=1)
popz.v
b [38]

> gml_Script_anon@1931@anon@1793@anon@1634@anon@1553@anon@1449@gml_Object_lightsOutPart1_Step_0 (locals=0, argc=0)
:[35]
pushi.e -4
pushref.i 127
pushi.e -9
pop.v.i [stacktop]self.pages
push.s ""@36
pushref.i 127
pushi.e -9
pop.v.s [stacktop]self.textOnDisplay
b [37]

> gml_Script_anon@2035@anon@1931@anon@1793@anon@1634@anon@1553@anon@1449@gml_Object_lightsOutPart1_Step_0 (locals=0, argc=0)
:[36]
pushi.e 1
pop.v.i global.leave
exit.i

:[37]
push.i [function]gml_Script_anon@2035@anon@1931@anon@1793@anon@1634@anon@1553@anon@1449@gml_Object_lightsOutPart1_Step_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 2000
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v
exit.i

:[38]
push.i [function]gml_Script_anon@1931@anon@1793@anon@1634@anon@1553@anon@1449@gml_Object_lightsOutPart1_Step_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 2000
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v
exit.i

:[39]
push.i [function]gml_Script_anon@1793@anon@1634@anon@1553@anon@1449@gml_Object_lightsOutPart1_Step_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 2000
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v
exit.i

:[40]
push.i [function]gml_Script_anon@1634@anon@1553@anon@1449@gml_Object_lightsOutPart1_Step_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 100
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v
exit.i

:[41]
push.i [function]gml_Script_anon@1553@anon@1449@gml_Object_lightsOutPart1_Step_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 200
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v
exit.i

:[42]
push.i [function]gml_Script_anon@1449@gml_Object_lightsOutPart1_Step_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 6000
conv.i.v
call.i gml_Script_Delay(argc=2)
popz.v

:[43]
pushbltn.v builtin.room
pushref.i 50331656
cmp.v.v NEQ
bf [45]

:[44]
exit.i

:[45]
pushref.i 11
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [47]

:[46]
exit.i

:[47]
pushref.i 38
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[48]
pushref.i 38
pushi.e -9
pushenv [60]

:[49]
pushref.i 11
pushi.e -9
push.v [stacktop]self.lightsOut
pushi.e 1
cmp.i.v EQ
bf [59]

:[50]
push.s "candle"@957
conv.s.v
pushi.e 6
conv.i.v
call.i gml_Script_getItem(argc=2)
pop.v.v local.item
pushloc.v local.item
pushref.i 53
pushi.e -9
push.v [stacktop]self.inventory
call.i ds_list_find_index(argc=2)
pushi.e -1
cmp.i.v NEQ
bt [52]

:[51]
push.v builtin.id
pushref.i 92
pushi.e -9
push.v [stacktop]self.unlockedList
call.i ds_list_find_index(argc=2)
pushi.e -1
cmp.i.v NEQ
b [53]

:[52]
push.e 1

:[53]
bf [57]

:[54]
pushi.e -4
pop.v.i builtin.lock
push.v builtin.id
pushref.i 92
pushi.e -9
push.v [stacktop]self.unlockedList
call.i ds_list_find_index(argc=2)
pushi.e -1
cmp.i.v EQ
bf [56]

:[55]
push.v builtin.id
pushref.i 92
pushi.e -9
push.v [stacktop]self.unlockedList
call.i ds_list_add(argc=2)
popz.v

:[56]
b [58]

:[57]
push.s "velaepizza"@1093
pop.v.s builtin.lock
push.s "It's way too dark. I’ll need something to light the way."@1094
pop.v.s builtin.myDialogue1
pushbltn.v builtin.undefined
pop.v.v builtin.myDialogue2

:[58]
b [60]

:[59]
push.s "velaepizza"@1093
pop.v.s builtin.lock
push.s "There's no reason to go down there."@984
pop.v.s builtin.myDialogue1
pushbltn.v builtin.undefined
pop.v.v builtin.myDialogue2

:[60]
popenv [49]

:[end]