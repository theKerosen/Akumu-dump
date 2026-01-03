:[0]
b [2]

> gml_Script_scrCloseInventory (locals=0, argc=0)
:[1]
pushi.e -4
pushref.i 61
pushi.e -9
pop.v.i [stacktop]self.item
pushi.e -4
pushref.i 61
pushi.e -9
pop.v.i [stacktop]self.itemDef
pushi.e 0
pushref.i 57
pushi.e -9
pop.v.b [stacktop]self.active
pushi.e 0
pushref.i 98
pushi.e -9
pop.v.i [stacktop]self.state
exit.i

:[2]
push.i [function]gml_Script_scrCloseInventory
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scrCloseInventory
popz.v

:[end]