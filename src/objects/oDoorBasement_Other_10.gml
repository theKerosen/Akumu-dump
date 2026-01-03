canDraw = true;
hasDialogue = true;
audio_play_sound(sndDoor, 0, 0, 0.5);
oPlayer.state = 5;
oPlayer.itemequip = "";
removeItem(6, "candle");
removeItem(10, "screw");
removeItem(7, "paper");
removeItem(9, "fakebook");
removeItem(0, "library");
var item = getItem(8, "witchbook");

if (ds_list_find_index(oGlobal.inventory, item) != -1)
{
    Delay(4000, function()
    {
        OpenTextBox("Look who's here, once again.");
        oTextBox.hasAudio = true;
        oTextBox.Speaker = "Dad";
        oPlayer.state = 1;
        state = 1;
        oTextBox.callback = [myCallback, [oPlayer, oDoorBasement]];
    });
}
else
{
    Delay(2000, function()
    {
        room_goto(rBasement21);
        oPlayer.x = -32;
        oPlayer.y = -32;
        oPlayer.face = 3;
        oPlayer.state = 5;
    });
}
