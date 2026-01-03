function scrSaveConfig()
{
    if (file_exists("config.ini"))
        file_delete("config.ini");
    
    ini_open("config.ini");
    var fullscreen = global.fullscreen;
    var crt = global.crt;
    ini_write_real("settings", "fullscreen", fullscreen);
    ini_write_real("settings", "crt", crt);
    ini_close();
}
