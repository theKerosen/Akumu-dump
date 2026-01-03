if (!moveable)
    exit;

if (is_moving)
    exit;

var direction_ = oPlayer.face;
var new_x = x;
var new_y = y;

switch (direction_)
{
    case 3:
        new_y += tile_size_;
        break;
    
    case 1:
        new_y -= tile_size_;
        break;
    
    case 2:
        new_x -= tile_size_;
        break;
    
    case 0:
        new_x += tile_size_;
        break;
}

if (place_meeting(new_x, new_y, oSolid) || place_meeting(new_x, new_y, oSolid2))
    exit;

audio_play_sound(sndPush, 0, false);
target_x = new_x;
target_y = new_y;
is_moving = true;
