:[0]
b [36]

> gml_Script_ItineraryActor (locals=0, argc=3)
:[1]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushbltn.v builtin.undefined
pop.v.v builtin.argument2

:[3]
call.i gml_Script_GMTwerkActor(argc=0)
push.i [function]gml_Script_GMTwerkActor
conv.i.v
call.i @@CopyStatic@@(argc=1)
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [24]

:[4]
setstatic.e
b [18]

> gml_Script_onAct@anon@737@ItineraryActor@GMTwerk_Itinerary (locals=0, argc=1)
:[5]
push.v builtin.countUp
conv.v.b
bf [12]

:[6]
push.v builtin.time
push.v arg.argument0
add.v.v
pop.v.v builtin.time

:[7]
push.v builtin.time
push.v builtin.nextMoment
cmp.v.v GTE
bf [11]

:[8]
call.i @@This@@(argc=0)
push.v builtin.nextAction
callv.v 0
popz.v
call.i @@This@@(argc=0)
push.v builtin.__toNext__
callv.v 0
conv.v.b
not.b
bf [10]

:[9]
call.i @@This@@(argc=0)
push.v builtin.done
callv.v 0
popz.v
push.v builtin.state
ret.v

:[10]
b [7]

:[11]
b [17]

:[12]
push.v builtin.time
push.v arg.argument0
sub.v.v
pop.v.v builtin.time

:[13]
push.v builtin.time
push.v builtin.nextMoment
cmp.v.v LTE
bf [17]

:[14]
call.i @@This@@(argc=0)
push.v builtin.nextAction
callv.v 0
popz.v
call.i @@This@@(argc=0)
push.v builtin.__toNext__
callv.v 0
conv.v.b
not.b
bf [16]

:[15]
call.i @@This@@(argc=0)
push.v builtin.done
callv.v 0
popz.v
push.v builtin.state
ret.v

:[16]
b [13]

:[17]
exit.i

:[18]
push.i [function]gml_Script_onAct@anon@737@ItineraryActor@GMTwerk_Itinerary
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.onAct
b [23]

> gml_Script___toNext__@anon@1266@ItineraryActor@GMTwerk_Itinerary (locals=0, argc=0)
:[19]
push.v builtin.itinerary
dup.v 0 8
dup.v 0
push.v stacktop.next
callv.v 0
popz.v
push.v builtin.itinerary
dup.v 0 8
dup.v 0
push.v stacktop.hasNext
callv.v 0
conv.v.b
bf [21]

:[20]
push.v builtin.itinerary
pushi.e -9
push.v [stacktop]self.index
call.i @@This@@(argc=0)
push.v builtin.convertTime
callv.v 1
pop.v.v builtin.nextMoment
push.v builtin.itinerary
pushi.e -9
push.v [stacktop]self.value
pop.v.v builtin.nextAction
pushi.e 1
conv.b.v
ret.v

:[21]
pushbltn.v builtin.undefined
pop.v.v builtin.nextMoment
pushbltn.v builtin.undefined
pop.v.v builtin.nextAction
pushi.e 0
conv.b.v
ret.v

:[22]
exit.i

:[23]
push.i [function]gml_Script___toNext__@anon@1266@ItineraryActor@GMTwerk_Itinerary
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__toNext__

:[24]
push.v arg.argument0
pop.v.v self.time
push.v arg.argument0
pushi.e 0
cmp.i.v LTE
pop.v.b builtin.countUp
push.v arg.argument1
call.i is_array(argc=1)
conv.v.b
bf [26]

:[25]
push.v arg.argument1
push.i [function]gml_Script_GMTwerkItineraryIterator
conv.i.v
call.i @@NewGMLObject@@(argc=2)
b [27]

:[26]
push.v arg.argument1

:[27]
pop.v.v self.itinerary
push.v arg.argument2
call.i is_undefined(argc=1)
conv.v.b
not.b
bf [29]

:[28]
push.v arg.argument2
call.i @@This@@(argc=0)
push.v builtin.includeOpts
callv.v 1
popz.v

:[29]
push.v self.time
call.i @@This@@(argc=0)
push.v builtin.convertTime
callv.v 1
pop.v.v self.time
push.v self.itinerary
dup.v 0 8
dup.v 0
push.v stacktop.hasNext
callv.v 0
conv.v.b
bf [34]

