//var _meio_tela = display_get_gui_height() / 2
//var _meio = display_get_gui_width() / 2

//draw_set_valign(1)

draw_set_font(fnt_menu)

if (global.botao == 2) {
	draw_set_color(c_black)
		draw_set_font(fnt_menu_bold)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_text(x, y , menu[0])
}

if (global.botao == 1) {
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