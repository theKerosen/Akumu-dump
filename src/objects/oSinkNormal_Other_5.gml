if (sound_instance != -4 && audio_is_playing(sound_instance))
{
    audio_stop_sound(sound_instance);
    sound_instance = -4;
}
