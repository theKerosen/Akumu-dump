if (global.gamePaused == false)
{
    image_speed = 1.5;
    instance_destroy(oPlayer);
    sprite_index = sBedSleep;
    entrando = true;
}
