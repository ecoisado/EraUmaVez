if global.slot[0] != "" draw_sprite(s_lampada_icone, global.slot[0], 135, 22)
    
if global.slot[0] == 0
{
    if global.slot[1] != "" draw_sprite(s_cafe_icone, global.slot[1], 156, 22)
} 
else 
{
	if global.slot[1] != "" draw_sprite(s_escolha_icone, global.slot[1], 156, 22)
}   


if global.slot[2] != "" draw_sprite(s_escolha_icone, global.slot[2], 177, 22)
if global.slot[3] != "" draw_sprite(s_lampada_icone, global.slot[3], 198, 22)
if global.slot[4] != "" draw_sprite(s_lampada_icone, global.slot[4], 219, 22)