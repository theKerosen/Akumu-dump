var dist = distance_to_object(oPlayer);

if (dist > 30 && !fell && !audio_is_playing(sndFallLocker))
{
    image_index = 0;
}
else if (dist < 30 && !fell)
{
    fell = true;
    
    if (!audio_is_playing(sndFallLocker))
        audio_play_sound(sndFallLocker, 0, false);
}

depth = -bbox_bottom;
