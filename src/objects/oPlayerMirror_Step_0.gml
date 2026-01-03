x = oPlayer.x;
y += -oPlayer.vsp;
image_index = oPlayer.image_index;
image_speed = oPlayer.image_speed;
sprite_index = oPlayer.sprite_index;

if (oPlayer.sprite_index == sPlayer_U)
    sprite_index = sPlayer_D;

if (oPlayer.sprite_index == sPlayer_D)
    sprite_index = sPlayer_U;

if (oPlayer.sprite_index == sPlayerRun_D)
    sprite_index = sPlayerRun_U;

if (oPlayer.sprite_index == sPlayerRun_U)
    sprite_index = sPlayerRun_D;

if (oPlayer.sprite_index == sPlayerK_D)
    sprite_index = sPlayerK_U;

if (oPlayer.sprite_index == sPlayerK_U)
    sprite_index = sPlayerK_D;

if (oPlayer.sprite_index == sPlayerKA_D)
    sprite_index = sPlayerKA_U;

if (oPlayer.sprite_index == sPlayerKA_U)
    sprite_index = sPlayerKA_D;

if (oPlayer.sprite_index == sPlayer_S)
    sprite_index = sPlayer_U;

if (oPlayer.sprite_index == sPlayerC_D)
    sprite_index = sPlayer_U;

if (oPlayer.sprite_index == sPlayer_U && oPlayer.itemequip == "candle")
    sprite_index = sPlayerC_D;

if (oPlayer.sprite_index == sPlayerRun_U && oPlayer.itemequip == "candle")
    sprite_index = sPlayerRunC_D;

if (oPlayer.sprite_index == sPlayerRunC_D)
    sprite_index = sPlayerRun_U;
