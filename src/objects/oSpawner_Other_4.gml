if (global.chasing && global.lastMonsterRoom != room)
{
    distroom = distance_to_object(oPlayer);
    Delay(1000, function()
    {
        if (!instance_exists(oPlayer) || instance_exists(oDaisy) || instance_exists(oWarp))
            exit;
        
        var dist = distance_to_object(oPlayer);
        
        if (distroom < 30)
        {
            audio_play_sound(sndDoorClose, 0, 0, 0.5);
            global.shouldStayonRoom = false;
            
            switch (directionspawn)
            {
                case "LEFT":
                    var d = instance_create_layer(x - 32, y + 28, "Instances", oDaisy);
                    break;
                
                case "RIGHT":
                    var d = instance_create_layer(x + 32, y + 28, "Instances", oDaisy);
                    break;
                
                case "UP":
                    var d = instance_create_layer(x + 16, y - 18, "Instances", oDaisy);
                    break;
                
                case "DOWN":
                    var d = instance_create_layer(x + 16, y + 18, "Instances", oDaisy);
                    break;
            }
        }
    });
}
else if (global.chasing && global.shouldStayonRoom && global.lastMonsterRoom == room)
{
    if (!instance_exists(oDaisy))
        var d = instance_create_layer(global.monsterX, global.monsterY, "Instances", oDaisy);
}
