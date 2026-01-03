if (activate == true)
{
    if ((alarm0 == true && keyboard_check_pressed(ord("Z"))) || (alarm0 == true && keyboard_check_pressed(ord("X"))) || (alarm0 == true && keyboard_check_pressed(vk_enter)))
    {
        if (oTutorial.mirror == 0)
        {
            OpenTextBox("You barely can see anything on the mirror.");
            oPlayer.state = 1;
            oTextBox.callback = [scrFinishCharacterReading, [oPlayer, -4]];
            alarm0 = false;
            activate = false;
        }
        else if (oTutorial.mirror == 1)
        {
            OpenTextBox("The mirror shard fits perfectly. Do you want to place it?");
            oPlayer.state = 1;
            state = 1;
            oTextBox.callback = [scrFinishCharacterReading, [oPlayer, oMirror]];
            alarm0 = false;
            activate = false;
        }
    }
    
    if (alarm0 == true)
    {
        if (oTutorial.mirror == 2)
        {
            canTeleport = true;
            alarm0 = false;
            activate = false;
        }
    }
    
    if (oTutorial.mirror != 2)
        draw_sprite(sReflexo, 0, 0, 0);
    else
        draw_sprite(sReflexo, 1, 0, 0);
}

if (canTeleport)
{
    draw_rectangle_color(0, 0, 800, 600, c_black, c_black, c_black, c_black, false);
    
    if (alreadyPlayed == false)
    {
        alarm[2] = 300;
        alreadyPlayed = true;
    }
}
