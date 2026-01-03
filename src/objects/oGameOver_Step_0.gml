if (canFade)
{
    alpha -= 0.01;
    canTeleport = true;
    set_song_ingame(sndGameOver, 30, 120);
}

if (alpha <= 0 && canTeleport == true)
{
    canFade = false;
    canTeleport = false;
    canDraw = false;
    draw_set_alpha(1);
}

if (fadeGo)
    alpha += 0.02;

if (fadeGo && alpha >= 1)
    game_restart();
