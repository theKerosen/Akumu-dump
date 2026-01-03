depth = -bbox_bottom;

if (place_meeting(x, y, oPlayer))
{
    with (oBookshelfBig)
        canDialogue = true;
}
else
{
    with (oBookshelfBig)
        canDialogue = false;
}
