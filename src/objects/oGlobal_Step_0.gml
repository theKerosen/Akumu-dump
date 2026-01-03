if (shake)
{
    shake_time -= 1;
    view_xport[0] = choose(-shake_magnitude, shake_magnitude);
    view_yport[0] = choose(-shake_magnitude, shake_magnitude);
    
    if (shake_time <= 0)
    {
        shake_magnitude -= shake_fade;
        
        if (shake_magnitude <= 0)
            shake = false;
    }
}

if (canCount)
{
    seconds += (delta_time * 0.000001);
    
    if (seconds >= 60)
    {
        seconds -= 60;
        minutes += 1;
    }
    
    if (minutes >= 60)
    {
        minutes -= 60;
        hours += 1;
    }
}

if (!global.gamePaused && instance_exists(oDaisy) && !global.isHiding && !instance_exists(oWarp))
{
    if (global.chasing)
    {
        global.chase_timer -= 1;
        
        if (global.chase_timer <= 0)
        {
            global.chase -= 1;
            global.chase_timer = global.chase_interval;
            show_debug_message(global.chase);
        }
    }
}

if (global.isHiding && global.chasing)
{
    Delay(3000, function()
    {
        if (!audio_is_playing(sndFootstepsMonster))
        {
            global.chasing = false;
            global.chase = global.chase_max;
            instance_destroy(oDaisy);
            global.safe = true;
            audio_play_sound(sndFootstepsMonster, 0, false);
        }
    });
}

if (global.lightsOut == 0 && room == rBedroom)
{
    if (!instance_exists(lightsOutPart1))
        instance_create_layer(x, y, "Instances", lightsOutPart1);
}

if (global.lightsOut == 1 && instance_exists(lightsOutPart1))
    instance_destroy(lightsOutPart1);

if (instance_exists(oPlayer))
{
    if (room == rBasement || rBasement2 || rBasement3 || rBasement4 || rBasement5 || rBasement6 || rBasement7 || rBasement8)
    {
        if (global.debounce1 == true && global.debounce2 == true && global.debounce3 == true && global.basementpuzzlecomplete == false && oPlayer.state == 0 && global.dialogue == false)
        {
            global.dialogue = true;
            
            if (global.current_code == "CAB")
            {
                global.basementpuzzlecomplete = true;
                show_debug_message("correct");
                
                if (speed != 0)
                    exit;
                
                audio_play_sound(sndUnlock, 0, 0);
                oPlayer.state = 5;
            }
            else
            {
                global.dialogue = false;
                show_debug_message("wrong");
                oPlayer.state = 5;
                
                if (myDeb == false)
                {
                    myDeb = true;
                    alarm[1] = 100;
                }
                
                global.debounce1 = false;
                global.debounce2 = false;
                global.debounce3 = false;
                global.debounce4 = false;
                global.current_code = "";
            }
        }
        
        if (global.dialogue2 == false && global.dialogue == true)
        {
            if (!audio_is_playing(sndUnlock))
            {
                global.dialogue2 = true;
                oPlayer.state = 1;
                OpenTextBox("A door has opened.");
                oTextBox.callback = [scrFinishCharacterReading, [oPlayer, -4]];
            }
        }
    }
    
    if (room == rBasement2)
    {
        if (instance_exists(oDoor))
        {
            if (global.basementpuzzlecomplete == true)
                oDoor.lock = -4;
            else
                oDoor.lock = "supertagsecretawow";
        }
    }
}

if (keyboard_check(vk_subtract))
{
    room_goto(rDebug);
    oPlayer.x = -32;
    oPlayer.y = -32;
}

if (layer_exists("Effect_1"))
    layer_depth("Effect_1", -1000);

if (layer_exists("Effect_1_1"))
    layer_depth("Effect_1_1", -1000);

if (layer_exists("Effect_1_1_1"))
    layer_depth("Effect_1_1_1", -1000);

if (layer_exists("Effect_1_1_1_1"))
    layer_depth("Effect_1_1_1_1", -1000);

if (layer_exists("Effect_1_1_1_1_1"))
    layer_depth("Effect_1_1_1_1_1", -1000);

if (layer_exists("loading_layer"))
    layer_depth("loading_layer", -1000);

if (layer_exists("Tiles_4"))
    layer_depth("Tiles_4", -999);

if (layer_exists("Assets_2"))
    layer_depth("Assets_2", -999);
