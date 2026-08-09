entrou = 0
escolha = 0
inclina = 0
escala_entrando = 1.3
escala_saindo = 1
clicou = 0

PassandoMouse = function(_inclina = inclina)
{
    if position_meeting(mouse_x, mouse_y, id)
    {
        tween(id, "image_xscale", escala_entrando, tween_animation.elastic, 40)
        tween(id, "image_yscale", escala_entrando, tween_animation.elastic, 40) 
        if _inclina tween(id, "image_angle", 45, tween_animation.back, 40)
        
    }
    else 
    {
        tween(id, "image_xscale", escala_saindo, tween_animation.elastic, 40)
        tween(id, "image_yscale", escala_saindo, tween_animation.elastic, 40)
        if _inclina tween(id, "image_angle", 0, tween_animation.back, 40)
    }
}

ClickTween = function()
{
    if !clicou
    {
        show_message("clicou!")
        clicou = 1
        tween(id, "image_xscale", escala_entrando - 1, tween_animation.elastic, 40)
        tween(id, "image_yscale", escala_entrando - 1, tween_animation.elastic, 40)
    }
    else 
    {
    	tween(id, "image_xscale", escala_saindo, tween_animation.elastic, 40)
        tween(id, "image_yscale", escala_saindo, tween_animation.elastic, 40)
    }
    
}

ClicandoMouse = function(_slot = 0, _txt0 = "texto0", _txt1 = "texto1", _add_indice = 1)
{
    if position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left)
    {
        if !global.clicou
        {
            if !clicou
            {
                clicou = 1
                tween(id, "image_xscale", escala_entrando - 1, tween_animation.elastic, 40)
                tween(id, "image_yscale", escala_entrando - 1, tween_animation.elastic, 40)
            }
            else 
            {
            	tween(id, "image_xscale", escala_saindo, tween_animation.elastic, 40)
                tween(id, "image_yscale", escala_saindo, tween_animation.elastic, 40)
            }
            
            audio_play_sound(snd_pop, 0, 0)
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