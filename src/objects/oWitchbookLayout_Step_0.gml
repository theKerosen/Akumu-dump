var key_left = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
var key_right = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
var cancel = keyboard_check_pressed(vk_escape) || keyboard_check_pressed(ord("X"));
var confirm = keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter);

if (key_right && oPlayer.state == 5)
{
    if (page < global.maxPages)
    {
        page += 1;
        audio_play_sound(sndPagePass, 0, false);
    }
    else
    {
        audio_play_sound(sndWrong, 0, false);
    }
}

if (key_left && oPlayer.state == 5)
{
    if (page > 0)
    {
        page -= 1;
        audio_play_sound(sndPagePass, 0, false);
    }
    else
    {
        audio_play_sound(sndWrong, 0, false);
    }
}

if (cancel && oPlayer.state == 5)
{
    with (oNotPause)
    {
        Delay(100, function()
        {
            instance_destroy();
        });
    }
    
    audio_play_sound(sndBookClose, 0, false);
    instance_destroy();
    oPlayer.state = 0;
}

switch (page)
{
    case 1:
        if (confirm && oPlayer.state == 5)
        {
            OpenTextBox("You've taken the first step.", "I can show you the way forward, if you'll let me.", "Every path has its cost, but together we'll reach the truth.", "Look to the candles in the ritual room...", "they hold the last digit.");
            oPlayer.state = 1;
            oTextBox.callback = [scrFinishCharacterReading, [oPlayer, -4]];
        }
    
    case 2:
        if (confirm && oPlayer.state == 5)
        {
            OpenTextBox("teste2");
            oPlayer.state = 1;
            oTextBox.callback = [scrFinishCharacterReading, [oPlayer, -4]];
        }
        
        break;
    
    case 3:
        if (confirm && oPlayer.state == 5)
        {
            OpenTextBox("teste3");
            oPlayer.state = 1;
            oTextBox.callback = [scrFinishCharacterReading, [oPlayer, -4]];
        }
        
        break;
}
