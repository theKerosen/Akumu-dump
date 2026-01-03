:[0]
b [2]

> gml_Script_GMTwerkSelector (locals=0, argc=0)
:[1]
call.i @@SetStatic@@(argc=0)
exit.i

:[2]
push.i [function]gml_Script_GMTwerkSelector
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.GMTwerkSelector
popz.v
b [15]

> gml_Script_GlobalVarSelector (locals=0, argc=1)
:[3]
call.i gml_Script_GMTwerkSelector(argc=0)
push.i [function]gml_Script_GMTwerkSelector
conv.i.v
call.i @@CopyStatic@@(argc=1)
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [14]

:[4]
setstatic.e
b [7]

> gml_Script_exists@anon@442@GlobalVarSelector@GMTwerk_selectors (locals=0, argc=0)
:[5]
push.v builtin.name
call.i variable_global_exists(argc=1)
ret.v

:[6]
exit.i

:[7]
push.i [function]gml_Script_exists@anon@442@GlobalVarSelector@GMTwerk_selectors
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.exists
b [10]

> gml_Script_get@anon@612@GlobalVarSelector@GMTwerk_selectors (locals=0, argc=0)
:[8]
push.v builtin.name
call.i variable_global_get(argc=1)
ret.v

:[9]
exit.i

:[10]
push.i [function]gml_Script_get@anon@612@GlobalVarSelector@GMTwerk_selectors
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get
b [13]

> gml_Script_set@anon@857@GlobalVarSelector@GMTwerk_selectors (locals=0, argc=1)
:[11]
push.v arg.argument0
push.v builtin.name
call.i variable_global_set(argc=2)
popz.v
call.i @@This@@(argc=0)
ret.v

:[12]
exit.i

:[13]
push.i [function]gml_Script_set@anon@857@GlobalVarSelector@GMTwerk_selectors
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.set

:[14]
push.v arg.argument0
pop.v.v self.name
exit.i

:[15]
push.i [function]gml_Script_GlobalVarSelector
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.GlobalVarSelector
popz.v
b [18]

> gml_Script_GlobalVar (locals=0, argc=1)
:[16]
push.v arg.argument0
push.i [function]gml_Script_GlobalVarSelector
conv.i.v
call.i @@NewGMLObject@@(argc=2)
ret.v

:[17]
exit.i

:[18]
push.i [function]gml_Script_GlobalVar
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.GlobalVar
popz.v
b [42]

> gml_Script_GlobalVecSelector (locals=0, argc=1)
:[19]
call.i gml_Script_GMTwerkSelector(argc=0)
push.i [function]gml_Script_GMTwerkSelector
conv.i.v
call.i @@CopyStatic@@(argc=1)
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [41]

:[20]
setstatic.e
b [28]

> gml_Script_exists@anon@1651@GlobalVecSelector@GMTwerk_selectors (locals=1, argc=0)
:[21]
push.v builtin.dim
pushi.e 1
sub.i.v
pop.v.v local.i

:[22]
pushloc.v local.i
pushi.e 0
cmp.i.v GTE
bf [26]

:[23]
pushi.e -6
pushloc.v local.i
conv.v.i
push.v [array]self.names
call.i variable_global_exists(argc=1)
conv.v.b
not.b
bf [25]

:[24]
pushi.e 0
conv.b.v
ret.v

:[25]
push.v local.i
push.e 1
sub.i.v
pop.v.v local.i
b [22]

:[26]
pushi.e 1
conv.b.v
ret.v

:[27]
exit.i

:[28]
push.i [function]gml_Script_exists@anon@1651@GlobalVecSelector@GMTwerk_selectors
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.exists
b [34]

> gml_Script_get@anon@1901@GlobalVecSelector@GMTwerk_selectors (locals=2, argc=0)
:[29]
push.i 4456448
setowner.e
push.v builtin.dim
call.i array_create(argc=1)
pop.v.v local.v
push.v builtin.dim
pushi.e 1
sub.i.v
pop.v.v local.i

:[30]
pushloc.v local.i
pushi.e 0
cmp.i.v GTE
bf [32]

:[31]
push.i 4456442
setowner.e
pushi.e -6
pushloc.v local.i
conv.v.i
push.v [array]self.names
call.i variable_global_get(argc=1)
pushi.e -7
pushloc.v local.i
conv.v.i
pop.v.v [array]self.v
push.v local.i
push.e 1
sub.i.v
pop.v.v local.i
b [30]

:[32]
pushloc.v local.v
ret.v

:[33]
exit.i

