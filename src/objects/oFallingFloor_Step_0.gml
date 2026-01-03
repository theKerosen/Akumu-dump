if (place_meeting(x, y, oPlayer) && global.lightsOut == 0 && deb == false)
{
    deb = true;
    image_index = 1;
    audio_play_sound(sndCrack1, 0, false);
}

if (place_meeting(x, y, oPlayer) && global.lightsOut == 1 && deb2 == false)
{
    deb2 = true;
    image_index = 2;
    audio_play_sound(sndCrack2, 0, false);
}

if (place_meeting(x, y, oPlayer) && global.lightsOut == 1 && oDaisyBasement.canRun == true)
{
    instance_destroy(oDaisyBasement);
    oPlayer.state = 5;
    canDraw = true;
    audio_play_sound(sndCrash, 0, false);
    Delay(2000, function()
    {
        audio_play_sound(sndFall, 0, false);
        Delay(2000, function()
        {
            played = true;
        });
    });
}

if (played == true)
{
    played = false;
    instance_destroy(oPlayer);
    instance_create_depth(0, 0, -999999999, oTransition);
    oTransition.targetRoom = rBasement10;
    removeItem(6, "candle");
    removeItem(5, "healpizza");
}
