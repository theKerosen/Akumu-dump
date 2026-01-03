depth = -bbox_bottom;

if (image_index >= 25 && !play)
{
    if (!audio_is_playing(sndDripBlood))
    {
        play = true;
        audio_play_sound(sndDripBlood, 0, false);
    }
}
