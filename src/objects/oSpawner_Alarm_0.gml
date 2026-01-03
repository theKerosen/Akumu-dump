alarm[0] = room_speed * 8;

if (!instance_exists(oPlayer) || global.chasing || instance_exists(oDaisy) || !canSpawn || global.safe)
    exit;

var dist = distance_to_object(oPlayer);

if (dist > 30 && oPlayer.state == 0 && !global.gamePaused && !global.isHiding && !global.safe)
{
    var spawnnumber = irandom_range(1, 36);
    show_debug_message(spawnnumber);
    
    if (spawnnumber == 4 || spawnnumber == 24)
    {
        global.chasing = true;
        audio_play_sound(sndDoorClose, 0, 0, 0.5);
        
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
