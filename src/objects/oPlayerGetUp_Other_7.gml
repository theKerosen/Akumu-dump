image_speed = 0;
image_index = 2;
Delay(2500, function()
{
    global.safe = true;
    audio_play_sound(sndGetUp, 0, false);
    var player = instance_create_layer(x, y + 2, "Instances", oPlayer);
    player.face = 1;
    player.sprite_index = sPlayer_U;
    scrSaveGame(0);
    instance_destroy();
});
