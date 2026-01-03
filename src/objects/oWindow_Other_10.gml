if (speed != 0)
    exit;

oTextBox.hasAudio = true;
OpenTextBox(myDialogue);
oPlayer.state = 1;
state = 1;
oTextBox.callback = [scrFinishCharacterReading, [oPlayer, oWindow]];
