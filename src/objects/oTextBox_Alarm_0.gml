if (pages != -4 && textOnDisplay != pages[page])
{
    textOnDisplay += string_char_at(pages[page], string_length(textOnDisplay) + 1);
    alarm[0] = value;
    var acceptable = true;
    
    if (hasAudio)
    {
        for (var i = 1; i <= string_length(textOnDisplay); i++)
        {
            if (string_pos(string_char_at(textOnDisplay, i), "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_?.") == 0)
                acceptable = false;
            else
                acceptable = true;
        }
        
        if (acceptable == true && Speaker == "")
            audio_play_sound(choose(sndD1, sndD2, sndD3, sndD4, sndD5), 1, false, 1.5);
        
        if (acceptable == true && Speaker == "Dad")
            audio_play_sound(choose(sndM1, sndM2, sndM3, sndM4, sndM5), 1, false, 1.5);
    }
    
    for (var i = 1; i <= string_length(textOnDisplay); i++)
    {
        if (string_pos(string_char_at(textOnDisplay, i), ",.") == 0)
        {
            pause = false;
            value = 5;
        }
        else if (textOnDisplay != pages[page])
        {
            pause = true;
            value = 20;
        }
    }
}
