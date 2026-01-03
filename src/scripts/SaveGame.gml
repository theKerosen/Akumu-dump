function scrSaveGame(arg0)
{
    var saveFile = "akumu" + string(arg0) + ".ini";
    
    if (file_exists(saveFile))
        file_delete(saveFile);
    
    ini_open(saveFile);
    var roomsaved = room_get_name(room);
    var posx = oPlayer.x;
    var hours = oGlobal.hours;
    var minutes = oGlobal.minutes;
    var seconds = oGlobal.seconds;
    var posy = oPlayer.y;
    var plrfc = oPlayer.face;
    var zero = global.dialogue;
    var one = global.basementpuzzlecomplete;
    var two = global.dialogue2;
    var lght = global.lightsOut;
    var pz = global.atepizza;
    var data = ds_list_write(oGlobal.inventory);
    var data2 = ds_list_write(oPersistent.foundList);
    var data3 = ds_list_write(oPersistent.unlockedList);
    var sink = global.sinkCorrect;
    var toilet = global.toiletCorrect;
    var paper = global.paperCorrect;
    var all_ = global.allCorrect;
    var all_2 = global.allCorrectDebounce;
    var unlockcode = global.unlockedCode;
    var switchbooks = global.switchBooks;
    var screwUsed = global.screwUsed;
    var fuel = oUI.fuel;
    ini_write_string("map", "lvl", roomsaved);
    ini_write_real("map", "p01", posx);
    ini_write_real("map", "p02", posy);
    ini_write_real("config", "st", plrfc);
    ini_write_real("stage1", "0", zero);
    ini_write_real("stage1", "1", one);
    ini_write_real("stage1", "2", two);
    ini_write_real("stage1", "3", lght);
    ini_write_real("stage1", "4", pz);
    ini_write_string("config", "i", data);
    ini_write_string("config", "f", data2);
    ini_write_real("config", "l", fuel);
    ini_write_real("config", "h", hours);
    ini_write_real("config", "m", minutes);
    ini_write_real("config", "s", seconds);
    ini_write_string("config", "u", data3);
    
    if (instance_exists(oBasementFloor2))
    {
        ini_write_real("stage1_1", "you", sink);
        ini_write_real("stage1_1", "shouldn't", toilet);
        ini_write_real("stage1_1", "be", paper);
        ini_write_real("stage1_1", "here", all_);
        ini_write_real("stage1_1", "please", all_2);
        ini_write_real("stage1_1", "stop", unlockcode);
        ini_write_real("stage1_1", "save", switchbooks);
        ini_write_real("stage1_1", "us", screwUsed);
    }
    
    ini_close();
    
    if (!instance_exists(oSaving))
        instance_create_depth(x, y, -999999, oSaving);
    
    show_debug_message("saved");
}
