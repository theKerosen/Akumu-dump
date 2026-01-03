draw_self();
draw_set_alpha(image_alpha);
draw_set_font(global.TEXTBOX_FONT);
draw_set_valign(fa_bottom);
draw_set_halign(fa_center);
draw_set_color(c_ltgray);
draw_text(x, y - 45, "Demo");
draw_set_color(c_white);
draw_set_alpha(1);
