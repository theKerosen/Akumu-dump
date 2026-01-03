if (image_index == 1)
{
    if (sound_instance == -4 || !audio_is_playing(sound_instance))
        sound_instance = audio_play_sound(sndWater, 0, true);
}

if (room != rBasement12)
    exit;

if (global.sinkCorrect)
{
    with (oSink)
    {
        if (sink_id == 1)
        {
            image_index = 1;
            
            if (!audio_is_playing(sound_instance))
                sound_instance = audio_play_sound(sndWater, 0, true);
        }
        else
        {
            image_index = 0;
            
            if (audio_is_playing(sound_instance))
            {
                audio_stop_sound(sound_instance);
                sound_instance = -4;
            }
        }
    }
}
