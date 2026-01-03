if (oPlayer.face != 1)
    exit;

if (instance_exists(lightsOutPart1))
{
    if (lightsOutPart1.lightsOut)
    {
        oTextBox.hasAudio = true;
        oTextBox.Speaker = "";
        OpenTextBox("It doesn't work.");
        state = 1;
        oPlayer.state = 1;
        oTextBox.callback = [scrFinishCharacterReading, [oPlayer, oTV]];
        exit;
    }
}

audio_play_sound(sndClick, 0, false);

if (!turn)
{
    turn = true;
    sprite_index = sTV_On;
    audio_play_sound(sndStatic, 0, true);
}
else
{
    turn = false;
    sprite_index = sTV;
    audio_stop_sound(sndStatic);
}
