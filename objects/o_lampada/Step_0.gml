if position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left)
{
    if image_index == 1 && !global.clicou
    {
        global.clicou = 1
        global.escolha = 1
        InsereTexto("logo um clarao iluminou tudo!", 1)
    }
    else if image_index == 2 && !global.clicou
    {
        global.clicou = 1
        global.escolha = 2
        InsereTexto("Um vazio começou a tomar conta de todo o seu ser, até que ele não sentia mais nada!", 1)
    }
}

if global.clicou
{
    if global.escolha != image_index instance_destroy()
}