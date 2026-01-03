:[0]
pushref.i 70
call.i instance_exists(argc=1)
conv.v.b
bt [2]

:[1]
pushref.i 36
call.i instance_exists(argc=1)
conv.v.b
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
pushi.e 60
conv.i.v
pushi.e 60
conv.i.v
pushi.e -4
conv.i.v
call.i gml_Script_set_song_ingame(argc=3)
popz.v

:[5]
pushbltn.v builtin.room
pushref.i 50331649
cmp.v.v EQ
bt [7]

:[6]
pushbltn.v builtin.room
pushref.i 50331650
cmp.v.v EQ
b [8]

:[7]
push.e 1

:[8]
bf [10]

:[9]
pushi.e 0
conv.i.v
pushi.e 60
conv.i.v
pushref.i 33554499
call.i gml_Script_set_song_ingame(argc=3)
popz.v

:[10]
pushbltn.v builtin.room
pushref.i 50331652
cmp.v.v EQ
bt [17]

:[11]
pushbltn.v builtin.room
pushref.i 50331653
cmp.v.v EQ
bt [17]

:[12]
pushbltn.v builtin.room
pushref.i 50331654
cmp.v.v EQ
bt [17]

:[13]
pushbltn.v builtin.room
pushref.i 50331656
cmp.v.v EQ
bt [17]

:[14]
pushbltn.v builtin.room
pushref.i 50331657
cmp.v.v EQ
bt [17]

:[15]
pushbltn.v builtin.room
pushref.i 50331655
cmp.v.v EQ
bt [17]

:[16]
pushbltn.v builtin.room
pushref.i 50331658
cmp.v.v EQ
b [18]

:[17]
push.e 1

:[18]
bf [20]

:[19]
pushi.e 60
conv.i.v
pushi.e 60
conv.i.v
pushref.i 33554508
call.i gml_Script_set_song_ingame(argc=3)
popz.v

:[20]
pushbltn.v builtin.room
pushref.i 50331659
cmp.v.v EQ
bt [29]

:[21]
pushbltn.v builtin.room
pushref.i 50331660
cmp.v.v EQ
bt [29]

:[22]
pushbltn.v builtin.room
pushref.i 50331661
cmp.v.v EQ
bt [29]

:[23]
pushbltn.v builtin.room
pushref.i 50331662
cmp.v.v EQ
bt [29]

:[24]
pushbltn.v builtin.room
pushref.i 50331663
cmp.v.v EQ
bt [29]

:[25]
pushbltn.v builtin.room
pushref.i 50331664
cmp.v.v EQ
bt [29]

:[26]
pushbltn.v builtin.room
pushref.i 50331665
cmp.v.v EQ
bt [29]

:[27]
pushbltn.v builtin.room
pushref.i 50331666
cmp.v.v EQ
bt [29]

:[28]
pushbltn.v builtin.room
pushref.i 50331667
cmp.v.v EQ
b [30]

:[29]
push.e 1

:[30]
bf [32]

:[31]
pushi.e 0
conv.i.v
pushi.e 60
conv.i.v
pushref.i 33554434
call.i gml_Script_set_song_ingame(argc=3)
popz.v

:[32]
pushbltn.v builtin.room
pushref.i 50331668
cmp.v.v EQ
bt [39]

:[33]
pushbltn.v builtin.room
pushref.i 50331669
cmp.v.v EQ
bt [39]

:[34]
pushbltn.v builtin.room
pushref.i 50331670
cmp.v.v EQ
bt [39]

:[35]
pushbltn.v builtin.room
pushref.i 50331671
cmp.v.v EQ
bt [39]

:[36]
pushbltn.v builtin.room
pushref.i 50331673
cmp.v.v EQ
bt [39]

:[37]
pushbltn.v builtin.room
pushref.i 50331674
cmp.v.v EQ
bt [39]

:[38]
pushbltn.v builtin.room
pushref.i 50331675
cmp.v.v EQ
b [40]

:[39]
push.e 1

:[40]
bf [44]

:[41]
pushglb.v global.unlockedCode
conv.v.b
not.b
bf [43]

:[42]
pushi.e 0
conv.i.v
pushi.e 60
conv.i.v
pushref.i 33554435
call.i gml_Script_set_song_ingame(argc=3)
popz.v
b [44]

:[43]
pushi.e 0
conv.i.v
pushi.e 60
conv.i.v
pushi.e -4
conv.i.v
call.i gml_Script_set_song_ingame(argc=3)
popz.v

:[44]
pushbltn.v builtin.room
pushref.i 50331677
cmp.v.v EQ
bf [46]

:[45]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushref.i 33554508
call.i gml_Script_set_song_ingame(argc=3)
popz.v

:[46]
pushbltn.v builtin.room
pushref.i 50331672
cmp.v.v EQ
bf [48]

:[47]
pushi.e 0
conv.i.v
pushi.e 60
conv.i.v
pushref.i 33554442
call.i gml_Script_set_song_ingame(argc=3)
popz.v

:[48]
pushbltn.v builtin.room
pushref.i 50331681
cmp.v.v EQ
bf [end]

:[49]
pushi.e 120
conv.i.v
pushi.e 120
conv.i.v
pushi.e -4
conv.i.v
call.i gml_Script_set_song_ingame(argc=3)
popz.v

:[end]