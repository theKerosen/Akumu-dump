if (canPlay == true)
{
    if (!audio_is_playing(sndLock))
    {
        if (speed != 0)
            exit;
        
        oTextBox.textSide = 6;
        oTextBox.hasAudio = true;
        OpenTextBox(myDialogue1, myDialogue2);
        oPlayer.state = 1;
        state = 1;
        oTextBox.callback = [scrFinishCharacterReading, [oPlayer, -4]];
        canPlay = false;
    }
}

if (oPlayer.state != 1 && oTextBox.textSide == 6)
    oTextBox.textSide = 7;

if (!audio_is_playing(sndDoor) && doorOpening)
{
    var inst = instance_create_depth(0, 0, -9999999999999999, oWarp);
    inst.targetX = targetX;
    inst.targetY = targetY;
    inst.targetRoom = targetRoom;
    inst.targetFace = targetFace;
    image_speed = 0;
    image_index = 2;
    doorOpening = false;
}
