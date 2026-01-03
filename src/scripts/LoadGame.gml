function scrLoadGame(arg0)
{
    var saveFile = "akumu" + string(arg0) + ".ini";
    
    if (file_exists(saveFile))
    {
        ini_open(saveFile);
        var roomload = ini_read_string("map", "lvl", rBedroom);
        instance_create_depth(0, 0, -9999999, oTransition);
        var tgroom = asset_get_index(roomload);
        var data = ini_read_string("config", "i", "");
        var data2 = ini_read_string("config", "f", "");
        var data3 = ini_read_string("config", "u", "");
        oTransition.targetRoom = tgroom;
        oPlayer.x = ini_read_real("map", "p01", 128);
        oPlayer.y = ini_read_real("map", "p02", 112);
        oPlayer.face = ini_read_real("config", "st", 3);
        global.dialogue = ini_read_real("stage1", "0", 0);
        global.basementpuzzlecomplete = ini_read_real("stage1", "1", 0);
        global.dialogue2 = ini_read_real("stage1", "2", 0);
        global.lightsOut = ini_read_real("stage1", "3", 0);
        global.atepizza = ini_read_real("stage1", "4", false);
        global.sinkCorrect = ini_read_real("stage1_1", "you", false);
        global.toiletCorrect = ini_read_real("stage1_1", "shouldn't", false);
        global.paperCorrect = ini_read_real("stage1_1", "be", false);
        global.allCorrect = ini_read_real("stage1_1", "here", false);
        global.allCorrectDebounce = ini_read_real("stage1_1", "please", false);
        global.unlockedCode = ini_read_real("stage1_1", "stop", false);
        global.switchBooks = ini_read_real("stage1_1", "save", false);
        global.screwUsed = ini_read_real("stage1_1", "us", false);
        oUI.fuel = ini_read_real("config", "l", 50);
        oGlobal.hours = ini_read_real("config", "h", 0);
        oGlobal.minutes = ini_read_real("config", "m", 0);
        oGlobal.seconds = ini_read_real("config", "s", 0);
        
        if (data != "")
            ds_list_read(oGlobal.inventory, data);
        
        if (data2 != "")
            ds_list_read(oPersistent.foundList, data2);
        
        if (data3 != "")
            ds_list_read(oPersistent.unlockedList, data3);
        
        ini_close();
    }
    else
    {
    }
}
