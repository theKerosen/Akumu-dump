if (locked)
{
    if (canPlay == true)
    {
        if (!audio_is_playing(sndGateClosed))
        {
            if (speed != 0)
                exit;
            
            OpenTextBox("It's locked.");
            oPlayer.state = 1;
            oTextBox.callback = [scrFinishCharacterReading, [oPlayer, -4]];
            canPlay = false;
        }
    }
}
else
{
    var action = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z"));
    
    if (inside && canPress && action && !global.chasing && !audio_is_playing(sndFootstepsMonster))
    {
        leaving = true;
        audio_stop_sound(sndBreath3);
        audio_play_sound(sndLockerLeave, 0, false);
        inside = false;
        canPress = false;
        enterImage = 10;
    }
    
    image_speed = 0;
    
    if (lockerClosing)
    {
        lockerAnim += animLockerSpeed;
        lockerAnim = min(lockerAnim, sprite_get_number(sprite_index) - 1);
        image_index = lockerAnim;
        
        if (lockerAnim >= (sprite_get_number(sprite_index) - 1))
        {
            lockerClosing = false;
            image_index = sprite_get_number(sprite_index) - 1;
        }
    }
    
    if (lockerOpening)
    {
        lockerAnim -= animLockerSpeed;
        lockerAnim = max(lockerAnim, 0);
        image_index = lockerAnim;
        
        if (lockerAnim <= 0)
        {
            lockerOpening = false;
            image_index = 0;
        }
    }
}

depth = -bbox_bottom;
