if !me_destruir
{
    iniciando()
}
else 
{
    finalizando()	
}

show_debug_message("indice: "+ string(global.indice_atual) + "array:" + string(array_length(global.texto)))
show_debug_message("comecando:"+string(global.comecando))
//show_debug_message(global.slot)