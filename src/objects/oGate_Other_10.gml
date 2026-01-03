if (lock != -4)
{
    audio_play_sound(sndGateClosed, 0, 0, 0.5);
    oPlayer.state = 5;
    canPlay = true;
    exit;
}

if (image_index != 1)
{
    image_index = 1;
    mask_index = sGate2;
    audio_play_sound(sndGate, 0, 0, 0.5);
}
