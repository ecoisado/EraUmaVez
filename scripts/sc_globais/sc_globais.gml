global.texto = []
global.indice_atual = 0
global.clicou = 0
global.escolha = 0


function InsereTexto(_txt = "nada", _add_indice = 0)
{
    if !array_contains(global.texto, _txt)
    {
        array_push(global.texto, _txt)
        
        if _add_indice global.indice_atual++
    } 
}

global.slot = ["", "", "", "", "", "", "", "", "", ""]