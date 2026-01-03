function scrLoadConfig()
{
    ini_open("config.ini");
    global.fullscreen = ini_read_real("settings", "fullscreen", 0);
    global.crt = ini_read_real("settings", "crt", 1);
    ini_close();
}
