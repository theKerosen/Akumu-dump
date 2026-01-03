if (speed != 0)
    exit;

OpenTextBox("Things i keep.");
oPlayer.state = 1;
state = 1;
oTextBox.callback = [scrFinishCharacterReading, [oPlayer, oLocker]];
