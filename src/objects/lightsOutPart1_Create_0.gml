if (global.lightsOut == 1)
    instance_destroy();

debounce = false;
var item = getItem(5, "healpizza");
var item2 = getItem(4, "hotpizza");
var item3 = getItem(3, "pizza");

if ((global.atepizza == false) ^^ (ds_list_find_index(oGlobal.inventory, item2) == -1) ^^ (ds_list_find_index(oGlobal.inventory, item3) == -1))
{
    instance_destroy(oPlayer);
    alarm[1] = 130;
}

debounce2 = false;
debounce3 = false;
lightsOut = 0;
canPlay = false;
alpha = 0;
global.canWatch = false;
depth = -9999;
