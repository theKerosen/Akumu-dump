if (speed != 0)
    exit;

if (instance_exists(oPlayer))
{
    if (oPlayer.face != 1)
        exit;
}

if (itemId != -4)
{
    if (canDialogue)
    {
        oTextBox.hasAudio = true;
        OpenTextBox("There's a strange book here.", "Maybe I can use it for something.");
        state = 1;
        oPlayer.state = 1;
        oTextBox.callback = [scrFinishCharacterReading, [oPlayer, oBookshelfBig]];
    }
    else
    {
        if (speed != 0)
            exit;
        
        oTextBox.hasAudio = true;
        OpenTextBox(inicialDialogue);
        oPlayer.state = 1;
        oTextBox.callback = [scrFinishCharacterReading, [oPlayer, -4]];
    }
}
else
{
    if (speed != 0)
        exit;
    
    oTextBox.hasAudio = true;
    OpenTextBox(inicialDialogue);
    oPlayer.state = 1;
    oTextBox.callback = [scrFinishCharacterReading, [oPlayer, -4]];
}
