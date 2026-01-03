if (canPlay == true)
{
    if (!audio_is_playing(sndLock))
    {
        if (speed != 0)
            exit;
        
        oTextBox.hasAudio = true;
        OpenTextBox(myDialogue);
        oPlayer.state = 1;
        state = 1;
        oTextBox.callback = [scrFinishCharacterReading, [oPlayer, oDoorL]];
        canPlay = false;
    }
}
