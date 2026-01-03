if (image_index == 1)
{
    if (sound_instance == -4 || !audio_is_playing(sound_instance))
        sound_instance = audio_play_sound(sndWater, 0, true);
}
