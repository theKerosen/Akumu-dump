audio_play_sound(sndCrying, 0, false);
Delay(4000, function()
{
    room_goto(rBasement21);
    audio_stop_sound(sndCrying);
    audio_stop_sound(sndRain);
});
