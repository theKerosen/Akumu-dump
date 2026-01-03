if (speed != 0)
    exit;

oTextBox.hasAudio = true;
OpenTextBox("Just some boxes.");
oPlayer.state = 1;
oTextBox.callback = [scrFinishCharacterReading, [oPlayer, -4]];
