if (global.gamePaused == false)
{
    if (global.jmpsc1 == 0)
    {
        if (speed != 0)
            exit;
        
        instance_create_depth(x, y, 0, oNotPause);
        image_speed = 1.5;
        instance_destroy(oPlayer);
        sprite_index = sBedSleep;
        entrando = true;
        depth = 110;
    }
    else
    {
        if (speed != 0)
            exit;
        
        OpenTextBox("You're too scared to sleep.");
        oPlayer.state = 1;
        state = 1;
        oTextBox.callback = [scrFinishCharacterReading, [oPlayer, dBed]];
    }
}
