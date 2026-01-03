:[0]
b [58]

> gml_Script_GMTwerkActor (locals=0, argc=0)
:[1]
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [57]

:[2]
setstatic.e
b [6]

> gml_Script_noop@anon@338@GMTwerkActor@GMTwerk_classes (locals=0, argc=1)
:[3]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [5]

:[4]
pushbltn.v builtin.undefined
pop.v.v builtin.argument0

:[5]
exit.i

:[6]
push.i [function]gml_Script_noop@anon@338@GMTwerkActor@GMTwerk_classes
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.noop
b [20]

> gml_Script_pause@anon@606@GMTwerkActor@GMTwerk_classes (locals=0, argc=1)
:[7]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [9]

:[8]
pushi.e 1
pop.v.b builtin.argument0

:[9]
push.v arg.argument0
conv.v.b
bf [11]

:[10]
push.v builtin.state
push.l 1
cmp.l.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
push.l 0
pop.v.l builtin.state
pushi.e 1
conv.b.v
call.i @@This@@(argc=0)
push.v builtin.onPause
callv.v 1
popz.v
b [19]

:[14]
push.v arg.argument0
conv.v.b
not.b
bf [16]

:[15]
push.v builtin.state
push.l 0
cmp.l.v EQ
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
push.l 1
pop.v.l builtin.state
pushi.e 0
conv.b.v
call.i @@This@@(argc=0)
push.v builtin.onPause
callv.v 1
popz.v

:[19]
exit.i

:[20]
push.i [function]gml_Script_pause@anon@606@GMTwerkActor@GMTwerk_classes
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.pause
b [22]

> gml_Script_unpause@anon@983@GMTwerkActor@GMTwerk_classes (locals=0, argc=0)
:[21]
pushi.e 0
conv.b.v
call.i @@This@@(argc=0)
push.v builtin.pause
callv.v 1
popz.v
exit.i

:[22]
push.i [function]gml_Script_unpause@anon@983@GMTwerkActor@GMTwerk_classes
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.unpause
b [26]

> gml_Script_stop@anon@1159@GMTwerkActor@GMTwerk_classes (locals=0, argc=0)
:[23]
push.v builtin.state
push.l 0
cmp.l.v GTE
bf [25]

:[24]
push.l -2
pop.v.l builtin.state
call.i @@This@@(argc=0)
push.v builtin.onStop
callv.v 0
popz.v

:[25]
exit.i

:[26]
push.i [function]gml_Script_stop@anon@1159@GMTwerkActor@GMTwerk_classes
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.stop
b [30]

> gml_Script_done@anon@1417@GMTwerkActor@GMTwerk_classes (locals=0, argc=0)
:[27]
push.v builtin.state
push.l 0
cmp.l.v GTE
bf [29]

:[28]
push.l -1
pop.v.l builtin.state
call.i @@This@@(argc=0)
push.v builtin.onDone
callv.v 0
popz.v

:[29]
exit.i

:[30]
push.i [function]gml_Script_done@anon@1417@GMTwerkActor@GMTwerk_classes
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.done
b [40]

> gml_Script_act@anon@1702@GMTwerkActor@GMTwerk_classes (locals=0, argc=1)
:[31]
push.v builtin.state
conv.v.b
bf [38]

:[32]
push.v builtin.owner
pushi.e -4
cmp.i.v EQ
bt [34]

:[33]
push.v builtin.owner
call.i instance_exists(argc=1)
conv.v.b
b [35]

:[34]
push.e 1

:[35]
bf [37]

:[36]
push.v arg.argument0
call.i @@This@@(argc=0)
push.v builtin.onAct
callv.v 1
popz.v
b [38]

:[37]
push.l -4
pop.v.l builtin.state

:[38]
push.v builtin.state
ret.v

:[39]
exit.i

:[40]
push.i [function]gml_Script_act@anon@1702@GMTwerkActor@GMTwerk_classes
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.act
b [48]

