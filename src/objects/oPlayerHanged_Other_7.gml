image_speed = 0;
image_index = 26;
Delay(1000, function()
{
    room_goto(rGameOver);
    audio_stop_sound(sndHang2);
    instance_destroy(oLightning);
});
