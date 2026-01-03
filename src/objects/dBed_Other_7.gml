if (entrando == true)
{
    alarm[0] = 200;
    image_speed = 0;
    image_index = 8;
    deitado = true;
    instance_create_layer(-16, 0, "Instances", oPlayer);
    instance_create_depth(x, y, -999999, oTimer);
    oTimer.myTime = 3;
    entrando = false;
}

if (saindo == true)
{
    instance_destroy(oPlayer);
    image_speed = 0;
    sprite_index = sBed;
    instance_create_layer(80, 94, "Instances", oPlayer);
    oPlayer.face = 0;
    instance_destroy(oNotPause);
    saindo = false;
}
