if (global.pause == false) {
//dialo(dialog)
var _guil = display_get_gui_width()
var _guia = display_get_gui_height()

var _xx = 0
var _yy = _guia - 200
var _c = make_colour_rgb(39, 39, 39);

draw_set_font(fnt_monocraft_dialogo)
draw_rectangle_color(_xx, _yy, _guil, _guia, _c, _c, _c, _c, false)
draw_text_ext(_xx + 32, _yy + 32, texto[pagina], 32, _guil - 64)
}

