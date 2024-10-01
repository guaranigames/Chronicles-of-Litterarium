//var _meio_tela = display_get_gui_height() / 2
//var _meio = display_get_gui_width() / 2

//draw_set_valign(1)

draw_set_font(fnt_menu)

//var _alt = string_height("I")

//for (var i = 0; i < global.botao; i++) {
//	var _cor = c_white
	
//	if (i == global.botao) {
//		_cor = c_red	
//	}
	
//	draw_set_color(_cor)
//	draw_text(x, y + i * _alt + 55 , menu[i])
//	//draw_text(261, _meio_tela + i * (_alt + 5) - 55, menu[i])
//	draw_set_color(-1)
//}

if (global.botao == 1) {
	draw_set_color(c_black)
	draw_set_font(fnt_menu_bold)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_text(x, y , menu[0])
}

if (global.botao == 2) {
	draw_set_color(c_black)
	draw_set_font(fnt_menu)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_text(x, y , menu[0])
}

// Reset de alinhamento
draw_set_valign(0)

// Reset da fonte
draw_set_font(-1)

// Reset H e V align
draw_set_halign(-1)
draw_set_valign(-1)