:[34]
push.i [function]gml_Script_get@anon@1901@GlobalVecSelector@GMTwerk_selectors
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get
b [40]

> gml_Script_set@anon@2236@GlobalVecSelector@GMTwerk_selectors (locals=1, argc=1)
:[35]
push.v builtin.dim
pushi.e 1
sub.i.v
pop.v.v local.i

:[36]
pushloc.v local.i
pushi.e 0
cmp.i.v GTE
bf [38]

:[37]
pushi.e -15
pushloc.v local.i
conv.v.i
push.v [array]self.argument0
pushi.e -6
pushloc.v local.i
conv.v.i
push.v [array]self.names
call.i variable_global_set(argc=2)
popz.v
push.v local.i
push.e 1
sub.i.v
pop.v.v local.i
b [36]

:[38]
call.i @@This@@(argc=0)
ret.v

:[39]
exit.i

:[40]
push.i [function]gml_Script_set@anon@2236@GlobalVecSelector@GMTwerk_selectors
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.set

:[41]
push.v arg.argument0
pop.v.v self.names
push.v arg.argument0
call.i array_length(argc=1)
pop.v.v builtin.dim
exit.i

:[42]
push.i [function]gml_Script_GlobalVecSelector
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.GlobalVecSelector
popz.v
b [45]

> gml_Script_GlobalVec (locals=0, argc=1)
:[43]
push.v arg.argument0
push.i [function]gml_Script_GlobalVecSelector
conv.i.v
call.i @@NewGMLObject@@(argc=2)
ret.v

:[44]
exit.i

:[45]
push.i [function]gml_Script_GlobalVec
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.GlobalVec
popz.v
b [61]

> gml_Script_InstanceVarSelector (locals=0, argc=2)
:[46]
call.i gml_Script_GMTwerkSelector(argc=0)
push.i [function]gml_Script_GMTwerkSelector
conv.i.v
call.i @@CopyStatic@@(argc=1)
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [60]

:[47]
setstatic.e
b [53]

> gml_Script_exists@anon@3149@InstanceVarSelector@GMTwerk_selectors (locals=0, argc=0)
:[48]
push.v builtin.inst
call.i instance_exists(argc=1)
conv.v.b
bf [50]

:[49]
push.v builtin.name
push.v builtin.inst
call.i variable_instance_exists(argc=2)
conv.v.b
b [51]

:[50]
push.e 0

:[51]
conv.b.v
ret.v

:[52]
exit.i

:[53]
push.i [function]gml_Script_exists@anon@3149@InstanceVarSelector@GMTwerk_selectors
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.exists
b [56]

> gml_Script_get@anon@3354@InstanceVarSelector@GMTwerk_selectors (locals=0, argc=0)
:[54]
push.v builtin.name
push.v builtin.inst
call.i variable_instance_get(argc=2)
ret.v

:[55]
exit.i

:[56]
push.i [function]gml_Script_get@anon@3354@InstanceVarSelector@GMTwerk_selectors
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get
b [59]

> gml_Script_set@anon@3611@InstanceVarSelector@GMTwerk_selectors (locals=0, argc=1)
:[57]
push.v arg.argument0
push.v builtin.name
push.v builtin.inst
call.i variable_instance_set(argc=3)
popz.v
call.i @@This@@(argc=0)
ret.v

:[58]
exit.i

:[59]
push.i [function]gml_Script_set@anon@3611@InstanceVarSelector@GMTwerk_selectors
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.set

:[60]
push.v arg.argument0
pop.v.v self.name
push.v arg.argument1
pop.v.v self.inst
exit.i

:[61]
push.i [function]gml_Script_InstanceVarSelector
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.InstanceVarSelector
popz.v
b [66]

> gml_Script_InstanceVar (locals=0, argc=2)
:[62]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [64]

:[63]
push.v builtin.id
pop.v.v builtin.argument1

:[64]
push.v arg.argument1
push.v arg.argument0
push.i [function]gml_Script_InstanceVarSelector
conv.i.v
call.i @@NewGMLObject@@(argc=3)
ret.v

:[65]
exit.i

:[66]
push.i [function]gml_Script_InstanceVar
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.InstanceVar
popz.v
b [90]

> gml_Script_InstanceVecSelector (locals=0, argc=2)
:[67]
call.i gml_Script_GMTwerkSelector(argc=0)
push.i [function]gml_Script_GMTwerkSelector
conv.i.v
call.i @@CopyStatic@@(argc=1)
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [89]

:[68]
setstatic.e
b [76]

