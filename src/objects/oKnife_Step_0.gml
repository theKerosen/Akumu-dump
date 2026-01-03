if (!audio_is_playing(sndCollect) && debounce == false)
{
    debounce = true;
    oTextBox.hasAudio = false;
    OpenTextBox("You found a knife.");
    oPlayer.state = 1;
    oTextBox.callback = [scrFinishCharacterReading, [oPlayer, -4]];
    instance_destroy();
}