> gml_Script_convertTime@anon@2151@GMTwerkActor@GMTwerk_classes (locals=0, argc=1)
:[41]
push.v arg.argument0
call.i is_int64(argc=1)
conv.v.b
bf [43]

:[42]
push.v arg.argument0
call.i real(argc=1)
ret.v

:[43]
push.v arg.argument0
push.v builtin.deltaTime
conv.v.b
bf [45]

:[44]
pushi.e 1000
conv.i.v
b [46]

:[45]
pushi.e 0
conv.i.v
call.i game_get_speed(argc=1)
pushi.e 1000
conv.i.d
div.d.v

:[46]
mul.v.v
ret.v

:[47]
exit.i

:[48]
push.i [function]gml_Script_convertTime@anon@2151@GMTwerkActor@GMTwerk_classes
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.convertTime
b [56]

> gml_Script_includeOpts@anon@2780@GMTwerkActor@GMTwerk_classes (locals=1, argc=1)
:[49]
push.v arg.argument0
call.i is_array(argc=1)
conv.v.b
bf [55]

:[50]
push.v arg.argument0
call.i array_length(argc=1)
pushi.e 2
sub.i.v
pop.v.v local.i

:[51]
pushloc.v local.i
pushi.e 0
cmp.i.v GTE
bf [53]

:[52]
pushi.e -15
pushloc.v local.i
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.argument0
pushi.e -15
pushloc.v local.i
conv.v.i
push.v [array]self.argument0
call.i @@This@@(argc=0)
call.i variable_struct_set(argc=3)
popz.v
push.v local.i
pushi.e 2
sub.i.v
pop.v.v local.i
b [51]

:[53]
push.v builtin.bank
call.i is_undefined(argc=1)
conv.v.b
not.b
bf [55]

:[54]
push.v builtin.bank
call.i @@This@@(argc=0)
dup.v 1 8
dup.v 0
push.v stacktop.add
callv.v 1
popz.v

:[55]
exit.i

:[56]
push.i [function]gml_Script_includeOpts@anon@2780@GMTwerkActor@GMTwerk_classes
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.includeOpts
push.v static.noop
pop.v.v static.onAct

:[57]
push.l 1
pop.v.l builtin.state
push.v static.noop
pop.v.v builtin.onPause
push.v static.noop
pop.v.v builtin.onStop
push.v static.noop
pop.v.v builtin.onDone
push.v static.noop
pop.v.v builtin.onLost
pushi.e -4
pop.v.i builtin.owner
pushbltn.v builtin.undefined
pop.v.v builtin.bank
pushi.e 0
pop.v.b builtin.deltaTime
exit.i

:[58]
push.i [function]gml_Script_GMTwerkActor
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.GMTwerkActor
popz.v
b [101]

> gml_Script_GMTwerkBank (locals=0, argc=0)
:[59]
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [100]

:[60]
setstatic.e
b [62]

> gml_Script_add@anon@3597@GMTwerkBank@GMTwerk_classes (locals=0, argc=1)
:[61]
push.i 1376250
setowner.e
push.v builtin._head
push.v arg.argument0
call.i @@NewGMLArray@@(argc=2)
pop.v.v builtin._head
push.v builtin.size
push.e 1
add.i.v
pop.v.v builtin.size
exit.i

:[62]
push.i [function]gml_Script_add@anon@3597@GMTwerkBank@GMTwerk_classes
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.add
b [87]

> gml_Script_act@anon@4016@GMTwerkBank@GMTwerk_classes (locals=4, argc=2)
:[63]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [65]

:[64]
pushi.e 1
pop.v.i builtin.argument0

:[65]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [67]

:[66]
pushbltn.v builtin.delta_time
pop.v.v builtin.argument1

:[67]
pushi.e 0
pop.v.b local.needCleanup
pushbltn.v builtin.undefined
pop.v.v local.previousNode
push.v builtin._head
pop.v.v local.currentNode

