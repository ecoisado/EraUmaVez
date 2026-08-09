if instance_exists(o_seguir)
{
    instance_destroy(o_seguir)
    InsereTexto("...", 1)
    o_player.reiniciar()
}