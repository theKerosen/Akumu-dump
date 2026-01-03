if (!global.chasing)
{
    audio_stop_sound(sndChaseLV2);
    audio_resume_sound(sndBasement2);
}

instance_destroy();