:[68]
pushloc.v local.currentNode
call.i is_undefined(argc=1)
conv.v.b
not.b
bf [76]

:[69]
pushi.e -7
pushi.e 0
push.v [array]self.currentNode
pop.v.v local.currentActor
pushloc.v local.currentActor
pushloc.v local.currentActor
pushi.e -9
push.v [stacktop]self.deltaTime
conv.v.b
bf [71]

:[70]
push.v arg.argument1
b [72]

:[71]
push.v arg.argument0

:[72]
dup.v 1 8
dup.v 0
push.v stacktop.act
callv.v 1
push.l -1
cmp.l.v LTE
bt [74]

:[73]
pushloc.v local.needCleanup
conv.v.b
b [75]

:[74]
push.e 1

:[75]
pop.v.b local.needCleanup
pushi.e -7
pushi.e 1
push.v [array]self.currentNode
pop.v.v local.currentNode
b [68]

:[76]
pushloc.v local.needCleanup
conv.v.b
bf [86]

:[77]
pushbltn.v builtin.undefined
pop.v.v local.previousNode
push.v builtin._head
pop.v.v local.currentNode

:[78]
pushloc.v local.currentNode
call.i is_undefined(argc=1)
conv.v.b
not.b
bf [86]

:[79]
pushi.e -7
pushi.e 0
push.v [array]self.currentNode
pop.v.v local.currentActor
pushloc.v local.currentActor
pushi.e -9
push.v [stacktop]self.state
push.l -1
cmp.l.v LTE
bf [84]

:[80]
push.v builtin._head
pushloc.v local.currentNode
cmp.v.v EQ
bf [82]

:[81]
pushi.e -7
pushi.e 1
push.v [array]self.currentNode
pop.v.v builtin._head
b [83]

:[82]
push.i 1441792
setowner.e
pushi.e -7
pushi.e 1
push.v [array]self.currentNode
pushi.e 1
conv.i.v
pushloc.v local.previousNode
call.i array_set(argc=3)
popz.v

:[83]
push.v builtin.size
push.e 1
sub.i.v
pop.v.v builtin.size
b [85]

:[84]
pushloc.v local.currentNode
pop.v.v local.previousNode

:[85]
pushi.e -7
pushi.e 1
push.v [array]self.currentNode
pop.v.v local.currentNode
b [78]

:[86]
exit.i

:[87]
push.i [function]gml_Script_act@anon@4016@GMTwerkBank@GMTwerk_classes
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.act
b [99]

> gml_Script_get@anon@5319@GMTwerkBank@GMTwerk_classes (locals=1, argc=1)
:[88]
push.v builtin._head
pop.v.v local.currentNode

:[89]
push.v arg.argument0
dup.v 0
push.e 1
sub.i.v
pop.v.v arg.argument0
conv.v.b
bf [91]

:[90]
pushloc.v local.currentNode
call.i is_undefined(argc=1)
conv.v.b
not.b
b [92]

:[91]
push.e 0

:[92]
bf [94]

:[93]
pushi.e -7
pushi.e 1
push.v [array]self.currentNode
pop.v.v local.currentNode
b [89]

:[94]
pushloc.v local.currentNode
call.i is_undefined(argc=1)
conv.v.b
bf [96]

:[95]
pushbltn.v builtin.undefined
b [97]

:[96]
pushi.e -7
pushi.e 0
push.v [array]self.currentNode

:[97]
ret.v

:[98]
exit.i

:[99]
push.i [function]gml_Script_get@anon@5319@GMTwerkBank@GMTwerk_classes
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get

:[100]
pushbltn.v builtin.undefined
pop.v.v builtin._head
pushi.e 0
pop.v.i builtin.size
exit.i

:[101]
push.i [function]gml_Script_GMTwerkBank
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.GMTwerkBank
popz.v
b [116]

> gml_Script_GMTwerkArrayIterator (locals=0, argc=1)
:[102]
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [112]

:[103]
setstatic.e
b [106]

