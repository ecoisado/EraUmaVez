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
        InsereTexto("ei! ainda tem alguém ai?", 1)
    }
}