> gml_Script_exists@anon@4670@InstanceVecSelector@GMTwerk_selectors (locals=1, argc=0)
:[69]
push.v builtin.dim
pushi.e 1
sub.i.v
pop.v.v local.i

:[70]
pushloc.v local.i
pushi.e 0
cmp.i.v GTE
bf [74]

:[71]
pushi.e -6
pushloc.v local.i
conv.v.i
push.v [array]self.names
push.v builtin.inst
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [73]

:[72]
pushi.e 0
conv.b.v
ret.v

:[73]
push.v local.i
push.e 1
sub.i.v
pop.v.v local.i
b [70]

:[74]
pushi.e 1
conv.b.v
ret.v

:[75]
exit.i

:[76]
push.i [function]gml_Script_exists@anon@4670@InstanceVecSelector@GMTwerk_selectors
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.exists
b [82]

> gml_Script_get@anon@4930@InstanceVecSelector@GMTwerk_selectors (locals=2, argc=0)
:[77]
push.i 5111808
setowner.e
push.v builtin.dim
call.i array_create(argc=1)
pop.v.v local.v
push.v builtin.dim
pushi.e 1
sub.i.v
pop.v.v local.i

:[78]
pushloc.v local.i
pushi.e 0
cmp.i.v GTE
bf [80]

:[79]
push.i 5111802
setowner.e
pushi.e -6
pushloc.v local.i
conv.v.i
push.v [array]self.names
push.v builtin.inst
call.i variable_instance_get(argc=2)
pushi.e -7
pushloc.v local.i
conv.v.i
pop.v.v [array]self.v
push.v local.i
push.e 1
sub.i.v
pop.v.v local.i
b [78]

:[80]
pushloc.v local.v
ret.v

:[81]
exit.i

:[82]
push.i [function]gml_Script_get@anon@4930@InstanceVecSelector@GMTwerk_selectors
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get
b [88]

> gml_Script_set@anon@5277@InstanceVecSelector@GMTwerk_selectors (locals=1, argc=1)
:[83]
push.v builtin.dim
pushi.e 1
sub.i.v
pop.v.v local.i

:[84]
pushloc.v local.i
pushi.e 0
cmp.i.v GTE
bf [86]

:[85]
pushi.e -15
pushloc.v local.i
conv.v.i
push.v [array]self.argument0
pushi.e -6
pushloc.v local.i
conv.v.i
push.v [array]self.names
push.v builtin.inst
call.i variable_instance_set(argc=3)
popz.v
push.v local.i
push.e 1
sub.i.v
pop.v.v local.i
b [84]

:[86]
call.i @@This@@(argc=0)
ret.v

:[87]
exit.i

:[88]
push.i [function]gml_Script_set@anon@5277@InstanceVecSelector@GMTwerk_selectors
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.set

:[89]
push.v arg.argument0
pop.v.v self.names
push.v arg.argument0
call.i array_length(argc=1)
pop.v.v builtin.dim
push.v arg.argument1
pop.v.v self.inst
exit.i

:[90]
push.i [function]gml_Script_InstanceVecSelector
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.InstanceVecSelector
popz.v
b [95]

> gml_Script_InstanceVec (locals=0, argc=2)
:[91]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [93]

:[92]
push.v builtin.id
pop.v.v builtin.argument1

:[93]
push.v arg.argument1
push.v arg.argument0
push.i [function]gml_Script_InstanceVecSelector
conv.i.v
call.i @@NewGMLObject@@(argc=3)
ret.v

:[94]
exit.i

:[95]
push.i [function]gml_Script_InstanceVec
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.InstanceVec
popz.v
b [111]

> gml_Script_StructVarSelector (locals=0, argc=2)
:[96]
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [110]

:[97]
setstatic.e
b [103]

> gml_Script_exists@anon@6296@StructVarSelector@GMTwerk_selectors (locals=0, argc=0)
:[98]
push.v builtin.strc
call.i is_struct(argc=1)
conv.v.b
bf [100]

:[99]
push.v builtin.name
push.v builtin.strc
call.i variable_struct_exists(argc=2)
conv.v.b
b [101]

:[100]
push.e 0

:[101]
conv.b.v
ret.v

:[102]
exit.i

:[103]
push.i [function]gml_Script_exists@anon@6296@StructVarSelector@GMTwerk_selectors
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.exists
b [106]

> gml_Script_get@anon@6491@StructVarSelector@GMTwerk_selectors (locals=0, argc=0)
:[104]
push.v builtin.name
push.v builtin.strc
call.i variable_struct_get(argc=2)
ret.v

:[105]
exit.i

:[106]
push.i [function]gml_Script_get@anon@6491@StructVarSelector@GMTwerk_selectors
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get
b [109]

