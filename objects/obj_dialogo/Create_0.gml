#region Meu Fracasso ;(
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
#endregion

#region DIALOGOOOOOOOO (erro) (fracasso 2)
/*
dialog			= noone
indice			= 1
pag				= 0
player			= noone
escala_caixa	= 0

libera_player = function() {
	if (player) {
		with(player) {	
			andar = false
		}
	}
	instance_destroy()
	with (player) {
		andar = true	
	}
}

dialo = function(_dialogo)
{
	//Pegar tamanho da room para colocar a caixa de dialogo
	//Pode dar erro futuramente quando for dimensionar a tela rs
	static _gui_w		= display_get_gui_width() 
	static _gui_h		= display_get_gui_height() 
	static _spr_w		= sprite_get_width(spr_caixa_dialogo)
	static _spr_h		= sprite_get_height(spr_caixa_dialogo)
	
	//FONTEEE
	draw_set_font(fnt_monocraft_dialogo)
	
	//Conversao da da escala em pixels
	var _escala_x		= (_gui_w / _spr_w) * escala_caixa
	var _escala_y		= (_gui_h * .3) / _spr_h
	
	
	//Aumentando escala caixa
	escala_caixa		= lerp(escala_caixa, 1, .1)
	
	var _txt			= _dialogo.texto[pag]
	global.txt			= _txt
	var _txt_atual		= string_copy(_txt, 1, indice)
	var _txt_tam		= string_length(_txt)
	var _txt_vel		= global.vel_txt
	
	//Y y Y y y Y (yy)
	var _yy				= _gui_h - (_escala_y * _spr_h)
	var _xx				= _gui_w - (_escala_x * _spr_w)
	
	var _u_bord_y		= _yy
	var _u_bord_x		= _xx
	
	var _p_bord_y		= _escala_y 
	var _p_bord_x		= _escala_x 
	
	var _margem			= string_height("I")
	var _qnt_pag		= array_length(_dialogo.texto) - 1
	
	draw_sprite_ext(spr_caixa_dialogo, 0, 0, _yy, _escala_x , _escala_y, 0, c_white, 1) 
	
	if (escala_caixa > .99) escala_caixa = 1
	
	//So se So se tiver caixinha on
	if (escala_caixa >=1) {
	
		//Pular pagina
		if (keyboard_check_pressed(vk_space)) {
		
			//Indo ao final texto
			if (indice < _txt_tam) indice = _txt_tam
			else if (pag < _qnt_pag) {
				indice = 0	
				pag++
			} else {
				//Cabo a pagina
				libera_player()
				obj_player.max_vel = 2
			}
		}
	
		if (indice <= _txt_tam) indice += _txt_vel

		draw_text_ext(_margem, _yy + _margem, _txt_atual, _margem, _gui_w - _margem)
		draw_set_font(-1)
	}
}
*/
#endregion

npc_nome = "";
texto[0] = "";
pagina = 0

inicializar = false





