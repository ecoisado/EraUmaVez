draw_self()

if !desenha_texto exit
    
var _marg = 3
var _x = x - sprite_width / 2 + _marg
var _y = y - sprite_height / 2 + _marg
var _larg = (sprite_width * 10) - (_marg * 20)

var _cor = c_white

var _txt = scribble(global.texto[global.indice_atual]).starting_format("f_legendas", _cor);
_txt = _txt.scale(0.08)
_txt = _txt.wrap(sprite_width - _marg * 2)

_txt.draw(_x, _y, typist);

if keyboard_check_pressed(vk_tab) typist.skip()

typist.sound_per_char(snd_legenda, 1.5, 1.8)

if keyboard_check_pressed(vk_space) && global.indice_atual  < array_length(global.texto)-1 global.indice_atual++

   
if instance_exists(o_player)
{
    if global.indice_atual == 1
    {
        typist.function_on_complete(function (_txt, typist)
        {
            o_player.ChamandoFuncao()
        });
    } 
    
    if global.indice_atual == 2
    {
        typist.function_on_complete(function (_txt, typist)
        {
            o_player.ChamandoFuncao()
        });
        
    } 
    
    if global.indice_atual == 3
    {
        typist.function_on_complete(function (_txt, typist)
        {
            o_player.ChamandoFuncao()
        });
        
    }
    
    if global.indice_atual == 4
    {
         
    }
}
