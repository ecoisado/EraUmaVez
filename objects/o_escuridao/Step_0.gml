image_alpha += .01

if image_alpha >= 1 
{
    if instance_exists(o_lampada)
    {
        instance_destroy(o_lampada)
    }
    
    if !escreveu
    {
        escreveu = 1
        InsereTexto("Tem alguém ai?", 0)
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
}