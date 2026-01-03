if (instance_exists(oLoading) || instance_exists(oDebug))
    set_song_ingame(-4, 60, 60);

if (room == rMenu || room == rSettings)
    set_song_ingame(sndMenu, 60, 0);

if (room == rBedroom || room == rCorridor || room == rCorridor2 || room == rLivingRoom || room == rKitchen || room == rBathroom || room == rStaircase)
    set_song_ingame(sndRain, 60, 60);

if (room == rBasement || room == rBasement2 || room == rBasement3 || room == rBasement4 || room == rBasement5 || room == rBasement6 || room == rBasement7 || room == rBasement8 || room == rBasement9)
    set_song_ingame(sndBasement, 60, 0);

if (room == rBasement10 || room == rBasement11 || room == rBasement12 || room == rBasement13 || room == rBasement15 || room == rBasement16 || room == rBasement17)
{
    if (!global.unlockedCode)
        set_song_ingame(sndBasement2, 60, 0);
    else
        set_song_ingame(-4, 60, 0);
}

if (room == rBasement19)
    set_song_ingame(sndRain, 0, 0);

if (room == rBasement14)
    set_song_ingame(sndBurn, 60, 0);

if (room == rGameOver)
    set_song_ingame(-4, 120, 120);
