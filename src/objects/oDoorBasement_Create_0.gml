state = 0;
image_speed = 0;
canDraw = false;
hasDialogue = false;

myCallback = function(arg0, arg1)
{
    var inst = instance_create_layer(x, y, "Instances", oWarp);
    inst.targetX = -32;
    inst.targetY = -32;
    inst.targetFace = 3;
    inst.targetRoom = rBasement20;
    inst.targetState = 5;
};
