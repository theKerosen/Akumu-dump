if (!instance_exists(oDaisy) && global.chasing)
    global.shouldStayonRoom = true;

if (instance_exists(oDaisy))
{
    global.monsterX = oDaisy.x;
    global.monsterY = oDaisy.y;
    global.lastMonsterRoom = room;
}
