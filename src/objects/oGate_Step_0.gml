if (canPlay == true)
{
    if (!audio_is_playing(sndGateClosed))
    {
        if (speed != 0)
            exit;
        
        oTextBox.hasAudio = true;
        OpenTextBox(myDialogue, myDialogue2);
        oPlayer.state = 1;
        state = 1;
        oTextBox.callback = [scrFinishCharacterReading, [oPlayer, -4]];
        canPlay = false;
    }
}
