depth = -bbox_bottom;

if (!moveable)
    exit;

if (is_moving)
{
    oPlayer.state = 5;
    var dx = target_x - x;
    var dy = target_y - y;
    
    if (dx != 0)
        x += (sign(dx) * min(abs(dx), speed_));
    
    if (dy != 0)
        y += (sign(dy) * min(abs(dy), speed_));
    
    if (x == target_x && y == target_y)
    {
        oPlayer.state = 0;
        is_moving = false;
    }
}

if (!global.toiletCorrect)
{
    if (x == destX && y == destY)
    {
        global.toiletCorrect = true;
        x = destX;
        y = destY;
        is_moving = false;
    }
}
