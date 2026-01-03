canDraw = false;
x = room_width / 2;
y = room_height;
depth = -99999;
scroll_speed = 0.4;
instance_destroy(oPlayer);
text = "\nDemo\n\nMade with Game Maker: Studio 2\n\n-Programmer-\nVini\n\n-Graphics-\nVini\nAsset Bakery\n\n-Sound and Music-\nFreesound.org\nBGMemon\n\n-Special Thanks-\nMoon\nIlliumBr\n\nCouldn't do this without you guys <3\n\n\n2025 Akumu Development Team.\n\n\nThanks for playing!";
draw_set_font(global.TEXTBOX_FONT);
text_height = string_height(text);
Delay(2000, function()
{
    canDraw = true;
    audio_play_sound(sndCredits, 0, false);
});
