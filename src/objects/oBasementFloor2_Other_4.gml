if (!instance_exists(oLightning))
    exit;

if (room == rBasement16 || room == rBasement17 || room == rBasement15 || room == rBasement18)
    oLightning.darkness = 0.93;
else
    oLightning.darkness = 0.73;

if (room == rBasement19)
    oLightning.darkness = 0.6;
