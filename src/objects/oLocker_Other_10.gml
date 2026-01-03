if (speed != 0)
    exit;

oTextBox.hasAudio = true;
OpenTextBox(myDialogue, myDialogue2, myDialogue3, myDialogue4, myDialogue5, myDialogue6, myDialogue7, myDialogue8, myDialogue9, myDialogue10);
oPlayer.state = 1;
state = 1;
oTextBox.callback = [scrFinishCharacterReading, [oPlayer, oLocker]];
