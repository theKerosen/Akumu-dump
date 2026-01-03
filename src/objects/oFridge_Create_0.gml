depth = -bbox_bottom;
image_speed = 0;
debounce = true;
open = false;
cooldown = false;
myDialogue = "";
itemTag = "pizza";
itemId = 3;
quantity = 1;
var item = getItem(itemId, itemTag);
var item2 = getItem(4, "hotpizza");
var item3 = getItem(5, "healpizza");

if (global.atepizza != false || !instance_exists(lightsOutPart1))
    exit;

if (ds_list_find_index(oGlobal.inventory, item) == -1 && ds_list_find_index(oGlobal.inventory, item2) == -1)
{
    if (!instance_exists(oArrow))
        instance_create_layer(x + 4, y - 15, "Instances", oArrow);
}
else if (ds_list_find_index(oGlobal.inventory, item) != -1 && ds_list_find_index(oGlobal.inventory, item2) == -1)
{
    if (!instance_exists(oArrow))
        instance_create_layer(oMicrowave.x + 2.5, oMicrowave.y - 15, "Instances", oArrow);
}
else if (ds_list_find_index(oGlobal.inventory, item) == -1 && ds_list_find_index(oGlobal.inventory, item2) != -1)
{
    if (!instance_exists(oArrow))
        instance_create_layer(91, 106, "Instances", oArrow);
}
