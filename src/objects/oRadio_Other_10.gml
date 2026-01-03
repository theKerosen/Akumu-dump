if (speed != 0)
    exit;

oTextBox.hasAudio = true;
oTextBox.Speaker = "";
OpenTextBox("It doesn't work.");
oPlayer.state = 1;
oTextBox.callback = [scrFinishCharacterReading, [oPlayer, -4]];
