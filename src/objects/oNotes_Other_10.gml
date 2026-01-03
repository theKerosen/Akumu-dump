if (speed != 0)
    exit;

OpenTextBox(inicialDialogue);
oPlayer.state = 1;
state = 1;
oTextBox.callback = [scrFinishCharacterReading, [oPlayer, oNotes]];
