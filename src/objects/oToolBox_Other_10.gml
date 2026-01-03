if (itemId != -4)
{
    oTextBox.hasAudio = true;
    OpenTextBox("...");
    state = 1;
    oPlayer.state = 1;
    oTextBox.callback = [scrFinishCharacterReading, [oPlayer, oToolBox]];
}
else
{
    if (speed != 0)
        exit;
    
    oTextBox.hasAudio = true;
    OpenTextBox("I already have what I need.");
    oPlayer.state = 1;
    oTextBox.callback = [scrFinishCharacterReading, [oPlayer, -4]];
}
