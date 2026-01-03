if (itemId != -4)
{
    oTextBox.hasAudio = true;
    OpenTextBox("...", "There's something inside\nthe box.");
    state = 1;
    oPlayer.state = 1;
    oTextBox.callback = [scrFinishCharacterReading, [oPlayer, oBoxOpen]];
}
else
{
    if (speed != 0)
        exit;
    
    oTextBox.hasAudio = true;
    OpenTextBox("Nothing inside of it.");
    oPlayer.state = 1;
    oTextBox.callback = [scrFinishCharacterReading, [oPlayer, -4]];
}