:[30]
push.v self.itinerary
pushi.e -9
push.v [stacktop]self.index
call.i @@This@@(argc=0)
push.v builtin.convertTime
callv.v 1
pop.v.v builtin.nextMoment
push.v self.itinerary
pushi.e -9
push.v [stacktop]self.value
pop.v.v builtin.nextAction
push.v builtin.nextMoment
push.v self.time
cmp.v.v EQ
bf [33]

:[31]
call.i @@This@@(argc=0)
push.v builtin.nextAction
callv.v 0
popz.v
call.i @@This@@(argc=0)
push.v static.__toNext__
callv.v 0
conv.v.b
not.b
bf [33]

:[32]
call.i @@This@@(argc=0)
push.v builtin.done
callv.v 0
popz.v

:[33]
b [35]

:[34]
pushbltn.v builtin.undefined
pop.v.v builtin.nextMoment
pushbltn.v builtin.undefined
pop.v.v builtin.nextAction
call.i @@This@@(argc=0)
push.v builtin.done
callv.v 0
popz.v

:[35]
exit.i

:[36]
push.i [function]gml_Script_ItineraryActor
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.ItineraryActor
popz.v
b [51]

> gml_Script_GMTwerkItineraryIterator (locals=0, argc=1)
:[37]
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [47]

:[38]
setstatic.e
b [41]

> gml_Script_hasNext@anon@2714@GMTwerkItineraryIterator@GMTwerk_Itinerary (locals=0, argc=0)
:[39]
push.v builtin._i
push.v builtin.itineraryArray
call.i array_length(argc=1)
cmp.v.v LT
conv.b.v
ret.v

:[40]
exit.i

:[41]
push.i [function]gml_Script_hasNext@anon@2714@GMTwerkItineraryIterator@GMTwerk_Itinerary
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.hasNext
b [46]

> gml_Script_next@anon@2878@GMTwerkItineraryIterator@GMTwerk_Itinerary (locals=0, argc=0)
:[42]
push.v builtin._i
push.e 1
add.i.v
dup.v 0
pop.v.v builtin._i
push.v builtin.itineraryArray
call.i array_length(argc=1)
cmp.v.v GTE
bf [44]

:[43]
pushbltn.v builtin.undefined
pop.v.v builtin.index
pushbltn.v builtin.undefined
pop.v.v builtin.value
b [45]

:[44]
pushi.e -6
push.v builtin._i
conv.v.i
push.v [arraypushaf]self.itineraryArray
pushi.e 0
pushaf.e
pop.v.v builtin.index
pushi.e -6
push.v builtin._i
conv.v.i
push.v [arraypushaf]self.itineraryArray
pushi.e 1
pushaf.e
pop.v.v builtin.value

:[45]
exit.i

:[46]
push.i [function]gml_Script_next@anon@2878@GMTwerkItineraryIterator@GMTwerk_Itinerary
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.next

:[47]
push.v arg.argument0
pop.v.v self.itineraryArray
pushi.e 0
pop.v.i builtin._i
push.v self.itineraryArray
call.i array_length(argc=1)
pushi.e 0
cmp.i.v EQ
bf [49]

:[48]
pushbltn.v builtin.undefined
pop.v.v builtin.index
pushbltn.v builtin.undefined
pop.v.v builtin.value
b [50]

:[49]
call.i @@This@@(argc=0)
pushi.e -9
push.v builtin._i
conv.v.i
push.v [arraypushaf]self.itineraryArray
pushi.e 0
pushaf.e
pop.v.v builtin.index
call.i @@This@@(argc=0)
pushi.e -9
push.v builtin._i
conv.v.i
push.v [arraypushaf]self.itineraryArray
pushi.e 1
pushaf.e
pop.v.v builtin.value

:[50]
exit.i

:[51]
push.i [function]gml_Script_GMTwerkItineraryIterator
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.GMTwerkItineraryIterator
popz.v
b [56]

> gml_Script_Itinerary (locals=1, argc=3)
:[52]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [54]

:[53]
pushbltn.v builtin.undefined
pop.v.v builtin.argument2

:[54]
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
push.i [function]gml_Script_ItineraryActor
conv.i.v
call.i @@NewGMLObject@@(argc=4)
pop.v.v local.actor
pushloc.v local.actor
call.i gml_Script___gmtwerk_insert__(argc=1)
popz.v
pushloc.v local.actor
ret.v

:[55]
exit.i

:[56]
push.i [function]gml_Script_Itinerary
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.Itinerary
popz.v

:[end]