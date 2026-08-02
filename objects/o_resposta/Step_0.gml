if position_meeting(mouse_x, mouse_y, objeto.id)
{
    if !entrou
    {
        entrou = 1
        tween(objeto, "image_xscale", .4, tween_animation.elastic, 40)
        tween(objeto, "image_yscale", .4, tween_animation.elastic, 40) 
        tween(objeto, "image_angle", 45, tween_animation.back, 40)
    }
    else 
    {
    	tween(objeto, "image_xscale", .2, tween_animation.elastic, 40)
        tween(objeto, "image_yscale", .2, tween_animation.elastic, 40)
        tween(objeto, "image_angle", 0, tween_animation.back, 40)
    } 
}
else 
{
    entrou = 0	
}
