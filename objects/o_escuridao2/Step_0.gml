image_alpha += .01

if image_alpha >= 1 
{
    if instance_exists(o_lampada)
    {
        instance_destroy(o_lampada)
    }
    
    if !escreveu
    {
        audio_group_stop_all(agMusica)
        audio_play_sound(snd_musica2, 1, 1)
        escreveu = 1
        //o_btn_avanca.ativo = 1
        InsereTexto("Eu não queria que você viesse aqui! mas também não poderia te privar da verdade...", 0)
    }
    
    if !ativouBtn
    { 
        ativouBtn = 1
        o_btn_avanca.ativo = 1
    }
}

if instance_exists(o_resposta2) && global.escolha == 0 && global.clicou 
{
    instance_destroy(o_resposta2)
    instance_destroy()
}
else if instance_exists(o_resposta2) && global.escolha == 1 && global.clicou
{
    instance_destroy(o_resposta2)
    instance_destroy()
}