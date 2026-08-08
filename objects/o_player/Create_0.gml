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
                    InsereTexto("Enquanto isso...", 0)
                    InsereTexto("num quarto de hotel, acabando de acordar, conhecemos nosso personagem, o Nosde!", 0) 
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
            global.clicou = 0
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
                    InsereTexto("ele olha pela janela e tudo parece normal! Então ele vai até...", 0)
                }
            }
            else //if global.slot[1] == 1 Qual é mano? me dá outra chance!
            {
                //Vamos tentar denovo?
                if global.slot[1] == 1 MostrandoImagem("Legendas", o_resposta2) 	
            }  
              
            
               
        break
    
        case 6: 
            global.clicou = 0
            if global.slot[0] == 0
            {
                if global.slot[1] == 0 //ela está na calçada, esperando o sinal fechar para atravessar para o outro lado da rua
                {
                    MostrandoImagem("Legendas", o_megafone)
                    //MostrandoImagem() CHAMAR / IR ATÉ
                }
                else //então ele acorda assustado com barulho de buzina!
                {
                    MostrandoImagem("Legendas", o_banheiro)
                    //MostrandoImagem() PC / BANHEIRO  	
                }    
                
            }
            else //globalslot[0] == 1 - escuridao
            {
                if global.slot[1] == 1
                {
                    if global.slot[2] == 0
                    {
                        o_btn_avanca.ativo = 1
                        InsereTexto("que barulho foi esse?", 0)    
                    }
                    else 
                    {
                        o_btn_avanca.ativo = 1
                        InsereTexto("Adeus!", 0)
                        InsereTexto("...",0 )	
                        global.finalizando = 1
                        global.comecando = 0
                    }
                }
                
                
            }
            
        break
    
        case 7:
            if global.slot[0] == 0
            {
                if global.slot[1] == 0
                {
                    if global.slot[2] == 0
                    {
                        o_btn_avanca.ativo = 1 
                        InsereTexto("No momento em que atravessava a rua, a Meg vira-se para te ver...", 0)  
                    }    
                }    
            }
        break
    
        case 8:
            if global.slot[0] == 0
            {
                if global.slot[1] == 0
                {
                    if global.slot[2] == 0
                    {
                        o_btn_avanca.ativo = 1 
                        InsereTexto("Nesse mesmo instante um carro, cujo motorista estava falando no celular, buzina e freia bruscamente..", 0)
                    }    
                }    
            }
            
        break
    
        case 9:
            if global.slot[0] == 0
            {
                if global.slot[1] == 0
                {
                    if global.slot[2] == 0
                    {
                        o_btn_avanca.ativo = 1    
                        InsereTexto("Porém não consegue evitar a colisão com a Meg, que é arremessada no chão!", 0) 
                    }    
                }    
            }
             
        break
    
        case 10:
            if global.slot[0] == 0
            {
                if global.slot[1] == 0
                {
                    if global.slot[2] == 0
                    {
                        o_btn_avanca.ativo = 1    
                        InsereTexto("o Nosde sai de casa, correndo desesperado em direção a Meg", 0)  
                    }    
                }    
            }
            
        break
    
        case 11:
            if global.slot[0] == 0
            {
                if global.slot[1] == 0
                {
                    if global.slot[2] == 0
                    {
                        o_btn_avanca.ativo = 1    
                        InsereTexto("quando chega no local do acidente, o Nosde percebe que a Meg está inconsciente, uma ambulância já foi chamada!", 0) 
                    }    
                }    
            }
             
        break
    
        case 12:
            if global.slot[0] == 0
            {
                if global.slot[1] == 0
                {
                    if global.slot[2] == 0
                    {
                        o_btn_avanca.ativo = 1    
                        InsereTexto("enquanto espera a ambulância, um homem que passava na calçada avisa que tem um celular tocando na casa em frente", 0) 
                    }    
                }    
            }
             
        break
    
        case 13:
            if global.slot[0] == 0
            {
                if global.slot[1] == 0
                {
                    if global.slot[2] == 0
                    {
                        o_btn_avanca.ativo = 1    
                        InsereTexto("o Nosde ouve o homem e percebe que é seu celular tocando", 0)
                    }    
                }    
            }
              
        break
    
        case 14:
            global.clicou = 0
            if global.slot[0] == 0
            {
                if global.slot[1] == 0
                {
                    if global.slot[2] = 0
                    {
                        MostrandoImagem("Legendas", o_celular)
                    }
                }
            } 
        break
        
        case 15:
            global.clicou = 0
            o_btn_avanca.ativo = 1
            if global.slot[0] == 0
            {
                if global.slot[1] == 0
                {
                    if global.slot[2] = 0
                    {
                        if global.slot[3] = 0
                        {
                            InsereTexto("Quando o Nosde está entrando em casa para atender o celular, ele sente um calafrio e tem a impressão de ter ouvido alguém lhe chamando!", 0)
                        }
                        else 
                        {
                        	InsereTexto("Quando a ambulância chega, o Nosde se disponibiliza para acompanhar a Meg, porém antes de entrar na ambulância...", 0)
                        }
                        
                    }
                }
            } 
             
        break
    
        case 16:
            o_btn_avanca.ativo = 1
            if global.slot[0] == 0
            {
                if global.slot[1] == 0
                {
                    if global.slot[2] = 0
                    {
                        if global.slot[3] = 0
                        {
                            InsereTexto("então quando o Nosde atende a ligação, de um número desconhecido, a voz de um homem diz, não vá para o hospital...", 0)
                        }
                        else 
                        {
                        	InsereTexto("uma mulher desconhecida toca no ombro do Nosde e sussura em seu ouvido, não vá para o hospital...", 0)
                        }
                        
                    }
                }
            }
                
        break
    
        case 17:
            o_btn_avanca.ativo = 1
            if global.slot[0] == 0
            {
                if global.slot[1] == 0
                {
                    if global.slot[2] = 0
                    {
                        if global.slot[3] = 0
                        {
                            InsereTexto("O Nosde não entendo o que a voz queria dizer, então ele volta até a rua para ver a meg, porém quando ele sai de casa...", 0)
                        }
                        else 
                        {
                        	InsereTexto("uma mulher desconhecida toca no ombro do Nosde e sussura em seu ouvido, não vá para o hospital...", 0)
                        }
                        
                    }
                }
            }
                
        break
    
        case 18:
            o_btn_avanca.ativo = 1
            if global.slot[0] == 0
            {
                if global.slot[1] == 0
                {
                    if global.slot[2] = 0
                    {
                        if global.slot[3] = 0
                        {
                            InsereTexto("O trânsito parece normal, o Nosde pergunta para uma mulher que estava no ponto de ônibus, se ela viu a ambulância levando a Meg...", 0)
                        }
                        else 
                        {
                        	InsereTexto("uma mulher desconhecida toca no ombro do Nosde e sussura em seu ouvido, não vá para o hospital...", 0)
                        }
                        
                    }
                }
            }
                
        break
    
        case 19:
            o_btn_avanca.ativo = 1
            if global.slot[0] == 0
            {
                if global.slot[1] == 0
                {
                    if global.slot[2] = 0
                    {
                        if global.slot[3] = 0
                        {
                            InsereTexto("a mulher responde que está esperando o ônibus por uns 30 minutos e não viu nenhuma ambulância ou acidente...", 0)
                        }
                        else 
                        {
                        	InsereTexto("uma mulher desconhecida toca no ombro do Nosde e sussura em seu ouvido, não vá para o hospital...", 0)
                        }
                        
                    }
                }
            }
                
        break
    
        case 20:
            o_btn_avanca.ativo = 1
            if global.slot[0] == 0
            {
                if global.slot[1] == 0
                {
                    if global.slot[2] = 0
                    {
                        if global.slot[3] = 0
                        {
                            InsereTexto("o Nosde começa a se perguntar se não foi tudo uma alucinação, embora parecia muito real", 0)
                        }
                        else 
                        {
                        	InsereTexto("uma mulher desconhecida toca no ombro do Nosde e sussura em seu ouvido, não vá para o hospital...", 0)
                        }
                        
                    }
                }
            }
                
        break
    
        case 21:
            o_btn_avanca.ativo = 1
            if global.slot[0] == 0
            {
                if global.slot[1] == 0
                {
                    if global.slot[2] = 0
                    {
                        if global.slot[3] = 0
                        {
                            InsereTexto("então o Nosde decide voltar pra casa. Ele pega o celular e liga pra o amigo None...", 0)
                        }
                        else 
                        {
                        	InsereTexto("uma mulher desconhecida toca no ombro do Nosde e sussura em seu ouvido, não vá para o hospital...", 0)
                        }
                        
                    }
                }
            }
                
        break
    
        case 22:
            o_btn_avanca.ativo = 1
            if global.slot[0] == 0
            {
                if global.slot[1] == 0
                {
                    if global.slot[2] = 0
                    {
                        if global.slot[3] = 0
                        {
                            InsereTexto("o None lembra aos Nosde que eles só tem mais um dia para entregar o projeto do jogo que estão fazendo...", 0)
                        }
                        else 
                        {
                        	InsereTexto("uma mulher desconhecida toca no ombro do Nosde e sussura em seu ouvido, não vá para o hospital...", 0)
                        }
                        
                    }
                }
            }
                
        break
    
        case 23:
            o_btn_avanca.ativo = 1
            global.clicou = 0
            if global.slot[0] == 0
            {
                if global.slot[1] == 0
                {
                    if global.slot[2] = 0
                    {
                        if global.slot[3] = 0
                        {
                            
                            InsereTexto("O Nosde pensa, que o dia foi bem maluco, mas volta a focar no projeto do seu Jogo.", 0)
                            InsereTexto("Então, nossa jornada chegou ao fim!, Obrigado por vir até aqui!", 0)
                        }
                        else 
                        {
                        	InsereTexto("uma mulher desconhecida toca no ombro do Nosde e sussura em seu ouvido, não vá para o hospital...", 0)
                        }
                        
                    }
                }
            }
                
        break
    
        case 24:
            if global.slot[0] == 0
            {
                if global.slot[1] == 0
                {
                    if global.slot[2] == 0
                    {
                        if global.slot[3] == 0
                        {
                            o_btn_avanca.ativo = 1                            
                        }    
                    }    
                }    
            }    
        break
    
        case 25:
            if global.slot[0] == 0
            {
                if global.slot[1] == 0
                {
                    if global.slot[2] == 0
                    {
                        if global.slot[3] == 0
                        {
                            o_btn_avanca.ativo = 1
                            InsereTexto("Adeus!", 0) 
                            global.finalizando = 1
                            global.comecando = 0
                        }    
                    }    
                }    
            }    
        break
    }
}

