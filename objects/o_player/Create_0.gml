MostrandoImagem = function()
{
    if !global.clicou
    {
        var _lamp = instance_create_layer(room_width/2 - 50, 35, "Objetos", o_lampada)
        _lamp.image_index = 1 
        _lamp = instance_create_layer(room_width/2 + 50, 35, "Objetos", o_lampada)
        _lamp.image_index = 2
    }
}

ChamandoFuncao = function()
{
    switch (global.indice_atual) 
    {
        case 0:
            //
        break
        
        case 1:
            MostrandoImagem()
        break	
    
        case 2:
            if global.escolha == 1 
            {
                instance_create_layer(room_width/2, room_height/2, "Iluminacao", o_claridao)
            }
            else 
            {
            	instance_create_layer(room_width/2, room_height/2, "Iluminacao", o_escuridao)
            }
        break
    
        case 3:
            //global.indice_atual++
        break
    }
}