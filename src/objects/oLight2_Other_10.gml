if (!canTurn)
{
    if (speed != 0)
        exit;
    
    oTextBox.hasAudio = true;
    oTextBox.Speaker = "";
    OpenTextBox("It doesn't work.");
    oPlayer.state = 1;
    state = 1;
    oTextBox.callback = [scrFinishCharacterReading, [oPlayer, oLight2]];
}
else if (!light)
{
    audio_play_sound(sndClick, 0, false);
    light = true;
    image_index = 1;
}
else
{
    audio_play_sound(sndClick, 0, false);
    light = false;
    image_index = 0;
}
