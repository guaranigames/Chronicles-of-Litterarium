//dialogo = noone

//cria_dialogo = function(_dialogo) {
//	show_debug_message("dd")
//	//var _txt	= _dialogo.texto[0];
//	//var _yy		= display_get_gui_height() - 100
//	//draw_set_font(fnt_menu)
//	//draw_text(20, _yy, _txt)
//	//draw_set_font(-1)
//	var _txt = dialogo.texto[0]
//}

dialog = noone
dialo = function(_dialogo)
{
	var _txt = _dialogo.texto[0]
	var _yy = display_get_gui_height() - 100

	draw_set_font(fnt_menu)
	draw_text(20, _yy, _txt)
	draw_set_font(-1)
}