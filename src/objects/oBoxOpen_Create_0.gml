event_inherited();
name = -4;
itemId = -4;
itemTag = -4;
quantity = -4;
state = 0;
debounce = 0;

if (instance_exists(oPersistent))
{
    if (ds_list_find_index(oPersistent.foundList, id) != -1)
    {
        itemId = -4;
        
        if (image_index != 0)
            image_index = 0;
    }
}
