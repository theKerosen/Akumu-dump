if (room != rBasement12 || global.allCorrect)
    exit;

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

var correct_sink_id = 1;
var all_good = true;

with (oSink)
{
    if (sink_id == correct_sink_id)
    {
        if (image_index != 1)
            all_good = false;
    }
    else if (image_index == 1)
    {
        all_good = false;
    }
}

if (all_good)
{
    if (!global.sinkCorrect)
        global.sinkCorrect = true;
}
else if (global.sinkCorrect)
{
    global.sinkCorrect = false;
}
