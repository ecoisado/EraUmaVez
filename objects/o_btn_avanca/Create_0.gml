ativo = 0
entrou = 0
entrou2 = 0
apertou = 0
apertou2 = 0
estado = noone
pulou = 0

Tocar = function()
{
    sprite_index = s_btn_avanca
    image_index = 2
    
    if instance_exists(o_legendas)
    {
        if o_legendas.digitando() estado = Pular
    }
}

Pular = function()
{
    sprite_index = s_btn_avanca
    image_index = 1
    
    if position_meeting(mouse_x, mouse_y, id)
    {
        entrou2 = 1
        tween(id, "image_xscale", 1.2, tween_animation.elastic, 40)
        tween(id, "image_yscale", 1.2, tween_animation.elastic, 40)
    }
    else 
    {
        entrou2 = 0	
        tween(id, "image_xscale", 1, tween_animation.elastic, 40)
        tween(id, "image_yscale", 1, tween_animation.elastic, 40)
    }
    
    if entrou2
    {
        if mouse_check_button_pressed(mb_left)
        {
            if !apertou2
            {
                tween(id, "image_xscale", .8, tween_animation.elastic, 40)
                tween(id, "image_yscale", .8, tween_animation.elastic, 40)
                apertou2 = 1    
            }
            else 
            {
                tween(id, "image_xscale", 1, tween_animation.elastic, 40)
                tween(id, "image_yscale", 1, tween_animation.elastic, 40)
            }
            
            if !pulou
            {
                pulou = 1
                if instance_exists(o_legendas)
                {
                    o_legendas.skipando()
                    estado = desativar
                }
            }
        }
    }
    
    if instance_exists(o_legendas)
    {
        if !o_legendas.digitando() estado = desativar
    }
}

desativar = function()
{
    sprite_index = s_btn_avanca
    image_index = 0
    pulou = 0
    
    if ativo estado = Tocar
        
    if instance_exists(o_legendas)
    {
        if o_legendas.digitando() estado = Pular
    }
        
    
}

estado = Pular