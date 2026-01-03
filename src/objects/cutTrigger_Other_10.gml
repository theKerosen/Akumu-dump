OpenTextBox(myDialogue, myDialogue2, myDialogue3, myDialogue4, myDialogue5, myDialogue6, myDialogue7, myDialogue8, myDialogue9, myDialogue10);
oTextBox.hasAudio = true;
oTextBox.Speaker = "Dad";
oPlayer.state = 1;
oTextBox.callback = [myCallback, [oPlayer, -4]];
