previous_x = x;
previous_y = y;
path = path_add();
canAppear = 0;
deb = false;
deb2 = false;
canRun = false;
play = false;
deb3 = 0;
my_room = room;
canKill = false;
global.monster_room = room;
image_speed = 0.1;
Delay(600, function()
{
    canRun = true;
});
Delay(100, function()
{
    canKill = true;
});
