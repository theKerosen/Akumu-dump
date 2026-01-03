if (!instance_exists(oPlayer))
{
    instance_destroy();
    exit;
}

room_goto(targetRoom);
oPlayer.x = targetX;
oPlayer.y = targetY;
oPlayer.face = targetFace;
oPlayer.state = targetState;
image_speed = -1;
