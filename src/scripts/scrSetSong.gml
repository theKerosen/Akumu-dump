function set_song_ingame(arg0, arg1 = 0, arg2 = 0)
{
    with (oOST)
    {
        targetSongAsset = arg0;
        endFadeOutTime = arg1;
        startFadeInTime = arg2;
    }
}
