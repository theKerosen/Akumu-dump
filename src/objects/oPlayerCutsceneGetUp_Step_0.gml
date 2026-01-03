if (canGetUp)
{
    canGetUp = false;
    Delay(1000, function()
    {
        audio_play_sound(sndGetUp, 0, false);
        oPlayer.x = x;
        oPlayer.state = 0;
        oPlayer.y = y;
        instance_destroy();
    });
}
