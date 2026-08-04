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
        case 0: //Era uma vez...
            o_btn_avanca.ativo = 1
        break
        
        case 1: //Um ser que tinha entre duas escolhas pra fazer...
            MostrandoImagem()
        break	
    
        case 2: //Uma imensa luz tomou conta de todo o lugar, e tudo que existe foi criado!
            if global.escolha == 0 
            {
                instance_create_layer(room_width/2, room_height/2, "Iluminacao", o_claridao)
            }
            else 
            {
            	var _esc = instance_create_layer(room_width/2, room_height/2, "Iluminacao", o_escuridao)
            }
        break
    
        case 3:
            
            global.clicou = 0
            if global.slot[0] == 0
            {
                //if global.slot[0] == 0 Então chegamos até o nosso personagem chamado Nosde, Ele abre os olhos em sua cama e pensa...
                //-> global.slot[1] = 0 - cafe / 1 - relogio
                MostrandoImagem("Objetos", o_cafe)	 
            }
            else 
            {
                //if global.slot[0] == 1 Uma imensa escuridão tomou conta de todo o seu Ser até ele não sentir mais nada!
                //-> global.slot[1] = 0 - sim / 1 - nao
                MostrandoImagem("Legendas", o_resposta)
            }
                
        break
    
        case 4: 
                
            global.clicou = 0
            if global.slot[0] == 0
            {
                if global.slot[1] == 0
                {
                    //if global.slot[1] == 0 O nosde que é um viciado em café saboreia esse momento enquanto olha pela janela da sua casa...
                    o_btn_avanca.ativo = 1
                    InsereTexto("ele vê a garota dos seus sonhos, Meg!", 0)  
                }
                else 
                {
                	//if global.slot[1] == 1 O Nosde decide tirar mais uns 5 minutinhos de sono
                    o_btn_avanca.ativo = 1
                    InsereTexto("então ele acorda assustado com barulho de buzina!", 0)
                }
                
            }
            else //if global.slot[0] == 1 Tem alguém ai?
            {
                if global.slot[1] == 0
                {
                    //if global.slot[1] == 0 Ufa! ainda bem que você está aqui! relaxa as vezes a gente se perde pelo caminho mesmo...
                    if instance_exists(o_escuridao) instance_destroy(o_escuridao)
                }
                else 
                {
                	//if global.slot[1] == 1 Qual é mano? me dá outra chance!
                    o_btn_avanca.ativo = 1
                    InsereTexto("Vamos tentar denovo?",0)
                }  
            }
            
        break
    
        case 5: 
            
            if global.slot[0] == 0
            {
                if global.slot[1] == 0 //ele vê a garota dos seus sonhos, Meg!
                {
                    o_btn_avanca.ativo = 1
                    InsereTexto("ela está na calçada, esperando o sinal fechar para atravessar para o outro lado da rua", 0)
                }
                else //então ele acorda assustado com barulho de buzina! 
                {
                	o_btn_avanca.ativo = 1
                    InsereTexto("ele olha pela janela e tudo parece normal!", 0)
                }
            }
                
            //if global.escolha == 1 MostrandoImagem("Legendas", o_resposta2) 
            
               
        break
    
        case 6: //ela está na calçada, esperando o sinal fechar para atravessar para o outro lado da rua
            if global.escolha == 0
            {
                InsereTexto("Então ele decide ir até o ...", 0)
            }
            else 
            {
                InsereTexto("Adeus!", 0)
                o_btn_avanca.ativo = 1
                
            }
            
        break
    
        case 7:
            InsereTexto("...", 0)
            o_btn_avanca.ativo = 1  
        break
    }
}