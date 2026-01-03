function scrFinishCharacterReadingEndDemo(arg0, arg1)
{
    arg0.state = 0;
    var t = instance_create_layer(64, 128, "Instances", oTriggerThunder);
    t.image_xscale = 4.5;
    t.image_yscale = 0.5;
    instance_destroy(oNotes);
}
