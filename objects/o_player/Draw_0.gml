draw_self()

if room_get_name(room) != "Room1" exit;

draw_set_font(f_legendas)
draw_set_halign(fa_left)
draw_set_valign(fa_middle)
draw_text_transformed(10, room_height - 5, "Esc - Reinicia a gameplay", .05, .05, 0)
draw_text_transformed(room_width/2 - 45, room_height - 5, "F1 - Sair", .05, .05, 0)
draw_text_transformed(room_width/2 - 5, room_height - 5, "F11 - Tela Cheia", .05, .05, 0)
draw_set_halign(-1)
draw_set_valign(-1 )
draw_set_font(-1)