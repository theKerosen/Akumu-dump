:[0]
b [2]

> gml_Script_scrInitItems (locals=0, argc=0)
:[1]
push.i 28049402
setowner.e
call.i @@NewGMLArray@@(argc=0)
pop.v.v global.ITEMS
pushi.e 1
conv.i.v
pushref.i gml_Script_scrUseKey
pushref.i 16777273
push.s "Not too rusty. Still useful."@594
conv.s.v
push.s "Key"@595
conv.s.v
call.i gml_Script_createItem(argc=5)
call.i @@Global@@(argc=0)
pushi.e -9
pushi.e 0
pop.v.v [array]self.ITEMS
pushi.e 1
conv.i.v
pushref.i gml_Script_scrUseKnife
pushref.i 16777274
push.s "Clean. For now."@597
conv.s.v
push.s "Knife"@598
conv.s.v
call.i gml_Script_createItem(argc=5)
call.i @@Global@@(argc=0)
pushi.e -9
pushi.e 2
pop.v.v [array]self.ITEMS
pushi.e 1
conv.i.v
pushref.i gml_Script_scrUsePizza
pushref.i 16777313
push.s "You should probably heat it."@600
conv.s.v
push.s "Cold Pizza"@601
conv.s.v
call.i gml_Script_createItem(argc=5)
call.i @@Global@@(argc=0)
pushi.e -9
pushi.e 3
pop.v.v [array]self.ITEMS
pushi.e 1
conv.i.v
pushref.i gml_Script_scrUseHotPizza
pushref.i 16777313
push.s "Still warm. Best set on the counter."@603
conv.s.v
push.s "Pizza"@604
conv.s.v
call.i gml_Script_createItem(argc=5)
call.i @@Global@@(argc=0)
pushi.e -9
pushi.e 4
pop.v.v [array]self.ITEMS
pushi.e 1
conv.i.v
pushref.i gml_Script_scrHealPizza
pushref.i 16777313
push.s "Still warm. Smells good."@606
conv.s.v
push.s "Pizza"@604
conv.s.v
call.i gml_Script_createItem(argc=5)
call.i @@Global@@(argc=0)
pushi.e -9
pushi.e 5
pop.v.v [array]self.ITEMS
pushi.e 1
conv.i.v
pushref.i gml_Script_scrUseCandle
pushref.i 16777277
push.s "A source of light."@608
conv.s.v
push.s "Candle"@609
conv.s.v
call.i gml_Script_createItem(argc=5)
call.i @@Global@@(argc=0)
pushi.e -9
pushi.e 6
pop.v.v [array]self.ITEMS
pushi.e 1
conv.i.v
pushref.i gml_Script_scrUsePaper
pushref.i 16777383
push.s "Doesn't look used.\nThat's good."@611
conv.s.v
push.s "Toilet paper"@612
conv.s.v
call.i gml_Script_createItem(argc=5)
call.i @@Global@@(argc=0)
pushi.e -9
pushi.e 7
pop.v.v [array]self.ITEMS
pushi.e 1
conv.i.v
pushref.i gml_Script_scrUseWitchBook
pushref.i 16777225
push.s "You shouldn't remember this. But you do."@614
conv.s.v
push.s "Faust"@615
conv.s.v
call.i gml_Script_createItem(argc=5)
call.i @@Global@@(argc=0)
pushi.e -9
pushi.e 8
pop.v.v [array]self.ITEMS
pushi.e 1
conv.i.v
pushref.i gml_Script_scrUseFakeBook
pushref.i 16777251
push.s "Nothing interesting on it.\nI guess."@617
conv.s.v
push.s "Book"@618
conv.s.v
call.i gml_Script_createItem(argc=5)
call.i @@Global@@(argc=0)
pushi.e -9
pushi.e 9
pop.v.v [array]self.ITEMS
pushi.e 1
conv.i.v
pushref.i gml_Script_scrUseScrew
pushref.i 16777360
push.s "Seems to be useful."@620
conv.s.v
push.s "Screwdriver"@621
conv.s.v
call.i gml_Script_createItem(argc=5)
call.i @@Global@@(argc=0)
pushi.e -9
pushi.e 10
pop.v.v [array]self.ITEMS
exit.i

:[2]
push.i [function]gml_Script_scrInitItems
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scrInitItems
popz.v

:[end]