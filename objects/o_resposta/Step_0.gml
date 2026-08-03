if position_meeting(mouse_x, mouse_y, id)
{
    if !entrou
    {
        entrou = 1
        tween(id, "image_xscale", .4, tween_animation.elastic, 40)
        tween(id, "image_yscale", .4, tween_animation.elastic, 40) 
        tween(id, "image_angle", 45, tween_animation.back, 40)
    }
    else 
    {
    	tween(id, "image_xscale", .2, tween_animation.elastic, 40)
        tween(id, "image_yscale", .2, tween_animation.elastic, 40)
        tween(id, "image_angle", 0, tween_animation.back, 40)
    } 
}
else 
{
    entrou = 0	
}

if position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left)
{
    if !global.clicou
    {
        if image_index == 0
        {
            global.escolha = 0
            global.clicou = 1
            escolha = 0
            global.slot[1] = escolha
            InsereTexto("Ufa! que bom que ainda está aí!", 1)     
        }
        else 
        {
            global.escolha = 1
            global.clicou = 1
            escolha = 1
            global.slot[1] = escolha
            InsereTexto("Vamuh lá cara, eu sei que você está aí!", 1) 	
        }
    } 
}

if global.clicou
{
    if global.escolha != image_index 
    {
        instance_destroy()
    }
}