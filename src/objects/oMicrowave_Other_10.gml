oTextBox.hasAudio = true;
OpenTextBox(myDialogue);
oPlayer.state = 1;
oTextBox.callback = [scrFinishCharacterReading, [oPlayer, -4]];
