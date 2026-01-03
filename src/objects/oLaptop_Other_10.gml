if (speed != 0)
    exit;

if (canTurn)
    audio_play_sound(sndSelect, 1, 0, 0.5);

OpenTextBox(mymessage);
oPlayer.state = 1;
state = 1;
oTextBox.callback = [scrFinishCharacterReading, [oPlayer, oLaptop]];
