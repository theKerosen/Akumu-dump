if (debounce)
    exit;

draw_rectangle_color(0, 0, 800, 600, c_black, c_black, c_black, c_black, false);

if (!instance_exists(oWarp))
{
    if (global.tutorial != 1)
    {
        oPlayer.state = 5;
        global.tutorial = 1;
        Delay(3000, function()
        {
            oPlayer.state = 1;
            oTextBox.hasAudio = true;
            oTextBox.Speaker = "Dad";
            OpenTextBox("Feels familiar, doesn't it?", "There's a quiet echo in the air, as if distant embers still glow.", "Sometimes, choices made in darkness leave traces that even time can't erase.", "Use the arrow keys or WASD to move.", "[Z] should still let you interact.", "[X] lets you pause, if you need to.", "Press [C] to open your inventory. To use an item, you must select it from there.", "You can run with [SHIFT], if you're in a hurry.", "Remember, some fires, once lit, never truly die.", "Keep moving. The path ahead awaits.");
            oTextBox.callback = [scrFinishCharacterReading, [oPlayer, -4]];
        });
    }
}

if (global.tutorial == 1 && oPlayer.state == 0)
{
    oPlayer.state = 5;
    Delay(5000, function()
    {
        room_goto(rBedroom);
        instance_destroy();
    });
}
