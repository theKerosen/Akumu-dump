if (speed != 0)
    exit;

OpenTextBox(myDialogue, myDialogue2, myDialogue3, myDialogue4, myDialogue5, myDialogue6, myDialogue7, myDialogue8, myDialogue9, myDialogue10);
oPlayer.state = 1;
state = 1;
oTextBox.callback = [normalCallback, [oPlayer, oNotes]];
