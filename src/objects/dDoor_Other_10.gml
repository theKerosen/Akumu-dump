if (global.doorOpening == false && !instance_exists(oPauser) && global.gamePaused != true)
{
    image_speed = 1;
    audio_play_sound(sndDoor, 0, 0, 0.5);
    instance_create_layer(x, y, "Instances", oPauser);
    global.doorOpening = true;
}
