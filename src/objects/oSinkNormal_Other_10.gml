if (image_index == 0)
{
    image_index = 1;
    
    if (!variable_instance_exists(id, "sound_instance") || !audio_is_playing(sound_instance))
        sound_instance = audio_play_sound(sndWater, 0, true);
}
else
{
    image_index = 0;
    
    if (sound_instance != -4 && audio_is_playing(sound_instance))
    {
        audio_stop_sound(sound_instance);
        sound_instance = -4;
    }
}
