if position_meeting(mouse_x, mouse_y, id)
{
    if !entrou
    {
        entrou = 1
        tween(o_sim, "image_xscale", .4, tween_animation.elastic, 40)
        tween(o_sim, "image_yscale", .4, tween_animation.elastic, 40) 
        tween(o_sim, "image_angle", 45, tween_animation.back, 40)
    }
    else 
    {
    	tween(o_sim, "image_xscale", .2, tween_animation.elastic, 40)
        tween(o_sim, "image_yscale", .2, tween_animation.elastic, 40)
        tween(o_sim, "image_angle", 0, tween_animation.back, 40)
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
        global.escolha = escolha
        global.clicou = 1
        
        InsereTexto("Ufa! que bom que ainda está aí!", 1)    
    }
}

if global.clicou
{
    if global.escolha != escolha instance_destroy()
}