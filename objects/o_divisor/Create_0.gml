entrando = function()
{
    x = lerp(x, 0, 0.2)
}

saiu = 0

if !global.comecando
{
    x = 0
    y = 0
}

saindo = function()
{
    x = lerp(x, xstart, 0.2)
    
    if abs(x) <= 0.1 show_message("SAIU!")
}