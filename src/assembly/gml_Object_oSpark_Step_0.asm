:[0]
push.v builtin.bbox_bottom
neg.v
pop.v.v builtin.depth
pushref.i 98
push.v builtin.y
push.v builtin.x
call.i place_meeting(argc=3)
conv.v.b
bf [4]

:[1]
pushref.i 18
pushi.e -9
pushenv [3]

:[2]
pushi.e 1
pop.v.b builtin.canDialogue

:[3]
popenv [2]
b [end]

:[4]
pushref.i 18
pushi.e -9
pushenv [6]

:[5]
pushi.e 0
pop.v.b builtin.canDialogue

:[6]
popenv [5]

:[end]