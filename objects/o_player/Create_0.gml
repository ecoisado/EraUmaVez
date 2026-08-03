pos1_x = 45
pos2_x = pos1_x + 45
posY = 35
MostrandoImagem = function(_layer = "Objetos", _obj = o_lampada)
{
    if !global.clicou
    {
        var _lamp = instance_create_layer(pos1_x, posY, _layer, _obj)
        _lamp.image_index = 0 
        _lamp = instance_create_layer(pos2_x, posY, _layer, _obj)
        _lamp.image_index = 1
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
            if global.escolha == 0 
            {
                instance_create_layer(room_width/2, room_height/2, "Iluminacao", o_claridao)
            }
            else 
            {
            	instance_create_layer(room_width/2, room_height/2, "Iluminacao", o_escuridao)
            }
        break
    
        case 3:
            global.clicou = 0
            if global.escolha == 1 
            {
                MostrandoImagem("Legendas", o_resposta)
            }
            else 
            {
                MostrandoImagem("Objetos", o_cafe)	
            }
                
        break
    
        case 4:
            //var _resp1 = instance_create_layer(pos1_x, posY, "Legendas", o_sim)  
            //var _resp2 = instance_create_layer(pos2_x, posY, "Legendas", o_nao)
        break
    }
}