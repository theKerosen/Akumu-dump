if (speed != 0)
    exit;

OpenTextBox("...");
oPlayer.state = 1;
state = 1;
oTextBox.callback = [scrFinishCharacterReading, [oPlayer, dLocker]];
