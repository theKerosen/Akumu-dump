; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushref.i 98
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[1]
pushref.i 98
pushi.e -9
push.v [stacktop]self.visible
pushi.e 0
cmp.b.v EQ
bf [3]

:[2]
exit.i

:[3]
push.v builtin.dark_surf
call.i surface_exists(argc=1)
conv.v.b
bf [66]

:[4]
push.v builtin.dark_surf
call.i surface_set_target(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_clear(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
pushref.i 98
pushi.e -9
pushenv [7]

:[5]
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushref.i 137
pushi.e -9
push.v [stacktop]self.fuel
pushref.i 137
pushi.e -9
push.v [stacktop]self.fuel_max
div.v.v
call.i clamp(argc=3)
pop.v.v local.fuel_ratio
push.d 0.5
pop.v.d local.min_scale
pushi.e 1
pop.v.i local.max_scale
pushloc.v local.fuel_ratio
pushloc.v local.max_scale
pushloc.v local.min_scale
call.i lerp(argc=3)
pop.v.v local.base_scale
pushloc.v local.base_scale
push.d 0.85
pushloc.v local.base_scale
mul.v.d
call.i random_range(argc=2)
pop.v.v local.scale
push.d 0.2
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.y
pushi.e 12
sub.i.v
push.v builtin.x
pushi.e 0
conv.i.v
pushref.i 16777369
call.i draw_sprite_ext(argc=9)
popz.v
push.v builtin.itemequip
push.s "candle"@957
cmp.s.v EQ
bf [7]

:[6]
push.d 0.2
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local.scale
pushloc.v local.scale
push.v builtin.y
pushi.e 12
sub.i.v
push.v builtin.x
pushi.e 0
conv.i.v
pushref.i 16777265
call.i draw_sprite_ext(argc=9)
popz.v

:[7]
popenv [5]
pushref.i 101
pushi.e -9
pushenv [16]

:[8]
push.v builtin.image_index
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [12]

:[9]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [13]

:[10]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [14]

:[11]
b [15]

:[12]
pushi.e 3
pop.v.i builtin.upy
b [15]

:[13]
pushi.e 5
pop.v.i builtin.upy
b [15]

:[14]
pushi.e 6
pop.v.i builtin.upy
b [15]

:[15]
popz.v
push.d 0.2
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.y
push.v builtin.upy
sub.v.v
push.v builtin.x
pushi.e 0
conv.i.v
pushref.i 16777369
call.i draw_sprite_ext(argc=9)
popz.v

:[16]
popenv [8]
pushref.i 31
pushi.e -9
pushenv [18]

:[17]
push.d 0.2
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.y
pushi.e 12
sub.i.v
push.v builtin.x
pushi.e 0
conv.i.v
pushref.i 16777369
call.i draw_sprite_ext(argc=9)
popz.v

:[18]
popenv [17]
pushref.i 64
pushi.e -9
pushenv [20]

:[19]
push.d 0.25
conv.d.v
push.d 0.19
conv.d.v
call.i random_range(argc=2)
pop.v.v local.scale
push.d 0.2
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local.scale
pushloc.v local.scale
push.v builtin.y
pushi.e 2
add.i.v
push.v builtin.x
push.d 4.5
add.d.v
pushi.e 0
conv.i.v
pushref.i 16777369
call.i draw_sprite_ext(argc=9)
popz.v

:[20]
popenv [19]
pushref.i 66
pushi.e -9
pushenv [23]

:[21]
push.v builtin.light
conv.v.b
bf [23]

:[22]
push.d 0.5
pop.v.d local.min_scale
pushi.e 1
pop.v.i local.max_scale
pushi.e 1
conv.i.v
pushloc.v local.max_scale
pushloc.v local.min_scale
call.i lerp(argc=3)
pop.v.v local.base_scale
pushloc.v local.base_scale
push.d 0.85
pushloc.v local.base_scale
mul.v.d
call.i random_range(argc=2)
pop.v.v local.scale
push.d 0.2
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.y
pushi.e 7
add.i.v
push.v builtin.x
pushi.e 7
add.i.v
pushi.e 0
conv.i.v
pushref.i 16777369
call.i draw_sprite_ext(argc=9)
popz.v
push.d 0.2
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local.scale
pushloc.v local.scale
push.v builtin.y
pushi.e 7
add.i.v
push.v builtin.x
pushi.e 7
add.i.v
pushi.e 0
conv.i.v
pushref.i 16777265
call.i draw_sprite_ext(argc=9)
popz.v

:[23]
popenv [21]
pushref.i 67
pushi.e -9
pushenv [26]

:[24]
push.v builtin.light
conv.v.b
bf [26]

:[25]
push.d 0.5
pop.v.d local.min_scale
pushi.e 1
pop.v.i local.max_scale
pushi.e 1
conv.i.v
pushloc.v local.max_scale
pushloc.v local.min_scale
call.i lerp(argc=3)
pop.v.v local.base_scale
pushloc.v local.base_scale
push.d 0.85
pushloc.v local.base_scale
mul.v.d
call.i random_range(argc=2)
pop.v.v local.scale
push.d 0.2
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.y
pushi.e 7
add.i.v
push.v builtin.x
pushi.e 7
add.i.v
pushi.e 0
conv.i.v
pushref.i 16777369
call.i draw_sprite_ext(argc=9)
popz.v
push.d 0.2
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local.scale
pushloc.v local.scale
push.v builtin.y
pushi.e 7
add.i.v
push.v builtin.x
pushi.e 7
add.i.v
pushi.e 0
conv.i.v
pushref.i 16777265
call.i draw_sprite_ext(argc=9)
popz.v

:[26]
popenv [24]
pushref.i 141
pushi.e -9
pushenv [28]

:[27]
push.d 0.2
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.d 0.7
conv.d.v
push.d 0.7
conv.d.v
push.v builtin.y
pushi.e 12
add.i.v
push.v builtin.x
pushi.e 16
add.i.v
pushi.e 0
conv.i.v
pushref.i 16777265
call.i draw_sprite_ext(argc=9)
popz.v

:[28]
popenv [27]
pushref.i 93
pushi.e -9
pushenv [30]

:[29]
push.d 0.2
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.d 0.7
conv.d.v
push.d 0.7
conv.d.v
push.v builtin.y
pushi.e 10
add.i.v
push.v builtin.x
pushi.e 10
add.i.v
pushi.e 0
conv.i.v
pushref.i 16777369
call.i draw_sprite_ext(argc=9)
popz.v

:[30]
popenv [29]
pushref.i 95
pushi.e -9
pushenv [32]

:[31]
push.d 0.2
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.d 0.7
conv.d.v
push.d 0.7
conv.d.v
push.v builtin.y
pushi.e 10
add.i.v
push.v builtin.x
pushi.e 10
add.i.v
pushi.e 0
conv.i.v
pushref.i 16777369
call.i draw_sprite_ext(argc=9)
popz.v

:[32]
popenv [31]
pushref.i 96
pushi.e -9
pushenv [34]

:[33]
push.d 0.2
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.d 0.7
conv.d.v
push.d 0.7
conv.d.v
push.v builtin.y
pushi.e 10
add.i.v
push.v builtin.x
pushi.e 10
add.i.v
pushi.e 0
conv.i.v
pushref.i 16777369
call.i draw_sprite_ext(argc=9)
popz.v

:[34]
popenv [33]
pushref.i 77
pushi.e -9
pushenv [36]

:[35]
push.d 0.2
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.d 0.4
conv.d.v
push.d 0.4
conv.d.v
push.v builtin.y
pushi.e 6
add.i.v
push.v builtin.x
pushi.e 4
add.i.v
pushi.e 0
conv.i.v
pushref.i 16777369
call.i draw_sprite_ext(argc=9)
popz.v

:[36]
popenv [35]
pushref.i 120
pushi.e -9
pushenv [40]

:[37]
push.v builtin.image_index
pushi.e 4
cmp.i.v GTE
bf [39]

:[38]
push.d 0.2
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.d 0.2
conv.d.v
push.d 0.2
conv.d.v
push.v builtin.y
push.v builtin.x
pushi.e 0
conv.i.v
pushref.i 16777369
call.i draw_sprite_ext(argc=9)
popz.v
b [40]

:[39]
push.d 0.2
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.d 0.4
conv.d.v
push.d 0.4
conv.d.v
push.v builtin.y
push.v builtin.x
pushi.e 0
conv.i.v
pushref.i 16777369
call.i draw_sprite_ext(argc=9)
popz.v

:[40]
popenv [37]
pushref.i 131
pushi.e -9
pushenv [42]

:[41]
push.d 0.2
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.d 0.7
conv.d.v
push.d 0.7
conv.d.v
push.v builtin.y
pushi.e 5
add.i.v
push.v builtin.x
pushi.e 6
add.i.v
pushi.e 0
conv.i.v
pushref.i 16777369
call.i draw_sprite_ext(argc=9)
popz.v

:[42]
popenv [41]
pushref.i 142
pushi.e -9
pushenv [48]

:[43]
push.v builtin.visible
conv.v.b
bf [45]

:[44]
push.v builtin.sprite_index
pushref.i 16777224
cmp.v.v EQ
b [46]

:[45]
push.e 0

:[46]
bf [48]

:[47]
push.d 0.2
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.d 0.4
conv.d.v
push.d 0.4
conv.d.v
push.v builtin.y
pushi.e 3
add.i.v
push.v builtin.x
pushi.e 7
add.i.v
pushi.e 0
conv.i.v
pushref.i 16777369
call.i draw_sprite_ext(argc=9)
popz.v

:[48]
popenv [43]
pushref.i 62
pushi.e -9
pushenv [50]

:[49]
push.d 0.2
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.d 0.4
conv.d.v
push.d 0.4
conv.d.v
push.v builtin.y
pushi.e 3
add.i.v
push.v builtin.x
pushi.e 6
add.i.v
pushi.e 0
conv.i.v
pushref.i 16777369
call.i draw_sprite_ext(argc=9)
popz.v

:[50]
popenv [49]
pushref.i 102
pushi.e -9
pushenv [52]

:[51]
push.d 0.2
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.y
pushi.e 12
sub.i.v
push.v builtin.x
pushi.e 0
conv.i.v
pushref.i 16777369
call.i draw_sprite_ext(argc=9)
popz.v

:[52]
popenv [51]
pushref.i 85
pushi.e -9
pushenv [54]

:[53]
push.d 0.2
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.d 0.4
conv.d.v
push.d 0.4
conv.d.v
push.v builtin.y
pushi.e 3
add.i.v
push.v builtin.x
pushi.e 3
add.i.v
pushi.e 0
conv.i.v
pushref.i 16777369
call.i draw_sprite_ext(argc=9)
popz.v

:[54]
popenv [53]
pushref.i 63
pushi.e -9
pushenv [56]

:[55]
push.d 0.2
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.d 0.4
conv.d.v
push.d 0.4
conv.d.v
push.v builtin.y
pushi.e 6
add.i.v
push.v builtin.x
pushi.e 4
add.i.v
pushi.e 0
conv.i.v
pushref.i 16777369
call.i draw_sprite_ext(argc=9)
popz.v

:[56]
popenv [55]
pushref.i 68
pushi.e -9
pushenv [58]

:[57]
push.d 0.2
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.y
push.v builtin.x
pushi.e 0
conv.i.v
pushref.i 16777369
call.i draw_sprite_ext(argc=9)
popz.v

:[58]
popenv [57]
pushref.i 135
pushi.e -9
pushenv [61]

:[59]
push.v builtin.turn
conv.v.b
bf [61]

:[60]
push.d 0.2
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.y
pushi.e 10
add.i.v
push.v builtin.x
pushi.e 16
add.i.v
pushi.e 0
conv.i.v
pushref.i 16777369
call.i draw_sprite_ext(argc=9)
popz.v

:[61]
popenv [59]
pushref.i 100
pushi.e -9
pushenv [63]

:[62]
push.d 0.2
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.y
push.v builtin.x
pushi.e 0
conv.i.v
pushref.i 16777369
call.i draw_sprite_ext(argc=9)
popz.v

:[63]
popenv [62]
pushref.i 99
pushi.e -9
pushenv [65]

:[64]
push.d 0.2
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.y
pushi.e 8
sub.i.v
push.v builtin.x
pushi.e 0
conv.i.v
pushref.i 16777369
call.i draw_sprite_ext(argc=9)
popz.v

:[65]
popenv [64]
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
call.i surface_reset_target(argc=0)
popz.v
push.v builtin.darkness
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.dark_surf
call.i draw_surface_ext(argc=8)
popz.v
b [67]

:[66]
pushbltn.v builtin.room_height
pushbltn.v builtin.room_width
call.i surface_create(argc=2)
pop.v.v builtin.dark_surf

:[67]
push.v builtin.light_surf
call.i surface_exists(argc=1)
conv.v.b
bf [130]

:[68]
push.v builtin.light_surf
call.i surface_set_target(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_clear(argc=1)
popz.v
pushref.i 98
pushi.e -9
pushenv [71]

:[69]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushref.i 137
pushi.e -9
push.v [stacktop]self.fuel
pushref.i 137
pushi.e -9
push.v [stacktop]self.fuel_max
div.v.v
call.i clamp(argc=3)
pop.v.v local.fuel_ratio
push.d 0.5
pop.v.d local.min_scale
pushi.e 1
pop.v.i local.max_scale
pushloc.v local.fuel_ratio
pushloc.v local.max_scale
pushloc.v local.min_scale
call.i lerp(argc=3)
pop.v.v local.base_scale
pushloc.v local.base_scale
push.d 0.85
pushloc.v local.base_scale
mul.v.d
call.i random_range(argc=2)
pop.v.v local.scale
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
push.d 0.1
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.y
pushi.e 12
sub.i.v
push.v builtin.x
pushi.e 0
conv.i.v
pushref.i 16777369
call.i draw_sprite_ext(argc=9)
popz.v
push.v builtin.itemequip
push.s "candle"@957
cmp.s.v EQ
bf [71]

:[70]
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
push.d 0.1
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local.scale
pushloc.v local.scale
push.v builtin.y
pushi.e 12
sub.i.v
push.v builtin.x
pushi.e 0
conv.i.v
pushref.i 16777265
call.i draw_sprite_ext(argc=9)
popz.v

:[71]
popenv [69]
pushref.i 101
pushi.e -9
pushenv [80]

:[72]
push.v builtin.image_index
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [76]

:[73]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [77]

:[74]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [78]

:[75]
b [79]

:[76]
pushi.e 3
pop.v.i builtin.upy
b [79]

:[77]
pushi.e 5
pop.v.i builtin.upy
b [79]

:[78]
pushi.e 6
pop.v.i builtin.upy
b [79]

:[79]
popz.v
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
push.d 0.1
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.y
push.v builtin.upy
sub.v.v
push.v builtin.x
pushi.e 0
conv.i.v
pushref.i 16777369
call.i draw_sprite_ext(argc=9)
popz.v

:[80]
popenv [72]
pushref.i 31
pushi.e -9
pushenv [82]

:[81]
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
push.d 0.1
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.y
pushi.e 12
sub.i.v
push.v builtin.x
pushi.e 0
conv.i.v
pushref.i 16777369
call.i draw_sprite_ext(argc=9)
popz.v

:[82]
popenv [81]
pushref.i 64
pushi.e -9
pushenv [84]

:[83]
push.d 0.25
conv.d.v
push.d 0.19
conv.d.v
call.i random_range(argc=2)
pop.v.v local.scale
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
push.d 0.1
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local.scale
pushloc.v local.scale
push.v builtin.y
pushi.e 2
add.i.v
push.v builtin.x
push.d 4.5
add.d.v
pushi.e 0
conv.i.v
pushref.i 16777369
call.i draw_sprite_ext(argc=9)
popz.v

:[84]
popenv [83]
pushref.i 66
pushi.e -9
pushenv [87]

:[85]
push.v builtin.light
conv.v.b
bf [87]

:[86]
push.d 0.5
pop.v.d local.min_scale
pushi.e 1
pop.v.i local.max_scale
pushi.e 1
conv.i.v
pushloc.v local.max_scale
pushloc.v local.min_scale
call.i lerp(argc=3)
pop.v.v local.base_scale
pushloc.v local.base_scale
push.d 0.85
pushloc.v local.base_scale
mul.v.d
call.i random_range(argc=2)
pop.v.v local.scale
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
push.d 0.1
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.y
pushi.e 7
add.i.v
push.v builtin.x
pushi.e 7
add.i.v
pushi.e 0
conv.i.v
pushref.i 16777369
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
push.d 0.1
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local.scale
pushloc.v local.scale
push.v builtin.y
pushi.e 7
add.i.v
push.v builtin.x
pushi.e 7
add.i.v
pushi.e 0
conv.i.v
pushref.i 16777265
call.i draw_sprite_ext(argc=9)
popz.v

:[87]
popenv [85]
pushref.i 67
pushi.e -9
pushenv [90]

:[88]
push.v builtin.light
conv.v.b
bf [90]

:[89]
push.d 0.5
pop.v.d local.min_scale
pushi.e 1
pop.v.i local.max_scale
pushi.e 1
conv.i.v
pushloc.v local.max_scale
pushloc.v local.min_scale
call.i lerp(argc=3)
pop.v.v local.base_scale
pushloc.v local.base_scale
push.d 0.85
pushloc.v local.base_scale
mul.v.d
call.i random_range(argc=2)
pop.v.v local.scale
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
push.d 0.1
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local.scale
pushloc.v local.scale
push.v builtin.y
pushi.e 7
add.i.v
push.v builtin.x
pushi.e 7
add.i.v
pushi.e 0
conv.i.v
pushref.i 16777265
call.i draw_sprite_ext(argc=9)
popz.v

:[90]
popenv [88]
pushref.i 141
pushi.e -9
pushenv [92]

:[91]
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
push.d 0.1
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.d 0.7
conv.d.v
push.d 0.7
conv.d.v
push.v builtin.y
pushi.e 12
add.i.v
push.v builtin.x
pushi.e 16
add.i.v
pushi.e 0
conv.i.v
pushref.i 16777265
call.i draw_sprite_ext(argc=9)
popz.v

:[92]
popenv [91]
pushref.i 93
pushi.e -9
pushenv [94]

:[93]
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
push.d 0.1
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.d 0.7
conv.d.v
push.d 0.7
conv.d.v
push.v builtin.y
pushi.e 10
add.i.v
push.v builtin.x
pushi.e 10
add.i.v
pushi.e 0
conv.i.v
pushref.i 16777369
call.i draw_sprite_ext(argc=9)
popz.v

:[94]
popenv [93]
pushref.i 95
pushi.e -9
pushenv [96]

:[95]
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
push.d 0.1
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.d 0.7
conv.d.v
push.d 0.7
conv.d.v
push.v builtin.y
pushi.e 10
add.i.v
push.v builtin.x
pushi.e 10
add.i.v
pushi.e 0
conv.i.v
pushref.i 16777369
call.i draw_sprite_ext(argc=9)
popz.v

:[96]
popenv [95]
pushref.i 96
pushi.e -9
pushenv [98]

:[97]
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
push.d 0.1
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.d 0.7
conv.d.v
push.d 0.7
conv.d.v
push.v builtin.y
pushi.e 10
add.i.v
push.v builtin.x
pushi.e 10
add.i.v
pushi.e 0
conv.i.v
pushref.i 16777369
call.i draw_sprite_ext(argc=9)
popz.v

:[98]
popenv [97]
pushref.i 77
pushi.e -9
pushenv [100]

:[99]
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
push.d 0.1
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.d 0.4
conv.d.v
push.d 0.4
conv.d.v
push.v builtin.y
pushi.e 6
add.i.v
push.v builtin.x
pushi.e 4
add.i.v
pushi.e 0
conv.i.v
pushref.i 16777369
call.i draw_sprite_ext(argc=9)
popz.v

:[100]
popenv [99]
pushref.i 120
pushi.e -9
pushenv [104]

:[101]
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
push.v builtin.image_index
pushi.e 4
cmp.i.v GTE
bf [103]

:[102]
push.d 0.1
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.d 0.2
conv.d.v
push.d 0.2
conv.d.v
push.v builtin.y
push.v builtin.x
pushi.e 0
conv.i.v
pushref.i 16777369
call.i draw_sprite_ext(argc=9)
popz.v
b [104]

:[103]
push.d 0.1
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.d 0.4
conv.d.v
push.d 0.4
conv.d.v
push.v builtin.y
push.v builtin.x
pushi.e 0
conv.i.v
pushref.i 16777369
call.i draw_sprite_ext(argc=9)
popz.v

:[104]
popenv [101]
pushref.i 131
pushi.e -9
pushenv [106]

:[105]
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
push.d 0.1
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.d 0.7
conv.d.v
push.d 0.7
conv.d.v
push.v builtin.y
pushi.e 5
add.i.v
push.v builtin.x
pushi.e 6
add.i.v
pushi.e 0
conv.i.v
pushref.i 16777369
call.i draw_sprite_ext(argc=9)
popz.v

:[106]
popenv [105]
pushref.i 142
pushi.e -9
pushenv [112]

:[107]
push.v builtin.visible
conv.v.b
bf [109]

:[108]
push.v builtin.sprite_index
pushref.i 16777224
cmp.v.v EQ
b [110]

:[109]
push.e 0

:[110]
bf [112]

:[111]
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
push.d 0.1
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.d 0.4
conv.d.v
push.d 0.4
conv.d.v
push.v builtin.y
pushi.e 3
add.i.v
push.v builtin.x
pushi.e 7
add.i.v
pushi.e 0
conv.i.v
pushref.i 16777369
call.i draw_sprite_ext(argc=9)
popz.v

:[112]
popenv [107]
pushref.i 62
pushi.e -9
pushenv [114]

:[113]
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
push.d 0.1
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.d 0.4
conv.d.v
push.d 0.4
conv.d.v
push.v builtin.y
pushi.e 3
add.i.v
push.v builtin.x
pushi.e 6
add.i.v
pushi.e 0
conv.i.v
pushref.i 16777369
call.i draw_sprite_ext(argc=9)
popz.v

:[114]
popenv [113]
pushref.i 102
pushi.e -9
pushenv [116]

:[115]
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
push.d 0.1
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.y
pushi.e 12
sub.i.v
push.v builtin.x
pushi.e 0
conv.i.v
pushref.i 16777369
call.i draw_sprite_ext(argc=9)
popz.v

:[116]
popenv [115]
pushref.i 85
pushi.e -9
pushenv [118]

:[117]
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
push.d 0.1
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.d 0.4
conv.d.v
push.d 0.4
conv.d.v
push.v builtin.y
pushi.e 3
add.i.v
push.v builtin.x
pushi.e 3
add.i.v
pushi.e 0
conv.i.v
pushref.i 16777369
call.i draw_sprite_ext(argc=9)
popz.v

:[118]
popenv [117]
pushref.i 63
pushi.e -9
pushenv [120]

:[119]
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
push.d 0.1
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.d 0.4
conv.d.v
push.d 0.4
conv.d.v
push.v builtin.y
pushi.e 4
add.i.v
push.v builtin.x
pushi.e 6
add.i.v
pushi.e 0
conv.i.v
pushref.i 16777369
call.i draw_sprite_ext(argc=9)
popz.v

:[120]
popenv [119]
pushref.i 68
pushi.e -9
pushenv [122]

:[121]
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
push.d 0.1
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.y
push.v builtin.x
pushi.e 0
conv.i.v
pushref.i 16777369
call.i draw_sprite_ext(argc=9)
popz.v

:[122]
popenv [121]
pushref.i 135
pushi.e -9
pushenv [125]

:[123]
push.v builtin.turn
conv.v.b
bf [125]

:[124]
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
push.d 0.1
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.y
pushi.e 10
add.i.v
push.v builtin.x
pushi.e 16
add.i.v
pushi.e 0
conv.i.v
pushref.i 16777369
call.i draw_sprite_ext(argc=9)
popz.v

:[125]
popenv [123]
pushref.i 100
pushi.e -9
pushenv [127]

:[126]
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
push.d 0.1
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.y
push.v builtin.x
pushi.e 0
conv.i.v
pushref.i 16777369
call.i draw_sprite_ext(argc=9)
popz.v

:[127]
popenv [126]
pushref.i 99
pushi.e -9
pushenv [129]

:[128]
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
push.d 0.1
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.y
pushi.e 8
sub.i.v
push.v builtin.x
pushi.e 0
conv.i.v
pushref.i 16777369
call.i draw_sprite_ext(argc=9)
popz.v

:[129]
popenv [128]
pushi.e 1
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
call.i surface_reset_target(argc=0)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.light_surf
call.i draw_surface_ext(argc=8)
popz.v
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
b [end]

:[130]
pushbltn.v builtin.room_height
pushbltn.v builtin.room_width
call.i surface_create(argc=2)
pop.v.v builtin.light_surf

:[end]