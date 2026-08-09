if global.slot[0] != "" draw_sprite(s_lampada_icone, global.slot[0], 135, 29)
    
if global.slot[0] == 0 // luz
{
    if global.slot[1] != "" draw_sprite(s_cafe_icone, global.slot[1], 156, 29) //cafe/sono
} 
else //trevas
{
	if global.slot[1] != "" draw_sprite(s_escolha_icone, global.slot[1], 156, 29) //sim/nao
}   

if global.slot[0] == 0 // luz
{
    if global.slot[1] == 0
    {
        if global.slot[2] != "" draw_sprite(s_megafone_icone, global.slot[2], 177, 29) //megafone/ir até    
    }
    else 
    {
        if global.slot[2] != "" draw_sprite(s_banheiro_icone, global.slot[2], 177, 29) //banheiro/pc    	
    }    
}
else // trevas
{
    if global.slot[1] == 0 // sim/nao
    {
        if global.slot[2] != "" draw_sprite(s_celular2_icone, global.slot[2], 177, 29)  
    } 
    else 
    {
        if global.slot[2] != "" draw_sprite(s_escolha_icone, global.slot[2], 177, 29)	
    }
}

if global.slot[0] == 0 //luz
{
    if global.slot[1] == 0 //cafe/sono
    {
        if global.slot[2] == 0 //megafone/ir ate
        {
            if global.slot[3] != "" draw_sprite(s_celular_icone, global.slot[3], 198, 29) //celular/ambulancia
        }
        else 
        {
            //FINAL BACKROOMS    	
        }    
    }    
} 
else 
{
    if global.slot[1] == 0 && global.slot[2] == 0
    {
        if global.slot[3] != "" draw_sprite(s_porta_icone, global.slot[3], 198, 29)    
    }
}

if  global.slot[0] == 0 && global.slot[1] == 0 && global.slot[2] == 0 && global.slot[3] == 1
{
    if global.slot[4] != "" draw_sprite(s_seguir_icone, global.slot[4], 219, 29)    
}

if global.slot[0] == 1 && global.slot[1] == 0 && global.slot[2] == 0 && global.slot[3] == 0
{
    if global.slot[4] != "" draw_sprite(s_hospital_icone, global.slot[4], 219, 29)   
}

//show_debug_message(global.slot)