> gml_Script_hasNext@anon@5815@GMTwerkArrayIterator@GMTwerk_classes (locals=0, argc=0)
:[104]
push.v builtin.index
push.v builtin.array
call.i array_length(argc=1)
cmp.v.v LT
conv.b.v
ret.v

:[105]
exit.i

:[106]
push.i [function]gml_Script_hasNext@anon@5815@GMTwerkArrayIterator@GMTwerk_classes
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.hasNext
b [111]

> gml_Script_next@anon@5978@GMTwerkArrayIterator@GMTwerk_classes (locals=0, argc=0)
:[107]
push.v builtin.index
push.e 1
add.i.v
dup.v 0
pop.v.v builtin.index
push.v builtin.array
call.i array_length(argc=1)
cmp.v.v LT
bf [109]

:[108]
pushi.e -6
push.v builtin.index
conv.v.i
push.v [array]self.array
b [110]

:[109]
pushbltn.v builtin.undefined

:[110]
pop.v.v builtin.value
exit.i

:[111]
push.i [function]gml_Script_next@anon@5978@GMTwerkArrayIterator@GMTwerk_classes
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.next

:[112]
push.v arg.argument0
pop.v.v self.array
pushi.e 0
pop.v.i builtin.index
push.v arg.argument0
call.i array_length(argc=1)
pushi.e 0
cmp.i.v GT
bf [114]

:[113]
pushi.e -15
pushi.e 0
push.v [array]self.argument0
b [115]

:[114]
pushbltn.v builtin.undefined

:[115]
pop.v.v builtin.value
exit.i

:[116]
push.i [function]gml_Script_GMTwerkArrayIterator
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.GMTwerkArrayIterator
popz.v
b [129]

> gml_Script___gmtwerk_insert__ (locals=0, argc=1)
:[117]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.bank
call.i is_undefined(argc=1)
conv.v.b
bf [128]

:[118]
push.v builtin.id
conv.v.b
bf [120]

:[119]
push.s "__gmtwerk_self_host__"@134
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
b [121]

:[120]
push.e 0

:[121]
bf [123]

:[122]
push.v builtin.__gmtwerk_self_host__
push.v arg.argument0
dup.v 1 8
dup.v 0
push.v stacktop.add
callv.v 1
popz.v
b [128]

:[123]
pushref.i 0
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [125]

:[124]
pushref.i 0
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=4)
popz.v

:[125]
push.v builtin.id
conv.v.b
bf [127]

:[126]
push.v builtin.id
push.v arg.argument0
pushi.e -9
pop.v.v [stacktop]self.owner

:[127]
pushref.i 0
pushi.e -9
push.v [stacktop]self.__twerks__
push.v arg.argument0
dup.v 1 8
dup.v 0
push.v stacktop.add
callv.v 1
popz.v

:[128]
exit.i

:[129]
push.i [function]gml_Script___gmtwerk_insert__
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.__gmtwerk_insert__
popz.v
b [131]

> gml_Script_gmtwerk_host (locals=0, argc=0)
:[130]
push.i [function]gml_Script_GMTwerkBank
conv.i.v
call.i @@NewGMLObject@@(argc=1)
pop.v.v builtin.__gmtwerk_self_host__
exit.i

:[131]
push.i [function]gml_Script_gmtwerk_host
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.gmtwerk_host
popz.v
b [137]

> gml_Script_gmtwerk_run (locals=0, argc=2)
:[132]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [134]

:[133]
pushi.e 1
pop.v.i builtin.argument0

:[134]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [136]

:[135]
pushbltn.v builtin.delta_time
pop.v.v builtin.argument1

:[136]
push.v builtin.__gmtwerk_self_host__
push.v arg.argument1
push.v arg.argument0
dup.v 2 8
dup.v 0
push.v stacktop.act
callv.v 2
popz.v
exit.i

:[137]
push.i [function]gml_Script_gmtwerk_run
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.gmtwerk_run
popz.v

:[end]