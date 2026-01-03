if (input_delay > 0)
    input_delay--;

var key_left = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
var key_right = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
var key_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
var key_down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
var key_confirm = keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter);

if (input_delay <= 0)
{
    if (key_left)
    {
        digit_index = max(0, digit_index - 1);
        input_delay = 5;
    }
    else if (key_right)
    {
        digit_index = min(digit_count - 1, digit_index + 1);
        input_delay = 5;
    }
    else if (key_up)
    {
        input_digits[digit_index] = (input_digits[digit_index] + 1) % 10;
        input_delay = 5;
    }
    else if (key_down)
    {
        input_digits[digit_index] = (input_digits[digit_index] + 9) % 10;
        input_delay = 5;
    }
    else if (key_confirm)
    {
        var correct = true;
        
        for (var i = 0; i < digit_count; i++)
        {
            if (input_digits[i] != correct_code[i])
            {
                correct = false;
                break;
            }
        }
        
        var correctforest = true;
        
        for (var i = 0; i < digit_count; i++)
        {
            if (input_digits[i] != forest_code[i])
            {
                correctforest = false;
                break;
            }
        }
        
        if (correctforest)
        {
            audio_stop_sound(sndBasement2);
            room_goto(r31013);
            oPlayer.x = -32;
            oPlayer.y = -32;
            oPlayer.itemequip = "";
        }
        else
        {
        }
        
        var correctmonster = true;
        
        for (var i = 0; i < digit_count; i++)
        {
            if (input_digits[i] != monster_code[i])
            {
                correctmonster = false;
                break;
            }
        }
        
        if (correctmonster)
        {
            with (oSpawner)
            {
                switch (directionspawn)
                {
                    case "LEFT":
                        instance_create_layer(x - 32, y + 29, "Instances", oDaisy);
                        break;
                    
                    case "RIGHT":
                        instance_create_layer(x + 32, y + 29, "Instances", oDaisy);
                        break;
                    
                    case "UP":
                        instance_create_layer(x + 16, y - 18, "Instances", oDaisy);
                        break;
                    
                    case "DOWN":
                        instance_create_layer(x + 16, y + 18, "Instances", oDaisy);
                        break;
                }
            }
        }
        else
        {
        }
        
        code_status = correct ? 1 : -1;
        
        if (correct)
        {
            audio_stop_sound(sndBasement2);
            show_debug_message("Senha correta!");
        }
        else
        {
            show_debug_message("Senha incorreta!");
        }
        
        input_delay = 10;
    }
}

if (bgImage >= 92 && global.unlockedCode)
{
    audio_play_sound(sndGateClosing, 0, false);
    audio_stop_sound(sndGateOpening);
    oPlayer.state = 0;
    instance_destroy(oGate2);
    instance_destroy();
}
