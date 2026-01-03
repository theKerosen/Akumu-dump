switch (itemequip)
{
    case "":
        sprite[0] = sPlayer_R;
        sprite[1] = sPlayer_U;
        sprite[2] = sPlayer_L;
        sprite[3] = sPlayer_D;
        sprite[4] = sPlayerRun_R;
        sprite[5] = sPlayerRun_U;
        sprite[6] = sPlayerRun_L;
        sprite[7] = sPlayerRun_D;
        break;
    
    case "knife":
        sprite[0] = sPlayer_R;
        sprite[1] = sPlayer_U;
        sprite[2] = sPlayer_L;
        sprite[3] = sPlayer_D;
        sprite[4] = sPlayerRun_R;
        sprite[5] = sPlayerRun_U;
        sprite[6] = sPlayerRun_L;
        sprite[7] = sPlayerRun_D;
        break;
    
    case "candle":
        sprite[0] = sPlayerC_R;
        sprite[1] = sPlayer_U;
        sprite[2] = sPlayerC_L;
        sprite[3] = sPlayerC_D;
        sprite[4] = sPlayerRunC_R;
        sprite[5] = sPlayerRun_U;
        sprite[6] = sPlayerRunC_L;
        sprite[7] = sPlayerRunC_D;
        break;
}

key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));
key_run = keyboard_check(vk_shift);

if (hsp != 0 && vsp != 0 && !key_run)
    spd = diagSpd;
else if (!key_run)
    spd = 1;

hsp = (key_right - key_left) * spd;
vsp = (key_down - key_up) * spd;

switch (state)
{
    case 0:
        scrPlayerCheckInteraction();
        scrPlayerCheckMenus();
        break;
    
    case 1:
        scrPlayerCheckReading();
        break;
    
    case 8:
        scrPlayerUpdateInventory();
        scrStop();
        break;
    
    case 5:
        scrStop();
        break;
    
    case 2:
        scrStop();
        break;
    
    case 4:
        scrStabDie();
        scrStop();
        break;
}

if (state == 1 || instance_exists(oPauser) || instance_exists(parMenu) || global.gamePaused)
    scrStop();

mask_index = sprite[3];

if (vsp == 0 && running == false)
{
    if (hsp > 0 && running == false)
        face = 0;
    
    if (hsp < 0 && running == false)
        face = 2;
}

if (hsp > 0 && running == false)
    face = 0;

if (hsp < 0 && running == false)
    face = 2;

if (hsp == 0 && running == false)
{
    if (vsp < 0 && running == false)
        face = 1;
    
    if (vsp > 0 && running == false)
        face = 3;
}

if (vsp > 0 && face == 1)
    face = 3;

if (vsp < 0 && face == 3)
    face = 1;

sprite_index = sprite[face];

if (place_meeting(x + hsp, y, oSolid))
    hsp = 0;

if (place_meeting(x, y + vsp, oSolid))
    vsp = 0;

scrRun();
x += hsp;
y += vsp;
previous_x = x;
previous_y = y;

if (hsp == 0 && vsp == 0 && running == false && state != 2 && state != 4 && !global.gamePaused)
    image_index = 0;

if (hsp == 0 && vsp == 0 && running == true && state != 2 && state != 4 && !global.gamePaused)
{
    running = false;
    image_index = 0;
}

if (hsp == 0 && vsp == 0 && state != 2 && state != 4 && !global.gamePaused)
{
    switch (face)
    {
        case 6:
            face = 2;
            break;
        
        case 4:
            face = 0;
            break;
        
        case 5:
            face = 1;
            break;
        
        case 7:
            face = 3;
            break;
    }
}

if (hsp == 0 && vsp == 0 && running == true)
{
    hsp = 0;
    vsp = 0;
    spd = 1;
}

if (vsp == 0 && running == true)
{
    if (hsp > 0 && running == true)
        face = 4;
    
    if (hsp < 0 && running == true)
        face = 6;
}

if (hsp > 0 && running == true)
    face = 4;

if (hsp < 0 && running == true)
    face = 6;

if (hsp == 0 && running == true)
{
    if (vsp < 0 && running == true)
        face = 5;
    
    if (vsp > 0 && running == true)
        face = 7;
}

if (vsp > 0 && face == 5)
    face = 7;

if (vsp < 0 && face == 7)
    face = 5;

if (instance_exists(parMenu))
    visible = false;
else
    visible = true;

depth = -bbox_bottom;
audio_listener_position(x, y, 0);

if (state == 0)
{
    if (global.gamePaused)
        exit;
    
    if (running == false)
    {
        var _his = sprite_get_speed(sprite_index) / room_speed / 2;
        
        if (((image_index - _his) < 1 && (image_index + _his) > 1) || ((image_index - _his) < 3 && (image_index + _his) > 3))
        {
            sound = choose(sndS1, sndS2, sndS3, sndS4, sndS5);
            audio_play_sound(sound, 0, 0, 0.2);
        }
    }
    else if (face == 6 || face == 4)
    {
        var _his = sprite_get_speed(sprite_index) / room_speed / 2;
        
        if (((image_index - _his) < 1 && (image_index + _his) > 1) || ((image_index - _his) < 6 && (image_index + _his) > 6))
        {
            sound = choose(sndS1, sndS2, sndS3, sndS4, sndS5);
            audio_play_sound(sound, 0, 0, 0.2);
        }
    }
    else if (face == 5 || face == 7)
    {
        var _his = sprite_get_speed(sprite_index) / room_speed / 2;
        
        if (((image_index - _his) < 1 && (image_index + _his) > 1) || ((image_index - _his) < 3 && (image_index + _his) > 3))
        {
            sound = choose(sndS1, sndS2, sndS3, sndS4, sndS5);
            audio_play_sound(sound, 0, 0, 0.2);
        }
    }
}
