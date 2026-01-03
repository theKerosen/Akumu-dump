:[0]
b [8]

> gml_Script_scrSaveGame (locals=25, argc=1)
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
bf [3]

:[2]
pushloc.v local.saveFile
call.i file_delete(argc=1)
popz.v

:[3]
pushloc.v local.saveFile
call.i ini_open(argc=1)
popz.v
pushbltn.v builtin.room
call.i room_get_name(argc=1)
pop.v.v local.roomsaved
pushref.i 98
pushi.e -9
push.v [stacktop]self.x
pop.v.v local.posx
pushref.i 53
pushi.e -9
push.v [stacktop]self.hours
pop.v.v local.hours
pushref.i 53
pushi.e -9
push.v [stacktop]self.minutes
pop.v.v local.minutes
pushref.i 53
pushi.e -9
push.v [stacktop]self.seconds
pop.v.v local.seconds
pushref.i 98
pushi.e -9
push.v [stacktop]self.y
pop.v.v local.posy
pushref.i 98
pushi.e -9
push.v [stacktop]self.face
pop.v.v local.plrfc
pushglb.v global.dialogue
pop.v.v local.zero
pushglb.v global.basementpuzzlecomplete
pop.v.v local.one
pushglb.v global.dialogue2
pop.v.v local.two
pushglb.v global.lightsOut
pop.v.v local.lght
pushglb.v global.atepizza
pop.v.v local.pz
pushref.i 53
pushi.e -9
push.v [stacktop]self.inventory
call.i ds_list_write(argc=1)
pop.v.v local.data
pushref.i 92
pushi.e -9
push.v [stacktop]self.foundList
call.i ds_list_write(argc=1)
pop.v.v local.data2
pushref.i 92
pushi.e -9
push.v [stacktop]self.unlockedList
call.i ds_list_write(argc=1)
pop.v.v local.data3
pushglb.v global.sinkCorrect
pop.v.v local.sink
pushglb.v global.toiletCorrect
pop.v.v local.toilet
pushglb.v global.paperCorrect
pop.v.v local.paper
pushglb.v global.allCorrect
pop.v.v local.all_
pushglb.v global.allCorrectDebounce
pop.v.v local.all_2
pushglb.v global.unlockedCode
pop.v.v local.unlockcode
pushglb.v global.switchBooks
pop.v.v local.switchbooks
pushglb.v global.screwUsed
pop.v.v local.screwUsed
pushref.i 137
pushi.e -9
push.v [stacktop]self.fuel
pop.v.v local.fuel
pushloc.v local.roomsaved
push.s "lvl"@638
conv.s.v
push.s "map"@639
conv.s.v
call.i ini_write_string(argc=3)
popz.v
pushloc.v local.posx
push.s "p01"@650
conv.s.v
push.s "map"@639
conv.s.v
call.i ini_write_real(argc=3)
popz.v
pushloc.v local.posy
push.s "p02"@651
conv.s.v
push.s "map"@639
conv.s.v
call.i ini_write_real(argc=3)
popz.v
pushloc.v local.plrfc
push.s "st"@652
conv.s.v
push.s "config"@644
conv.s.v
call.i ini_write_real(argc=3)
popz.v
pushloc.v local.zero
push.s "0"@653
conv.s.v
push.s "stage1"@654
conv.s.v
call.i ini_write_real(argc=3)
popz.v
pushloc.v local.one
push.s "1"@656
conv.s.v
push.s "stage1"@654
conv.s.v
call.i ini_write_real(argc=3)
popz.v
pushloc.v local.two
push.s "2"@658
conv.s.v
push.s "stage1"@654
conv.s.v
call.i ini_write_real(argc=3)
popz.v
pushloc.v local.lght
push.s "3"@660
conv.s.v
push.s "stage1"@654
conv.s.v
call.i ini_write_real(argc=3)
popz.v
pushloc.v local.pz
push.s "4"@662
conv.s.v
push.s "stage1"@654
conv.s.v
call.i ini_write_real(argc=3)
popz.v
pushloc.v local.data
push.s "i"@67
conv.s.v
push.s "config"@644
conv.s.v
call.i ini_write_string(argc=3)
popz.v
pushloc.v local.data2
push.s "f"@645
conv.s.v
push.s "config"@644
conv.s.v
call.i ini_write_string(argc=3)
popz.v
pushloc.v local.fuel
push.s "l"@680
conv.s.v
push.s "config"@644
conv.s.v
call.i ini_write_real(argc=3)
popz.v
pushloc.v local.hours
push.s "h"@682
conv.s.v
push.s "config"@644
conv.s.v
call.i ini_write_real(argc=3)
popz.v
pushloc.v local.minutes
push.s "m"@684
conv.s.v
push.s "config"@644
conv.s.v
call.i ini_write_real(argc=3)
popz.v
pushloc.v local.seconds
push.s "s"@401
conv.s.v
push.s "config"@644
conv.s.v
call.i ini_write_real(argc=3)
popz.v
pushloc.v local.data3
push.s "u"@647
conv.s.v
push.s "config"@644
conv.s.v
call.i ini_write_string(argc=3)
popz.v
pushref.i 15
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[4]
pushloc.v local.sink
push.s "you"@664
conv.s.v
push.s "stage1_1"@665
conv.s.v
call.i ini_write_real(argc=3)
popz.v
pushloc.v local.toilet
push.s "shouldn't"@667
conv.s.v
push.s "stage1_1"@665
conv.s.v
call.i ini_write_real(argc=3)
popz.v
pushloc.v local.paper
push.s "be"@669
conv.s.v
push.s "stage1_1"@665
conv.s.v
call.i ini_write_real(argc=3)
popz.v
pushloc.v local.all_
push.s "here"@671
conv.s.v
push.s "stage1_1"@665
conv.s.v
call.i ini_write_real(argc=3)
popz.v
pushloc.v local.all_2
push.s "please"@673
conv.s.v
push.s "stage1_1"@665
conv.s.v
call.i ini_write_real(argc=3)
popz.v
pushloc.v local.unlockcode
push.s "stop"@83
conv.s.v
push.s "stage1_1"@665
conv.s.v
call.i ini_write_real(argc=3)
popz.v
pushloc.v local.switchbooks
push.s "save"@676
conv.s.v
push.s "stage1_1"@665
conv.s.v
call.i ini_write_real(argc=3)
popz.v
pushloc.v local.screwUsed
push.s "us"@678
conv.s.v
push.s "stage1_1"@665
conv.s.v
call.i ini_write_real(argc=3)
popz.v

:[5]
call.i ini_close(argc=0)
popz.v
pushref.i 110
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [7]

:[6]
pushref.i 110
push.i -999999
conv.i.v
push.v builtin.y
push.v builtin.x
call.i instance_create_depth(argc=4)
popz.v

:[7]
push.s "saved"@773
conv.s.v
call.i show_debug_message(argc=1)
popz.v
exit.i

:[8]
push.i [function]gml_Script_scrSaveGame
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scrSaveGame
popz.v

:[end]