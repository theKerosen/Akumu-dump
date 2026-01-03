:[0]
b [10]

> gml_Script_scrLoadGame (locals=6, argc=1)
:[1]
push.s "akumu"@633
push.v arg.argument0
call.i string(argc=1)
add.v.s
push.s ".ini"@635
add.s.v
pop.v.v local.saveFile
pushloc.v local.saveFile
call.i file_exists(argc=1)
conv.v.b
bf [9]

:[2]
pushloc.v local.saveFile
call.i ini_open(argc=1)
popz.v
pushref.i 50331652
push.s "lvl"@638
conv.s.v
push.s "map"@639
conv.s.v
call.i ini_read_string(argc=3)
pop.v.v local.roomload
pushref.i 132
push.i -9999999
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=4)
popz.v
pushloc.v local.roomload
call.i asset_get_index(argc=1)
pop.v.v local.tgroom
push.s ""@36
conv.s.v
push.s "i"@67
conv.s.v
push.s "config"@644
conv.s.v
call.i ini_read_string(argc=3)
pop.v.v local.data
push.s ""@36
conv.s.v
push.s "f"@645
conv.s.v
push.s "config"@644
conv.s.v
call.i ini_read_string(argc=3)
pop.v.v local.data2
push.s ""@36
conv.s.v
push.s "u"@647
conv.s.v
push.s "config"@644
conv.s.v
call.i ini_read_string(argc=3)
pop.v.v local.data3
pushloc.v local.tgroom
pushref.i 132
pushi.e -9
pop.v.v [stacktop]self.targetRoom
pushi.e 128
conv.i.v
push.s "p01"@650
conv.s.v
push.s "map"@639
conv.s.v
call.i ini_read_real(argc=3)
pushref.i 98
pushi.e -9
pop.v.v [stacktop]self.x
pushi.e 112
conv.i.v
push.s "p02"@651
conv.s.v
push.s "map"@639
conv.s.v
call.i ini_read_real(argc=3)
pushref.i 98
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 3
conv.i.v
push.s "st"@652
conv.s.v
push.s "config"@644
conv.s.v
call.i ini_read_real(argc=3)
pushref.i 98
pushi.e -9
pop.v.v [stacktop]self.face
pushi.e 0
conv.i.v
push.s "0"@653
conv.s.v
push.s "stage1"@654
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v global.dialogue
pushi.e 0
conv.i.v
push.s "1"@656
conv.s.v
push.s "stage1"@654
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v global.basementpuzzlecomplete
pushi.e 0
conv.i.v
push.s "2"@658
conv.s.v
push.s "stage1"@654
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v global.dialogue2
pushi.e 0
conv.i.v
push.s "3"@660
conv.s.v
push.s "stage1"@654
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v global.lightsOut
pushi.e 0
conv.b.v
push.s "4"@662
conv.s.v
push.s "stage1"@654
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v global.atepizza
pushi.e 0
conv.b.v
push.s "you"@664
conv.s.v
push.s "stage1_1"@665
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v global.sinkCorrect
pushi.e 0
conv.b.v
push.s "shouldn't"@667
conv.s.v
push.s "stage1_1"@665
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v global.toiletCorrect
pushi.e 0
conv.b.v
push.s "be"@669
conv.s.v
push.s "stage1_1"@665
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v global.paperCorrect
pushi.e 0
conv.b.v
push.s "here"@671
conv.s.v
push.s "stage1_1"@665
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v global.allCorrect
pushi.e 0
conv.b.v
push.s "please"@673
conv.s.v
push.s "stage1_1"@665
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v global.allCorrectDebounce
pushi.e 0
conv.b.v
push.s "stop"@83
conv.s.v
push.s "stage1_1"@665
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v global.unlockedCode
pushi.e 0
conv.b.v
push.s "save"@676
conv.s.v
push.s "stage1_1"@665
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v global.switchBooks
pushi.e 0
conv.b.v
push.s "us"@678
conv.s.v
push.s "stage1_1"@665
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v global.screwUsed
pushi.e 50
conv.i.v
push.s "l"@680
conv.s.v
push.s "config"@644
conv.s.v
call.i ini_read_real(argc=3)
pushref.i 137
pushi.e -9
pop.v.v [stacktop]self.fuel
pushi.e 0
conv.i.v
push.s "h"@682
conv.s.v
push.s "config"@644
conv.s.v
call.i ini_read_real(argc=3)
pushref.i 53
pushi.e -9
pop.v.v [stacktop]self.hours
pushi.e 0
conv.i.v
push.s "m"@684
conv.s.v
push.s "config"@644
conv.s.v
call.i ini_read_real(argc=3)
pushref.i 53
pushi.e -9
pop.v.v [stacktop]self.minutes
pushi.e 0
conv.i.v
push.s "s"@401
conv.s.v
push.s "config"@644
conv.s.v
call.i ini_read_real(argc=3)
pushref.i 53
pushi.e -9
pop.v.v [stacktop]self.seconds
pushloc.v local.data
push.s ""@36
cmp.s.v NEQ
bf [4]

:[3]
pushloc.v local.data
pushref.i 53
pushi.e -9
push.v [stacktop]self.inventory
call.i ds_list_read(argc=2)
popz.v

:[4]
pushloc.v local.data2
push.s ""@36
cmp.s.v NEQ
bf [6]

:[5]
pushloc.v local.data2
pushref.i 92
pushi.e -9
push.v [stacktop]self.foundList
call.i ds_list_read(argc=2)
popz.v

:[6]
pushloc.v local.data3
push.s ""@36
cmp.s.v NEQ
bf [8]

:[7]
pushloc.v local.data3
pushref.i 92
pushi.e -9
push.v [stacktop]self.unlockedList
call.i ds_list_read(argc=2)
popz.v

:[8]
call.i ini_close(argc=0)
popz.v
b [9]

:[9]
exit.i

:[10]
push.i [function]gml_Script_scrLoadGame
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scrLoadGame
popz.v

:[end]