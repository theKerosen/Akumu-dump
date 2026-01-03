oTextBox.hasAudio = true;
OpenTextBox("I'm hungry.");
oPlayer.state = 1;
oTextBox.callback = [scrFinishCharacterReading, [oPlayer, -4]];
