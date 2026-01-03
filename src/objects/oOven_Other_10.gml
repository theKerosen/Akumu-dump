if (speed != 0)
    exit;

oTextBox.hasAudio = true;
OpenTextBox("Nothing to do with it.");
oPlayer.state = 1;
oTextBox.callback = [scrFinishCharacterReading, [oPlayer, -4]];
