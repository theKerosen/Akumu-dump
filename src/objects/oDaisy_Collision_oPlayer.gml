if (!canKill)
    exit;

room_goto(rGameOver);
audio_stop_all();
global.deathSound = true;
scrCloseInventory();
