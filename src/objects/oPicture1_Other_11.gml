if (speed != 0)
    exit;

global.current_code += "A";
OpenTextBox("You pressed the button.");
oPlayer.state = 1;
state = 1;
oTextBox.callback = [scrFinishCharacterReading, [oPlayer, oPicture1]];
