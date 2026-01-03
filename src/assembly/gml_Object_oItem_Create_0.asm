:[0]
push.v builtin.bbox_bottom
neg.v
pop.v.v builtin.depth
pushi.e 1
pop.v.b builtin.debounce
pushi.e 0
pop.v.b builtin.cooldown
push.s ""@36
pop.v.s builtin.myDialogue

:[end]