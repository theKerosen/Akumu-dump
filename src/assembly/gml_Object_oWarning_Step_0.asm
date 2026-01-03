:[0]
push.v builtin.activate
conv.v.b
bf [end]

:[1]
push.v builtin.image_alpha
push.v builtin.fadeSpeed
add.v.v
pop.v.v builtin.image_alpha

:[end]