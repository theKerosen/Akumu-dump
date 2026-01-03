state = 0;
turn = false;
myDialogue = 0;

myCallback = function(arg0, arg1)
{
    arg0.state = 0;
    arg0.x = 72;
    arg0.y = 114;
    oTextBox.hasAudio = false;
    oCouch.depth = -oCouch.bbox_bottom;
    oTextBox.Speaker = "";
    audio_play_sound(sndGetUp, 0, false);
};
