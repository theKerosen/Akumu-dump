:[0]
b [44]

> gml_Script_scr_astar (locals=23, argc=5)
:[1]
pushbltn.v builtin.argument0
pop.v.v local.grid
push.i 14977051
setowner.e
pushbltn.v builtin.argument2
pushbltn.v builtin.argument1
call.i @@NewGMLArray@@(argc=2)
pop.v.v local.start
push.i 14977052
setowner.e
pushbltn.v builtin.argument4
pushbltn.v builtin.argument3
call.i @@NewGMLArray@@(argc=2)
pop.v.v local.goal
pushloc.v local.grid
call.i ds_grid_width(argc=1)
pop.v.v local.cols
pushloc.v local.grid
call.i ds_grid_height(argc=1)
pop.v.v local.rows
call.i ds_priority_create(argc=0)
pop.v.v local.open
call.i ds_map_create(argc=0)
pop.v.v local.came_from
call.i ds_map_create(argc=0)
pop.v.v local.cost_so_far
pushi.e -7
pushi.e 0
push.v [array]self.start
call.i string(argc=1)
push.s ","@788
add.s.v
pushi.e -7
pushi.e 1
push.v [array]self.start
call.i string(argc=1)
add.v.v
pop.v.v local.start_key
pushi.e 0
conv.i.v
pushloc.v local.start_key
pushloc.v local.open
call.i ds_priority_add(argc=3)
popz.v
push.s "-1"@791
conv.s.v
pushloc.v local.start_key
pushloc.v local.came_from
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
pushloc.v local.start_key
pushloc.v local.cost_so_far
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
pop.v.b local.found

:[2]
pushloc.v local.open
call.i ds_priority_empty(argc=1)
conv.v.b
not.b
bf [37]

:[3]
pushloc.v local.open
call.i ds_priority_delete_min(argc=1)
pop.v.v local.current
push.s ","@788
conv.s.v
pushloc.v local.current
call.i string_split(argc=2)
pop.v.v local.cur_split
pushi.e -7
pushi.e 0
push.v [array]self.cur_split
call.i real(argc=1)
pop.v.v local.cx
pushi.e -7
pushi.e 1
push.v [array]self.cur_split
call.i real(argc=1)
pop.v.v local.cy
pushloc.v local.cx
pushi.e -7
pushi.e 0
push.v [array]self.goal
cmp.v.v EQ
bf [5]

:[4]
pushloc.v local.cy
pushi.e -7
pushi.e 1
push.v [array]self.goal
cmp.v.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
pushi.e 1
pop.v.b local.found
b [37]

:[8]
pushi.e -1
pop.v.i local.dx

:[9]
pushloc.v local.dx
pushi.e 1
cmp.i.v LTE
bf [36]

:[10]
pushi.e -1
pop.v.i local.dy

:[11]
pushloc.v local.dy
pushi.e 1
cmp.i.v LTE
bf [35]

:[12]
pushloc.v local.dx
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
pushloc.v local.dy
pushi.e 0
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bt [17]

:[16]
pushloc.v local.dx
call.i abs(argc=1)
pushloc.v local.dy
call.i abs(argc=1)
add.v.v
pushi.e 2
cmp.i.v EQ
b [18]

:[17]
push.e 1

:[18]
bf [20]

:[19]
b [34]

:[20]
pushloc.v local.cx
pushloc.v local.dx
add.v.v
pop.v.v local.nx
pushloc.v local.cy
pushloc.v local.dy
add.v.v
pop.v.v local.ny
pushloc.v local.nx
pushi.e 0
cmp.i.v LT
bt [24]

:[21]
pushloc.v local.ny
pushi.e 0
cmp.i.v LT
bt [24]

:[22]
pushloc.v local.nx
pushloc.v local.cols
cmp.v.v GTE
bt [24]

:[23]
pushloc.v local.ny
pushloc.v local.rows
cmp.v.v GTE
b [25]

:[24]
push.e 1

:[25]
bf [27]

:[26]
b [34]

:[27]
pushloc.v local.ny
pushloc.v local.nx
pushloc.v local.grid
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v NEQ
bf [29]

:[28]
b [34]

:[29]
pushloc.v local.nx
call.i string(argc=1)
push.s ","@788
add.s.v
pushloc.v local.ny
call.i string(argc=1)
add.v.v
pop.v.v local.next_key
pushloc.v local.current
pushloc.v local.cost_so_far
call.i ds_map_find_value(argc=2)
pushi.e 1
add.i.v
pop.v.v local.new_cost
pushloc.v local.next_key
pushloc.v local.cost_so_far
call.i ds_map_exists(argc=2)
conv.v.b
not.b
bt [31]

:[30]
pushloc.v local.new_cost
pushloc.v local.next_key
pushloc.v local.cost_so_far
call.i ds_map_find_value(argc=2)
cmp.v.v LT
b [32]

:[31]
push.e 1

:[32]
bf [34]

:[33]
pushloc.v local.new_cost
pushloc.v local.next_key
pushloc.v local.cost_so_far
call.i ds_map_replace(argc=3)
popz.v
pushloc.v local.new_cost
pushi.e -7
pushi.e 0
push.v [array]self.goal
pushloc.v local.nx
sub.v.v
call.i abs(argc=1)
add.v.v
pushi.e -7
pushi.e 1
push.v [array]self.goal
pushloc.v local.ny
sub.v.v
call.i abs(argc=1)
add.v.v
pop.v.v local.priority
pushloc.v local.priority
pushloc.v local.next_key
pushloc.v local.open
call.i ds_priority_add(argc=3)
popz.v
pushloc.v local.current
pushloc.v local.next_key
pushloc.v local.came_from
call.i ds_map_replace(argc=3)
popz.v

:[34]
push.v local.dy
push.e 1
add.i.v
pop.v.v local.dy
b [11]

:[35]
push.v local.dx
push.e 1
add.i.v
pop.v.v local.dx
b [9]

:[36]
b [2]

:[37]
push.i 14876672
setowner.e
pushi.e 0
conv.i.v
call.i array_create(argc=1)
pop.v.v local.path
pushloc.v local.found
conv.v.b
bf [42]

:[38]
pushi.e -7
pushi.e 0
push.v [array]self.goal
call.i string(argc=1)
push.s ","@788
add.s.v
pushi.e -7
pushi.e 1
push.v [array]self.goal
call.i string(argc=1)
add.v.v
pop.v.v local.current

:[39]
pushloc.v local.current
pushloc.v local.start_key
cmp.v.v NEQ
bf [41]

:[40]
push.s ","@788
conv.s.v
pushloc.v local.current
call.i string_split(argc=2)
pop.v.v local.split
pushi.e -7
pushi.e 1
push.v [array]self.split
call.i real(argc=1)
pushi.e -7
pushi.e 0
push.v [array]self.split
call.i real(argc=1)
call.i @@NewGMLArray@@(argc=2)
pushloc.v local.path
call.i array_push(argc=2)
popz.v
pushloc.v local.current
pushloc.v local.came_from
call.i ds_map_find_value(argc=2)
pop.v.v local.current
b [39]

:[41]
pushloc.v local.path
call.i array_reverse(argc=1)
popz.v

:[42]
pushloc.v local.open
call.i ds_priority_destroy(argc=1)
popz.v
pushloc.v local.came_from
call.i ds_map_destroy(argc=1)
popz.v
pushloc.v local.cost_so_far
call.i ds_map_destroy(argc=1)
popz.v
pushloc.v local.path
ret.v

:[43]
exit.i

:[44]
push.i [function]gml_Script_scr_astar
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_astar
popz.v

:[end]