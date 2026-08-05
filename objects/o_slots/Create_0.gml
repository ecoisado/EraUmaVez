entrando = function()
{
    y = lerp(y, 0, 0.2)
}

saiu = 0

if !global.comecando
{
    x = 0
    y = 0
}

saindo = function()
{
    y = lerp(y, ystart, 0.2)
    
    if abs(y) <= 0.1 show_message("SAIU!")
}