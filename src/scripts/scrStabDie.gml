function scrStabDie()
{
    if (state == 4)
    {
        if (image_index >= 11)
        {
            if (_played == false)
            {
                _played = true;
                audio_play_sound(sndStab1, 1, 0);
            }
        }
        
        if (image_index >= 27)
        {
            with (oPlayer)
                itemequip = "";
            
            room_goto(rDeath);
            _played = false;
            x = -32;
            y = -16;
            state = 0;
            face = 3;
        }
    }
}
