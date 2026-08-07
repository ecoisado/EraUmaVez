delaySaindo = 0
tocouAudio = 0

AcabouAnim = function()
{
    var _spd = sprite_get_speed(sprite_index) / 60
    if image_index + _spd >= image_number
    {
        return true;
    }
}

movendo = 0
mudouIndex = 0
rodou = 0
estado = noone

troca_sprite = function(_sprite = s_player)
{
    if sprite_index != _sprite
    {
        sprite_index = _sprite
        image_index = 0
    }
}

Fechado = function()
{
    
    
    if position_meeting(mouse_x, mouse_y, id)
    {
        sprite_index = s_livro_fechado_selecionado
        
        if mouse_check_button_pressed(mb_left)
        {
            estado = Abrindo   
        }
    }
    else 
    {
    	troca_sprite(s_livro_fechando)
        image_index = 7
        image_speed = 0
    }
    
    if keyboard_check_pressed(ord("A")) estado = Abrindo
}

Abrindo = function()
{
    troca_sprite(s_livro_abrindo)
    image_speed = 1
    
    if !tocouAudio
    {
        tocouAudio = 1
        audio_play_sound(snd_livro_abrindo, 0, 0)
    }
    
    if AcabouAnim() 
    {
        estado = Aberto
    } 
}

Aberto = function()
{
    troca_sprite(s_livro_abrindo) 
    image_index = 7
    image_speed = 0 
    
    o_slots.entrando()
    o_penas.entrando()
    o_divisor.entrando()
    o_config.entrando()
    
    if keyboard_check_pressed(ord("F")) estado = Fechando
        
    if o_penas.y <= 0.1 room_goto(Room1)
    
}

Fechando = function()
{
    troca_sprite(s_livro_fechando)
    image_speed = 0
    
    delaySaindo++
    if delaySaindo >= 30
    {
        o_config.saindo()
        o_divisor.saindo()
        o_slots.saindo()
        o_penas.saindo()
    } 
    
    //show_debug_message(o_penas.y)
    if o_penas.y >= 86 image_speed = 1
    
    if AcabouAnim() estado = Fechado
}

if global.comecando
{
    estado = Fechado
}
else 
{
    estado = Fechando 	
}
