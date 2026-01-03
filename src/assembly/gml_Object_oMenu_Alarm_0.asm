; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushi.e 0
pop.v.i local.i

:[1]
pushloc.v local.i
push.v builtin.total_slots
cmp.v.v LT
bf [end]

:[2]
push.s "akumu"@633
pushloc.v local.i
call.i string(argc=1)
add.v.s
push.s ".ini"@635
add.s.v
pop.v.v local.saveFile
pushloc.v local.saveFile
call.i file_exists(argc=1)
conv.v.b
bf [7]

:[3]
pushloc.v local.saveFile
call.i file_exists(argc=1)
conv.v.b
bf [5]

:[4]
pushi.e 1
conv.i.v
b [6]

:[5]
pushi.e 0
conv.i.v

:[6]
pop.v.v global.any_save_exists
b [end]

:[7]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [1]

:[end]