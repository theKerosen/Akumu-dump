:[0]
b [3]

> gml_Script_createItem (locals=1, argc=5)
:[1]
push.i 196602
setowner.e
push.v arg.argument0
pushi.e -7
pushi.e 0
pop.v.v [array]self.item
push.v arg.argument1
pushi.e -7
pushi.e 1
pop.v.v [array]self.item
push.v arg.argument2
pushi.e -7
pushi.e 2
pop.v.v [array]self.item
push.v arg.argument3
pushi.e -7
pushi.e 3
pop.v.v [array]self.item
push.v arg.argument4
pushi.e -7
pushi.e 4
pop.v.v [array]self.item
pushloc.v local.item
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_createItem
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.createItem
popz.v

:[end]