> gml_Script_set@anon@6742@StructVarSelector@GMTwerk_selectors (locals=0, argc=1)
:[107]
push.v arg.argument0
push.v builtin.name
push.v builtin.strc
call.i variable_struct_set(argc=3)
popz.v
call.i @@This@@(argc=0)
ret.v

:[108]
exit.i

:[109]
push.i [function]gml_Script_set@anon@6742@StructVarSelector@GMTwerk_selectors
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.set

:[110]
push.v arg.argument0
pop.v.v self.name
push.v arg.argument1
pop.v.v self.strc
exit.i

:[111]
push.i [function]gml_Script_StructVarSelector
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.StructVarSelector
popz.v
b [114]

> gml_Script_StructVar (locals=0, argc=2)
:[112]
push.v arg.argument1
push.v arg.argument0
push.i [function]gml_Script_StructVarSelector
conv.i.v
call.i @@NewGMLObject@@(argc=3)
ret.v

:[113]
exit.i

:[114]
push.i [function]gml_Script_StructVar
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.StructVar
popz.v
b [140]

> gml_Script_StructVecSelector (locals=0, argc=2)
:[115]
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [139]

:[116]
setstatic.e
b [126]

> gml_Script_exists@anon@7661@StructVecSelector@GMTwerk_selectors (locals=1, argc=0)
:[117]
push.v builtin.strc
call.i is_struct(argc=1)
conv.v.b
not.b
bf [119]

:[118]
pushi.e 0
conv.b.v
ret.v

:[119]
push.v builtin.dim
pushi.e 1
sub.i.v
pop.v.v local.i

:[120]
pushloc.v local.i
pushi.e 0
cmp.i.v GTE
bf [124]

:[121]
pushi.e -6
pushloc.v local.i
conv.v.i
push.v [array]self.names
push.v builtin.strc
call.i variable_struct_exists(argc=2)
conv.v.b
not.b
bf [123]

:[122]
pushi.e 0
conv.b.v
ret.v

:[123]
push.v local.i
push.e 1
sub.i.v
pop.v.v local.i
b [120]

:[124]
pushi.e 1
conv.b.v
ret.v

:[125]
exit.i

:[126]
push.i [function]gml_Script_exists@anon@7661@StructVecSelector@GMTwerk_selectors
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.exists
b [132]

> gml_Script_get@anon@7955@StructVecSelector@GMTwerk_selectors (locals=2, argc=0)
:[127]
push.i 5767168
setowner.e
push.v builtin.dim
call.i array_create(argc=1)
pop.v.v local.v
push.v builtin.dim
pushi.e 1
sub.i.v
pop.v.v local.i

:[128]
pushloc.v local.i
pushi.e 0
cmp.i.v GTE
bf [130]

:[129]
push.i 5767162
setowner.e
pushi.e -6
pushloc.v local.i
conv.v.i
push.v [array]self.names
push.v builtin.strc
call.i variable_struct_get(argc=2)
pushi.e -7
pushloc.v local.i
conv.v.i
pop.v.v [array]self.v
push.v local.i
push.e 1
sub.i.v
pop.v.v local.i
b [128]

:[130]
pushloc.v local.v
ret.v

:[131]
exit.i

:[132]
push.i [function]gml_Script_get@anon@7955@StructVecSelector@GMTwerk_selectors
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get
b [138]

> gml_Script_set@anon@8296@StructVecSelector@GMTwerk_selectors (locals=1, argc=1)
:[133]
push.v builtin.dim
pushi.e 1
sub.i.v
pop.v.v local.i

:[134]
pushloc.v local.i
pushi.e 0
cmp.i.v GTE
bf [136]

:[135]
pushi.e -15
pushloc.v local.i
conv.v.i
push.v [array]self.argument0
pushi.e -6
pushloc.v local.i
conv.v.i
push.v [array]self.names
push.v builtin.strc
call.i variable_struct_set(argc=3)
popz.v
push.v local.i
push.e 1
sub.i.v
pop.v.v local.i
b [134]

:[136]
call.i @@This@@(argc=0)
ret.v

:[137]
exit.i

:[138]
push.i [function]gml_Script_set@anon@8296@StructVecSelector@GMTwerk_selectors
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.set

:[139]
push.v arg.argument0
pop.v.v self.names
push.v arg.argument0
call.i array_length(argc=1)
pop.v.v builtin.dim
push.v arg.argument1
pop.v.v self.strc
exit.i

:[140]
push.i [function]gml_Script_StructVecSelector
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.StructVecSelector
popz.v
b [143]

