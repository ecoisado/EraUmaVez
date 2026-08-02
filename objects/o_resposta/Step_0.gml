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

if position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left)
{
    if escolha == 1 && !global.clicou
    {
        global.clicou = 1
        global.escolha = 1
        InsereTexto("Ufa! que bom que ainda está aí!", 1)
    }
    else if escolha== 2 && !global.clicou
    {
        global.clicou = 1
        global.escolha = 2
        InsereTexto("A é engraçadinho! então quem está respondendo?", 1)
    }
}

if global.clicou
{
    if global.escolha != escolha instance_destroy()
}

show_debug_message("escolha: "+ string(escolha) + " clicou: " + string(global.clicou))