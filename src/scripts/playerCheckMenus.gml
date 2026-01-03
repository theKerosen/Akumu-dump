function scrPlayerCheckMenus()
{
    if (keyboard_check_pressed(ord("C")) && !instance_exists(parMenu) && oPlayer.state == 0 && global.gamePaused != true && !instance_exists(oPauser) && !instance_exists(oWarp))
    {
        audio_play_sound(sndSelect, 0, false, 1, 0, 2);
        oInventoryBox.cursor = 0;
        oInventoryBox.active = true;
        oPlayer.state = 8;
    }
}
