room_goto(rBedroom);
instance_create_layer(x, y, "Instances", lightsOutPart1);
instance_destroy(oPlayer);

if (instance_exists(oTutorial))
    instance_destroy(oTutorial);
