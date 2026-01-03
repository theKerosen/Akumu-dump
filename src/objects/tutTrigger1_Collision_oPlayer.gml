event_user(0);

if (oPlayer.state == 1)
    exit;

OpenTextBox("blablabla");
oPlayer.state = 1;
oTextBox.callback = [scrFinishCharacterReading, [oPlayer, -4]];
