if (speed != 0)
    exit;

OpenTextBox(myDialogue);
oPlayer.state = 1;
oTextBox.callback = [scrFinishCharacterReading, [oPlayer, -4]];
