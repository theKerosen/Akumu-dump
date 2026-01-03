if (keyboard_check_pressed(ord("A")) && nrm > 0)
    nrm--;
else if (keyboard_check_pressed(ord("D")) && room_exists(room_next(nrm)))
    nrm++;

rm_next = room_next(nrm);
str_room = room_get_name(rm_next);

if (keyboard_check_pressed(ord("E")))
{
    room_goto(rm_next);
    oPlayer.x = 128;
    oPlayer.y = 112;
}

draw_set_font(global.TEXTBOX_FONT);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width / 2, (room_height / 2) - 32, "Select your room:");
draw_text(room_width / 2, (room_height / 2) + 32, "A/D - navigate\nE - Select");
draw_text(room_width / 2, (room_height / 2) - 20, str_room);
