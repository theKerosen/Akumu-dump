; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushglb.v global.crt
conv.v.b
not.b
bf [2]

:[1]
exit.i

:[2]
pushbltn.v builtin.application_surface
call.i surface_get_width(argc=1)
pop.v.v local.surf_width
pushbltn.v builtin.application_surface
call.i surface_get_height(argc=1)
pop.v.v local.surf_height
pushi.e 3
pop.v.i local.spacing
pushi.e 1
pop.v.i local.line_height
pushloc.v local.surf_height
pushloc.v local.spacing
div.v.v
call.i ceil(argc=1)
pop.v.v local.num_lines
pushi.e 0
pop.v.i local.i

:[3]
pushloc.v local.i
pushloc.v local.num_lines
cmp.v.v LT
bf [end]

:[4]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local.line_height
pushloc.v local.surf_width
pushloc.v local.i
pushloc.v local.spacing
mul.v.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushref.i 16777359
call.i draw_sprite_ext(argc=9)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [3]

:[end]