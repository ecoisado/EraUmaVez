if global.slot[0] != "" draw_sprite(s_lampada_icone, global.slot[0], 135, 22)
    
if global.slot[0] == 0 // luz
{
    if global.slot[1] != "" draw_sprite(s_cafe_icone, global.slot[1], 156, 22) //cafe/sono
} 
else if global.slot[0] == 1 //trevas
{
	if global.slot[1] != "" draw_sprite(s_escolha_icone, global.slot[1], 156, 22) //sim/nao
}   

if global.slot[0] == 0 // luz
{
    if global.slot[1] == 0
    {
        if global.slot[2] != "" draw_sprite(s_megafone_icone, global.slot[2], 177, 22) //megafone/ir até    
    }
    else 
    {
        if global.slot[2] != "" draw_sprite(s_banheiro_icone, global.slot[2], 177, 22) //banheiro/pc    	
    }    
}
else // trevas
{
    if global.slot[1] == 0 // sim/nao
    {
        if global.slot[2] != "" draw_sprite(s_escolha_icone, global.slot[2], 177, 22)  
    } 
    else 
    {
        if global.slot[2] != "" draw_sprite(s_escolha_icone, global.slot[2], 177, 22)	
    }
}

if global.slot[0] == 0 //luz
{
    if global.slot[1] == 0 //cafe/sono
    {
        if global.slot[2] == 0 //megafone/ir ate
        {
            if global.slot[3] != "" draw_sprite(s_celular_icone, global.slot[3], 198, 22) //celular/ambulancia
        }    
    }    
} //no caso de escolher a escuridao o jogo encerra e não preenche mais slots.


show_debug_message(global.slot)