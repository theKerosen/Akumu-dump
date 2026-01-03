if (!instance_exists(oPlayer))
    exit;

if (place_meeting(x, y, oPlayer) && !instance_exists(oWarp))
{
    if (instance_exists(oDoor) && place_meeting(x, y, oDoor))
    {
        with (oDoor)
            image_index = 1;
    }
    
    var inst = instance_create_depth(0, 0, -9999999999999999, oWarp);
    inst.targetX = targetX;
    inst.targetY = targetY;
    inst.targetRoom = targetRoom;
    inst.targetFace = targetFace;
}
