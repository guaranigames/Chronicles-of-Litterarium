//var _meio_tela = display_get_gui_height() / 2
//var _meio = display_get_gui_width() / 2

draw_set_valign(1)

draw_set_font(fnt_menu)

var _alt = string_height("I")

for (var i = 0; i < array_length(menu); i++) {
	var _cor = c_white
	
	if (i == atual) {
		_cor = c_red	
	}
	
	draw_set_color(_cor)
	draw_text(263, 145 + i * _alt + 55 , menu[i])
	//draw_text(261, _meio_tela + i * (_alt + 5) - 55, menu[i])
	draw_set_color(-1)
}

// Reset de alinhamento
draw_set_valign(0)

// Reset da fonte
draw_set_font(-1)