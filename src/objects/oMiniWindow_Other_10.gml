if (speed != 0)
    exit;

OpenTextBox("It's raining outside");
oPlayer.state = 1;
state = 1;
oTextBox.callback = [scrFinishCharacterReading, [oPlayer, oMiniWindow]];
