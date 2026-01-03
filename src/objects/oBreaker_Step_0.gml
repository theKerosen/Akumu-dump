if (!instance_exists(lightsOutPart1))
    off = false;

if (off)
{
    image_index = 0;
}
else
{
    image_index = 1;
    
    if (audio_is_playing(sndBasement))
        audio_stop_sound(sndBasement);
    
    if (!instance_exists(oDaisyBasement))
        instance_create_layer(135.5, 318, "Instances", oDaisyBasement);
}
