cor_bolinha = c_white
audioGrupo = agSFX
valor = global.sfxVol
vol = valor
audio_group_set_gain(audioGrupo, vol, 0)

desenha_slider = function()
{
    draw_self()
    
    var _x_bolinha = x + (sprite_width * valor)
    
    draw_sprite_part_ext(sprite_index, 0, 0, 0, sprite_width * valor, sprite_height, x, y - sprite_yoffset, 1, 1, #c09473, 1)
    draw_sprite_ext(s_slide_bolinha, 0, _x_bolinha, y, 1, 1, 0, cor_bolinha, 1)
    
    
    
}

altera_valor = function()
{
    //var _x_bolinha = x + (sprite_width * valor)
    //var _y_bolinha = y
    
    var _mouse_sobre = point_in_rectangle(mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom)
    var _mouse_clique = mouse_check_button(mb_left)
    
    if _mouse_sobre
    {
        cor_bolinha = #A53030
        if _mouse_clique
        {
            valor = (mouse_x - x) / sprite_width
            valor = clamp(valor, 0, 1)
            vol = valor
            audio_group_set_gain(audioGrupo, vol, 0)
            global.sfxVol = valor
        }
    }
    else 
    {
        cor_bolinha = c_white 
    }
    
}