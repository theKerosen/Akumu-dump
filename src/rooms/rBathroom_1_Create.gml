itemTag = "candle";

if (!instance_exists(lightsOutPart1))
    exit;

if (lightsOutPart1.lightsOut == 1)
    canTake = true;
else
    canTake = false;