> gml_Script_StructVec (locals=0, argc=2)
:[141]
push.v arg.argument1
push.v arg.argument0
push.i [function]gml_Script_StructVecSelector
conv.i.v
call.i @@NewGMLObject@@(argc=3)
ret.v

:[142]
exit.i

:[143]
push.i [function]gml_Script_StructVec
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.StructVec
popz.v
b [159]

> gml_Script_ArrayVarSelector (locals=0, argc=2)
:[144]
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [158]

:[145]
setstatic.e
b [151]

> gml_Script_exists@anon@9246@ArrayVarSelector@GMTwerk_selectors (locals=0, argc=0)
:[146]
push.v builtin.array
call.i is_array(argc=1)
conv.v.b
bf [148]

:[147]
push.v builtin.array
call.i array_length(argc=1)
push.v builtin.index
cmp.v.v GT
b [149]

:[148]
push.e 0

:[149]
conv.b.v
ret.v

:[150]
exit.i

:[151]
push.i [function]gml_Script_exists@anon@9246@ArrayVarSelector@GMTwerk_selectors
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.exists
b [154]

> gml_Script_get@anon@9433@ArrayVarSelector@GMTwerk_selectors (locals=0, argc=0)
:[152]
pushi.e -6
push.v builtin.index
conv.v.i
push.v [array]self.array
ret.v

:[153]
exit.i

:[154]
push.i [function]gml_Script_get@anon@9433@ArrayVarSelector@GMTwerk_selectors
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get
b [157]

> gml_Script_set@anon@9660@ArrayVarSelector@GMTwerk_selectors (locals=0, argc=1)
:[155]
push.i 6160384
setowner.e
push.v arg.argument0
push.v builtin.index
push.v builtin.array
call.i array_set(argc=3)
popz.v
call.i @@This@@(argc=0)
ret.v

:[156]
exit.i

:[157]
push.i [function]gml_Script_set@anon@9660@ArrayVarSelector@GMTwerk_selectors
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.set

:[158]
push.v arg.argument0
pop.v.v self.index
push.v arg.argument1
pop.v.v self.array
exit.i

:[159]
push.i [function]gml_Script_ArrayVarSelector
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.ArrayVarSelector
popz.v
b [162]

> gml_Script_ArrayVar (locals=0, argc=2)
:[160]
push.v arg.argument1
push.v arg.argument0
push.i [function]gml_Script_ArrayVarSelector
conv.i.v
call.i @@NewGMLObject@@(argc=3)
ret.v

:[161]
exit.i

:[162]
push.i [function]gml_Script_ArrayVar
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.ArrayVar
popz.v
b [175]

> gml_Script_DataUnitSelector (locals=0, argc=1)
:[163]
call.i gml_Script_GMTwerkSelector(argc=0)
push.i [function]gml_Script_GMTwerkSelector
conv.i.v
call.i @@CopyStatic@@(argc=1)
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [174]

:[164]
setstatic.e
b [167]

> gml_Script_exists@anon@10474@DataUnitSelector@GMTwerk_selectors (locals=0, argc=0)
:[165]
pushi.e 1
conv.b.v
ret.v

:[166]
exit.i

:[167]
push.i [function]gml_Script_exists@anon@10474@DataUnitSelector@GMTwerk_selectors
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.exists
b [170]

> gml_Script_get@anon@10619@DataUnitSelector@GMTwerk_selectors (locals=0, argc=0)
:[168]
push.v builtin.data
ret.v

:[169]
exit.i

:[170]
push.i [function]gml_Script_get@anon@10619@DataUnitSelector@GMTwerk_selectors
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get
b [173]

> gml_Script_set@anon@10841@DataUnitSelector@GMTwerk_selectors (locals=0, argc=1)
:[171]
push.v arg.argument0
pop.v.v builtin.data
call.i @@This@@(argc=0)
ret.v

:[172]
exit.i

:[173]
push.i [function]gml_Script_set@anon@10841@DataUnitSelector@GMTwerk_selectors
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.set

:[174]
push.v arg.argument0
pop.v.v self.data
exit.i

:[175]
push.i [function]gml_Script_DataUnitSelector
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.DataUnitSelector
popz.v
b [178]

> gml_Script_DataUnit (locals=0, argc=1)
:[176]
push.v arg.argument0
push.i [function]gml_Script_DataUnitSelector
conv.i.v
call.i @@NewGMLObject@@(argc=2)
ret.v

:[177]
exit.i

:[178]
push.i [function]gml_Script_DataUnit
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.DataUnit
popz.v

:[end]