entrou = 0
escolha = 0
inclina = 0

PassandoMouse = function(_inclina = inclina)
{
    if position_meeting(mouse_x, mouse_y, id)
    {
        if !entrou
        {
            entrou = 1
            tween(id, "image_xscale", 1.4, tween_animation.elastic, 40)
            tween(id, "image_yscale", 1.4, tween_animation.elastic, 40) 
            if _inclina tween(id, "image_angle", 45, tween_animation.back, 40)
        }
        else 
        {
        	tween(id, "image_xscale", 1, tween_animation.elastic, 40)
            tween(id, "image_yscale", 1, tween_animation.elastic, 40)
            if _inclina tween(id, "image_angle", 0, tween_animation.back, 40)
        } 
    }
    else 
    {
        entrou = 0	
    }
}

ClicandoMouse = function(_slot = 0, _txt0 = "texto0", _txt1 = "texto1", _add_indice = 1)
{
    if position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left)
    {
        if !global.clicou
        {
            if image_index == 0
            {
                global.clicou = 1
                global.escolha = 0
                escolha = 0
                global.slot[_slot] = escolha
                InsereTexto(_txt0, _add_indice)
            }
            else
            {
                global.clicou = 1
                global.escolha = 1
                escolha = 1
                global.slot[_slot] = escolha
                InsereTexto(_txt1, _add_indice)
            }
        } 
        
    }
    
    DestruindoObjeto()
}

DestruindoObjeto = function()
{
    if global.clicou
    {
        if global.escolha != image_index instance_destroy()
    }
}