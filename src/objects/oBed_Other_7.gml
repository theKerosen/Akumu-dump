if (entrando == true)
{
    image_speed = 0;
    image_index = 8;
    deitado = true;
    entrando = false;
}

if (saindo == true)
{
    instance_destroy(oPlayer);
    image_speed = 0;
    sprite_index = sBed;
    instance_create_layer(80, 94, "Instances", oPlayer);
    oPlayer.face = 0;
    saindo = false;
}
