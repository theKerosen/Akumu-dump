for (i = 0; i < ds_list_size(foundList); i++)
{
    with (ds_list_find_value(foundList, i))
        event_user(15);
}

for (i = 0; i < ds_list_size(unlockedList); i++)
{
    with (ds_list_find_value(unlockedList, i))
        lock = -4;
}
