:[0]
b [8]

> gml_Script_tb_rgb (locals=0, argc=3)
:[1]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushbltn.v builtin.undefined
pop.v.v builtin.argument2

:[3]
push.v arg.argument2
call.i is_undefined(argc=1)
conv.v.b
bf [5]

:[4]
push.v arg.argument0
call.i color_get_blue(argc=1)
push.v arg.argument1
call.i color_get_blue(argc=1)
sub.v.v
call.i abs(argc=1)
push.v arg.argument0
call.i color_get_green(argc=1)
push.v arg.argument1
call.i color_get_green(argc=1)
sub.v.v
call.i abs(argc=1)
push.v arg.argument0
call.i color_get_red(argc=1)
push.v arg.argument1
call.i color_get_red(argc=1)
sub.v.v
call.i abs(argc=1)
call.i max(argc=3)
b [6]

:[5]
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
call.i merge_colour(argc=3)

:[6]
ret.v

:[7]
exit.i

:[8]
push.i [function]gml_Script_tb_rgb
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.tb_rgb
popz.v
b [20]

> gml_Script_tb_hsv (locals=8, argc=3)
:[9]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [11]

:[10]
pushbltn.v builtin.undefined
pop.v.v builtin.argument2

:[11]
push.v arg.argument0
call.i color_get_hue(argc=1)
pushi.e 360
mul.i.v
pushi.e 256
conv.i.d
div.d.v
call.i floor(argc=1)
pop.v.v local._hd0
push.v arg.argument1
call.i color_get_hue(argc=1)
pushi.e 360
mul.i.v
pushi.e 256
conv.i.d
div.d.v
call.i floor(argc=1)
pop.v.v local._hd1
push.v arg.argument0
call.i color_get_saturation(argc=1)
pop.v.v local._s0
push.v arg.argument1
call.i color_get_saturation(argc=1)
pop.v.v local._s1
push.v arg.argument0
call.i color_get_value(argc=1)
pop.v.v local._v0
push.v arg.argument1
call.i color_get_value(argc=1)
pop.v.v local._v1
pushloc.v local._hd0
pushloc.v local._hd1
call.i angle_difference(argc=2)
pop.v.v local._ad
push.v arg.argument2
call.i is_undefined(argc=1)
conv.v.b
bf [13]

:[12]
pushloc.v local._v1
pushloc.v local._v0
sub.v.v
call.i abs(argc=1)
pushloc.v local._s1
pushloc.v local._s0
sub.v.v
call.i abs(argc=1)
pushloc.v local._ad
pushi.e 256
mul.i.v
pushi.e 360
conv.i.d
div.d.v
call.i ceil(argc=1)
call.i abs(argc=1)
call.i max(argc=3)
ret.v

:[13]
pushloc.v local._hd0
pushloc.v local._ad
push.v arg.argument2
mul.v.v
add.v.v
pop.v.v local._na
push.v arg.argument2
pushloc.v local._v1
pushloc.v local._v0
call.i lerp(argc=3)
call.i round(argc=1)
push.v arg.argument2
pushloc.v local._s1
pushloc.v local._s0
call.i lerp(argc=3)
call.i round(argc=1)
pushloc.v local._na
pushi.e 0
cmp.i.v LT
bf [15]

:[14]
pushloc.v local._na
pushi.e 360
add.i.v
b [18]

:[15]
pushloc.v local._na
pushi.e 360
cmp.i.v GTE
bf [17]

:[16]
pushloc.v local._na
pushi.e 360
sub.i.v
b [18]

:[17]
pushloc.v local._na

:[18]
pushi.e 256
mul.i.v
pushi.e 360
conv.i.d
div.d.v
call.i round(argc=1)
call.i make_color_hsv(argc=3)
ret.v

:[19]
exit.i

:[20]
push.i [function]gml_Script_tb_hsv
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.tb_hsv
popz.v
b [32]

> gml_Script_tb_angle (locals=2, argc=3)
:[21]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [23]

:[22]
pushbltn.v builtin.undefined
pop.v.v builtin.argument2

:[23]
push.v arg.argument0
push.v arg.argument1
call.i angle_difference(argc=2)
pop.v.v local._ad
push.v arg.argument2
call.i is_undefined(argc=1)
conv.v.b
bf [25]

:[24]
pushloc.v local._ad
call.i abs(argc=1)
ret.v

:[25]
push.v arg.argument0
pushloc.v local._ad
push.v arg.argument2
mul.v.v
add.v.v
pop.v.v local._na
pushloc.v local._na
pushi.e 0
cmp.i.v LT
bf [27]

:[26]
pushloc.v local._na
pushi.e 360
add.i.v
b [30]

:[27]
pushloc.v local._na
pushi.e 360
cmp.i.v GTE
bf [29]

:[28]
pushloc.v local._na
pushi.e 360
sub.i.v
b [30]

:[29]
pushloc.v local._na

:[30]
ret.v

:[31]
exit.i

:[32]
push.i [function]gml_Script_tb_angle
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.tb_angle
popz.v
b [45]

> gml_Script_tb_vector (locals=4, argc=3)
:[33]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [35]

:[34]
pushbltn.v builtin.undefined
pop.v.v builtin.argument2

:[35]
push.v arg.argument0
call.i array_length(argc=1)
pop.v.v local._vdim
push.v arg.argument2
call.i is_undefined(argc=1)
conv.v.b
bf [40]

:[36]
pushi.e 0
pop.v.i local._vsum
pushloc.v local._vdim
pushi.e 1
sub.i.v
pop.v.v local.i

:[37]
pushloc.v local.i
pushi.e 0
cmp.i.v GTE
bf [39]

:[38]
push.v local._vsum
pushi.e -15
pushloc.v local.i
conv.v.i
push.v [array]self.argument0
pushi.e -15
pushloc.v local.i
conv.v.i
push.v [array]self.argument1
sub.v.v
call.i sqr(argc=1)
add.v.v
pop.v.v local._vsum
push.v local.i
push.e 1
sub.i.v
pop.v.v local.i
b [37]

:[39]
pushloc.v local._vsum
call.i sqrt(argc=1)
ret.v

:[40]
push.i 8126464
setowner.e
pushloc.v local._vdim
call.i array_create(argc=1)
pop.v.v local._vout
pushloc.v local._vdim
pushi.e 1
sub.i.v
pop.v.v local.i

:[41]
pushloc.v local.i
pushi.e 0
cmp.i.v GTE
bf [43]

:[42]
push.i 8126458
setowner.e
push.v arg.argument2
pushi.e -15
pushloc.v local.i
conv.v.i
push.v [array]self.argument1
pushi.e -15
pushloc.v local.i
conv.v.i
push.v [array]self.argument0
call.i lerp(argc=3)
pushi.e -7
pushloc.v local.i
conv.v.i
pop.v.v [array]self._vout
push.v local.i
push.e 1
sub.i.v
pop.v.v local.i
b [41]

:[43]
pushloc.v local._vout
ret.v

:[44]
exit.i

:[45]
push.i [function]gml_Script_tb_vector
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.tb_vector
popz.v

:[end]