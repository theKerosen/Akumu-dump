if (!canDraw)
    exit;

draw_set_font(global.TEXTBOX_FONT);
draw_set_colour(c_white);
draw_set_halign(fa_center);
draw_sprite_ext(sTitle, 0, 129, y, 0.2707317, 0.2924051, 0, c_white, 1);
draw_text(x, y, text);
draw_set_colour(c_dkgray);
draw_set_alpha(0.3);
draw_text(x, y + text_height, "\n\n\n\n31013");
draw_set_alpha(1);
draw_set_colour(c_white);
draw_set_halign(fa_left);
