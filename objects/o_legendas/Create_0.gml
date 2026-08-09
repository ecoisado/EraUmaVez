global.texto = ["Era uma vez..."]

scribble_anim_wave(1, .2, .2)
scribble_anim_jitter(.8, 1.5, .1)
scribble_anim_shake(.5, .1)

typist = scribble_typist()
typist.in(.3, .5)


desenha_texto = 0

me_destruir = 0

skipando = function()
{
    typist.skip()
}

digitando = function()
{
    if typist.get_state() < 1
    {
        return true
    }
}

iniciando = function()
{
    image_xscale = 3
    desenha_texto = 1
}

finalizando = function()
{
        image_xscale = lerp(image_xscale, 0, .2)
    //image_yscale = lerp(image_yscale, 0, .2)

    
    image_alpha = lerp(image_alpha, 0, .2)
    
    y = lerp(y, ystart, .2)
    
    desenha_texto = 0
    
    if image_alpha <= 0.01 instance_destroy()
}