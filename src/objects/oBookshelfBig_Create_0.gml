state = 0;
myDialogue = 0;
depth = -bbox_bottom;
inicialDialogue = undefined;
myDialogue = undefined;
myDialogue2 = undefined;
myDialogue3 = undefined;
myDialogue4 = undefined;
myDialogue5 = undefined;
myDialogue6 = undefined;
myDialogue7 = undefined;
myDialogue8 = undefined;
myDialogue9 = undefined;
myDialogue10 = undefined;
debounce = false;
hasBook = false;
event_inherited();
name = -4;
itemId = -4;
itemTag = -4;
quantity = -4;
state = 0;
debounce = 0;
canDialogue = false;

if (instance_exists(oPersistent))
{
    if (ds_list_find_index(oPersistent.foundList, id) != -1)
        itemId = -4;
}
