if (!audio_is_playing(sndKey) && debounce == false)
{
    debounce = true;
    OpenTextBox(myDialogue);
    oPlayer.state = 1;
    oTextBox.callback = [scrFinishCharacterReading, [oPlayer, -4]];
    instance_destroy();
}
