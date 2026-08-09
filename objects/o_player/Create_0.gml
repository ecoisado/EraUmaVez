pos1_x = 45
pos2_x = pos1_x + 45
posY = 35

clareou = 0

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
            InsereTexto("Um ser que tinha entre [c_yellow][wave]duas[/wave][/c] escolhas pra fazer...", 0)
        break
        
        case 1: //Um ser que tinha entre duas escolhas pra fazer...
            MostrandoImagem("Objetos", o_lampada)
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
                    global.clicou = 0
                    o_btn_avanca.ativo = 1
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
            else //if global.slot[0] == 0 
            {
                
                if global.slot[1] = 0
                {
                    o_btn_avanca.ativo = 1
                }
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
                if global.slot[1] = 0
                {
                    o_btn_avanca.ativo = 1
                    InsereTexto("O celular do Nosde começa a tocar...", 0)    
                    
                }
                
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
                        InsereTexto("No momento em que atravessava a rua, a Meg vira-se para ver o Nosde...", 0)  
                    }   
                    else 
                    {
                        o_btn_avanca.ativo = 1
                        InsereTexto("Quando está saindo de casa, o Nosde tropeça na calçada e vai parar numa Backrooms")	
                    } 
                }
                else 
                {
                    if global.slot[2] == 0
                    {
                        o_btn_avanca.ativo = 1
                        InsereTexto("Quando ele abre a tampa da privada uma gosma preta agarra o Nosde e arrasta ele pra dentro!", 0)  
                    }
                    else 
                    {
                    	o_btn_avanca.ativo = 1
                        InsereTexto("Claro que a Nintendo fica sabendo disso e envia mísseis com ogivas nucleares na casa do Nosde!", 0)
                    }
                      	
                }    
            }
            else 
            {
                if global.slot[1] == 0
                {
                    MostrandoImagem("Legendas", o_celular2)    
                }
                
                if global.slot[1] == 1 && global.slot[2] = 0
                {
                    o_btn_avanca.ativo = 1
                    InsereTexto("O nosde dá uma olhada pela janela, mas parece tudo em ordem!", 0)    
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
                    else 
                    {
                        o_btn_avanca.ativo = 1
                        InsereTexto("Então nossa jornada chegou ao fim! Obrigado por vir até aqui!", 0)
                            	
                    }    
                } 
                else 
                {
                    o_btn_avanca.ativo = 1
                    InsereTexto("Então nossa jornada chegou ao fim! Obrigado por vir até aqui!", 0) 
                }   
            }
            else 
            {
                if global.slot[1] == 0
                {
                    if global.slot[2] == 0
                    {
                        o_btn_avanca.ativo = 1
                        InsereTexto("O Nosde explica que falta pouca coisa pra terminar, e espera conseguir finalizar tudo a tempo de enviar pra gamejam!", 0)    
                    }    
                }
                
                if global.slot[1] == 0 && global.slot[2] == 1
                {
                    o_btn_avanca.ativo = 1
                    InsereTexto("Quando abre o chuveiro pra tomar banho, um buraco negro se abre bem nos pés do Nosde e ele é sugado pra escuridão!", 0)    
                }
                
                if global.slot[1] == 1 && global.slot[2] = 0
                {
                    o_btn_avanca.ativo = 1
                    InsereTexto("Então ele decide focar no desenvolvimento do jogo que ele está fazendo para Nonejam!", 0)    
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
                    else 
                    {
                        o_btn_avanca.ativo = 1
                        InsereTexto("...", 0)
                        global.finalizando = 1
                        global.comecando = 0    	
                    }    
                }  
                else 
                {
                    o_btn_avanca.ativo = 1
                    InsereTexto("...", 0)
                    global.finalizando = 1
                    global.comecando = 0		
                }  
            }
            else 
            {
                if global.slot[1] == 0 && global.slot[2] == 0
                {
                    instance_destroy(o_celular2)
                    o_btn_avanca.ativo = 1
                    InsereTexto("Enquanto o Nosde explicava algumas implementações na programação do jogo, ele escuta alguém batendo na porta", 0)     
                }	
                
                if global.slot[1] == 0 && global.slot[2] == 1
                {
                    o_btn_avanca.ativo = 1
                    var _esc = instance_create_layer(room_width/2, room_height/2, "Iluminacao", o_escuridao)
                    instance_destroy(o_celular2)
                    InsereTexto("Caramba, por essa você não esperava neh?", 0)    
                }
                
                if global.slot[1] == 1 && global.slot[2] = 0
                {
                    o_btn_avanca.ativo = 1
                    InsereTexto("e então todas as noites em claro, e falando para a namorada, só mais uns minutinhos antes de ir deitar-se valeram a pena!", 0)    
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
            else 
            {
                global.clicou = 0
                if global.slot[1] == 0 && global.slot[2] == 0
                {
                    MostrandoImagem("Legendas", o_porta)    
                }
                
                if global.slot[1] == 0 && global.slot[2] == 1
                {
                    
                    o_btn_avanca.ativo = 1
                    InsereTexto("Então nossa jornada chegou ao fim! Obrigado por vir até aqui!", 0)    
                }
                
                if global.slot[1] == 1 && global.slot[2] = 0
                {
                    o_btn_avanca.ativo = 1
                    InsereTexto("o Nosde consegue ficar entre os 20 melhores colocados!", 0)    
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
                        InsereTexto("quando chega no local do acidente, o Nosde percebe que a Meg está inconsciente. Uma ambulância já foi chamada!", 0) 
                    }    
                }    
            }
            else 
            {
                if global.slot[1] == 0 && global.slot[2] == 1
                {
                    instance_destroy(o_escuridao)
                    o_btn_avanca.ativo = 1
                    InsereTexto("...", 0)
                    global.finalizando = 1
                    global.comecando = 0
                       
                }
                
                if global.slot[1] == 0 && global.slot[2] == 0 && global.slot[3] == 0
                {
                    
                    global.clicou = 0
                    o_btn_avanca.ativo = 1
                    InsereTexto("O homem agarra os obros do Nosde e diz que o Nosde precisa ir no hospital imediatamente, depois o homem sai correndo pela rua...", 0)    
                }
                
                if global.slot[1] == 0 && global.slot[2] == 0 && global.slot[3] == 1
                {
                    
                    global.clicou = 0
                    o_btn_avanca.ativo = 1
                    InsereTexto("pena que ele dormiu demais e acabou perdendo o prazo de enviar o jogo pra gamejam!", 0)    
                }	
                
                
                if global.slot[1] == 1 && global.slot[2] = 0
                {
                    o_btn_avanca.ativo = 1
                    InsereTexto("Obrigado Meu Deus! Receba Suzuki, seu otário...brincadeira!!!!!", 0)    
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
            else 
            {
                if global.slot[1] == 0 && global.slot[2] == 0 && global.slot[3] == 0
                {
                    instance_destroy(o_porta)
                    global.clicou = 0
                    o_btn_avanca.ativo = 1
                    InsereTexto("o Nosde fica confuso, mas depois pensa e se isso for algum tipo de sinal? então ele...", 0)    
                }
                
                if global.slot[1] == 0 && global.slot[2] == 0 && global.slot[3] == 1
                {
                    
                    global.clicou = 0
                    o_btn_avanca.ativo = 1
                    InsereTexto("Então nossa jornada chegou ao fim! Obrigado por vir até aqui!", 0)    
                }
                
                if global.slot[1] == 1 && global.slot[2] = 0
                {
                    o_btn_avanca.ativo = 1
                    InsereTexto("Então nossa jornada chegou ao fim! Obrigado por vir até aqui!", 0)  
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
            else 
            {
                if global.slot[1] == 0 && global.slot[2] == 0 && global.slot[3] == 0
                {
                    MostrandoImagem("Legendas", o_hospital)    
                }	
                
                if global.slot[1] == 0 && global.slot[2] == 0 && global.slot[3] == 1
                {
                    
                    o_btn_avanca.ativo = 1
                    InsereTexto("...", 0)
                    global.finalizando = 1
                    global.comecando = 0
                       
                }
                
                
                if global.slot[1] == 1 && global.slot[2] = 0
                {
                    o_btn_avanca.ativo = 1
                    InsereTexto("...", 0)
                    global.finalizando = 1
                    global.comecando = 0
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
            else 
            {
                global.clicou = 0
                if global.slot[1] == 0 && global.slot[2] == 0 && global.slot[3] == 0 && global.slot[4] == 0
                {
                    o_btn_avanca.ativo = 1
                    InsereTexto("Chegando no hospital o Nosde vê uma correria dos enfermeiros e médicos...", 0)  
                }
                
                if global.slot[1] == 0 && global.slot[2] == 0 && global.slot[3] == 0 && global.slot[4] == 1
                {
                    o_btn_avanca.ativo = 1
                    InsereTexto("Quando o Nosde liga o PC uma Luz brilha muito forte e ele é sugado pra dentro do pc, Indo para em Minecraft!", 0)  
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
            else 
            {
                if global.slot[1] == 0 && global.slot[2] == 0 && global.slot[3] == 0 && global.slot[4] == 0
                {
                    o_btn_avanca.ativo = 1
                    InsereTexto("ele escuta um dos médicos falando, é um garoto que foi atropelado por um carro, ele está inconsciente...", 0)  
                }	
                
                if global.slot[1] == 0 && global.slot[2] == 0 && global.slot[3] == 0 && global.slot[4] == 1
                {
                    o_btn_avanca.ativo = 1
                    if !clareou
                    {
                        instance_create_layer(room_width/2, room_height/2, "Iluminacao", o_claridao2) 
                        clareou = 1
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
                            instance_destroy(o_celular)
                        	InsereTexto("uma mulher desconhecida toca no ombro do Nosde e sussura em seu ouvido, não vá para o hospital...", 0)
                        }
                        
                    }
                }
            }
            else 
            {
                if global.slot[1] == 0 && global.slot[2] == 0 && global.slot[3] == 0 && global.slot[4] == 0
                {
                    o_btn_avanca.ativo = 1
                    InsereTexto("então o Nosde vai pra entrada da sala pra onde os médicos estavam se dirigindo e ele vê, deitado na cama...", 0)  
                }	
                
                if global.slot[1] == 0 && global.slot[2] == 0 && global.slot[3] == 0 && global.slot[4] == 1
                {
                    o_btn_avanca.ativo = 1
                    InsereTexto("Então chegamos ao fim da nossa jornada! Obrigado por vir até aqui!", 0)
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
                        	InsereTexto("a mulher vira-se e sai andando, o Nosde fica sem entender e ele decide...", 0)
                        }
                        
                    }
                }
            }
            else 
            {
                if global.slot[1] == 0 && global.slot[2] == 0 && global.slot[3] == 0 && global.slot[4] == 0
                {
                    o_btn_avanca.ativo = 1
                    InsereTexto("ele mesmo! o Nosde não entende e começa a tremer, então uma sensação de vazio enche todo o seu corpo...", 0)  
                }	
                
                global.clicou = 0
                if global.slot[1] == 0 && global.slot[2] == 0 && global.slot[3] == 0 && global.slot[4] == 1
                {
                    o_btn_avanca.ativo = 1
                    InsereTexto("...", 0)
                    global.finalizando = 1
                    global.comecando = 0
                      
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
                            //show_message("case 18")
                            global.clicou = 0
                            //InsereTexto("...!", 0)
                        	MostrandoImagem("Legendas", o_seguir)
                        }
                        
                    }
                }
            }
            else 
            {
                if global.slot[1] == 0 && global.slot[2] == 0 && global.slot[3] == 0 && global.slot[4] == 0
                {
                    o_btn_avanca.ativo = 1
                    InsereTexto("...", 0)
                    var _esc = instance_create_layer(room_width/2, room_height/2, "Iluminacao", o_escuridao2)
                      
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
                            if global.slot[4] == 0 
                            {
                                InsereTexto("um motorista que vinha muito rápido, desvia o olhar para a ambulância e não percebe o Nosde bem na sua frente, atropelando e jogando o Nosde ao chão inconsciente!", 0)
                            }
                            else 
                            {
                            	InsereTexto("chegando no hospital! Os médicos retiram a Meg da ambulância, enquanto o Nosde fica por alguns segundos pensando naquela estranha mulher...", 0)
                            }
                        	
                        }
                        
                    }
                }
            }
            else 
            {
                if global.slot[1] == 0 && global.slot[2] == 0 && global.slot[3] == 0 && global.slot[4] == 0
                {
                    o_btn_avanca.ativo = 1
                    InsereTexto("Então aqui! chegamos ao fim da nossa jornada! Obrigado por vir até aqui!", 0)
                      
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
                            if global.slot[4] == 0
                            {
                                InsereTexto("Então chegamos ao fim da nossa jornada! Obrigado por vir até aqui!", 0)
                            }
                            else 
                            {
                                InsereTexto("Então o Nosde sai da ambulância e quando ele entra no hospital, o lugar está completamente vazio, como se estivesse abandonado...", 0)	
                            }
                        	
                        }
                        
                    }
                }
            }
            else 
            {
                if global.slot[1] == 0 && global.slot[2] == 0 && global.slot[3] == 0 && global.slot[4] == 0
                {
                    o_btn_avanca.ativo = 1
                    InsereTexto("Adeus!", 0)

                    
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
                            if global.slot[4] == 0
                            {
                                o_btn_avanca.ativo = 1
                                InsereTexto("...", 0)
                                global.finalizando = 1
                                global.comecando = 0
                            }
                            else 
                            {
                                InsereTexto("o Nosde começa a sentir uma forte pressão na cabeça e escuta uma voz que diz, DENOVO!", 0)	
                            }
                        	
                        }
                        
                        
                        
                    }
                }
            }
            else 
            {
                global.clicou = 0
                if global.slot[1] == 0 && global.slot[2] == 0 && global.slot[3] == 0 && global.slot[4] == 0
                {
                    instance_destroy(o_escuridao2)
                    o_btn_avanca.ativo = 1
                    InsereTexto("...", 0)
                    global.finalizando = 1
                    global.comecando = 0
                      
                }	
            }
                
        break
    
        case 22:
            clareou = 0
            o_btn_avanca.ativo = 1
            if global.slot[0] == 0
            {
                if global.slot[1] == 0
                {
                    if global.slot[2] = 0
                    {
                        if global.slot[3] = 0
                        {
                            InsereTexto("o None lembra ao Nosde que eles só tem mais um dia para entregar o projeto do jogo que estão fazendo...", 0)
                        }
                        else 
                        {
                        	if global.slot[4] == 1 
                                {   
                                    if !clareou
                                    {
                                        clareou = 1
                                        instance_create_layer(room_width/2, room_height/2, "Iluminacao", o_claridao3)
                                    }
                                     
                                }
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
                            InsereTexto("Então nossa jornada chegou ao fim! Obrigado por vir até aqui!", 0)
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

reiniciar = function()
{
    global.texto = ["", ""]
    global.indice_atual = 0
    global.clicou = 0
    global.slot = ["", "", "", "", "", "", "", "", "", ""]
    global.indice = 0
    global.tocar = 0
    audio_group_stop_all(agMusica) 
    room_restart()
}