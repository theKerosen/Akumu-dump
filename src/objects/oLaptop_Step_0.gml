if (instance_exists(lightsOutPart1))
{
    if (lightsOutPart1.lightsOut)
    {
        canTurn = false;
        oTextBox.hasAudio = true;
        oTextBox.Speaker = "";
        mymessage = "I need to fix the lights first.";
        exit;
    }
    else
    {
        canTurn = true;
    }
}

mymessage = "Would you like to save your progress?";

if (state != 1)
{
    image_index = 0;
    exit;
}

image_index = 1;
