if (speed != 0)
    exit;

oTextBox.hasAudio = true;
oTextBox.Speaker = "";
OpenTextBox("Our family.", "My sister, my father... and me.");
oPlayer.state = 1;
state = 1;
oTextBox.callback = [scrFinishCharacterReading, [oPlayer, self]];
