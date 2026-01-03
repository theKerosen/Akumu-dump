for (var i = 0; i < total_slots; i++)
{
    var saveFile = "akumu" + string(i) + ".ini";
    
    if (file_exists(saveFile))
    {
        global.any_save_exists = file_exists(saveFile) ? 1 : 0;
        break;
    }
}
