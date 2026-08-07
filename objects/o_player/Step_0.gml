x = mouse_x
y = mouse_y

if mouse_check_button(mb_left)
{
    image_xscale = 1.5
    image_yscale = image_xscale
}

if mouse_check_button_released(mb_left)
{
    image_xscale = 1
    image_yscale = image_xscale
}

if keyboard_check_pressed(vk_enter)
{
    //trocar = 1
}

if keyboard_check_pressed(vk_escape) 
{
    global.texto = ["", ""]
    global.indice_atual = 0
    global.clicou = 0
    global.slot = ["", "", "", "", "", "", "", "", "", ""]
    global.indice = 0
    global.tocar = 0
    audio_group_stop_all(agMusica)

    
    room_restart()
}

