if ativo
{
    image_index = 1    
    if position_meeting(mouse_x, mouse_y, id)
    {
        entrou = 1
        tween(id, "image_xscale", 1.2, tween_animation.elastic, 40)
        tween(id, "image_yscale", 1.2, tween_animation.elastic, 40)
    }
    else 
    {
        entrou = 0	
        tween(id, "image_xscale", 1, tween_animation.elastic, 40)
        tween(id, "image_yscale", 1, tween_animation.elastic, 40)
    }
    
    if entrou 
    {
        if mouse_check_button_pressed(mb_left)
        {
            if !apertou
            {
                tween(id, "image_xscale", .8, tween_animation.elastic, 40)
                tween(id, "image_yscale", .8, tween_animation.elastic, 40)
                apertou = 1    
            }
            else 
            {
            	tween(id, "image_xscale", 1, tween_animation.elastic, 40)
                tween(id, "image_yscale", 1, tween_animation.elastic, 40)
            }
            
            if global.indice_atual  < array_length(global.texto)-1 global.indice_atual++
        }
    }
    
}

if apertou
{
    image_index = 0	
    apertou = 0
    ativo = 0
}


if global.indice_atual == 8 && global.slot[8] == "" room_goto(RoomInicio) //TROCA O GAME_END PARA TRANSICAO PRA ROOM DO LIVRO FECHANDO!



