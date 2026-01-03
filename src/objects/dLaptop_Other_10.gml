if (image_index == 1)
{
    image_index = 0;
    audio_play_sound(sndCancel, 1, 0, 0.2);
}
else
{
    image_index = 1;
    audio_play_sound(sndSelect, 1, 0, 0.2);
}
