

if !global.tocar
{
    global.tocar = 1
    audio_play_sound(snd_musica1, 1, 1, 0.2)
}

if keyboard_check_pressed(vk_f11)
{
    if window_get_fullscreen()
    {
        window_set_fullscreen(0)
    }
    else 
    {
        window_set_fullscreen(1)	
    }
}