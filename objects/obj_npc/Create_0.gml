#region Dialogo Mono

dialogg = 
{
	texto	: [" HAHAHAHAHHA ", "haiiii eu gosto quando me seduzem assim e quando provavelmente colocam diversos objetos legais dentro do coiso la e quando certas pessoas inventam de fazer um texto enorrrrrrrrrrrrrrrrrrme para apenas caber na tela xd", "esta porra é o dialogo 3 eu nao aguento mais digitar coisa estranha apenas para conseguir ocupar espaço", "a vida é sobre o tedio de gozar dentro e a ansia e engravidar aquela gostosa"],
	retrato : [],
	txt_vel : global.vel_txt
}

/* Exemplo para copia em multiplos NPC's

dialogg = 
{
	texto	: [" Teste 1 ", " Teste 2 "]
	
	//Vel do texto
	txt_vel : .3
}

*/

#endregion

#region Area estado dialogo
larg = 25;
alt = 8;
margem = 5;

debug_area = function() {
	var _y = bbox_bottom + margem;
	draw_rectangle(x - larg / 2, _y, x + larg / 2, _y + alt, true)
}

//Area do dialogo
dialogo_area = function() {
	var _y = bbox_bottom + margem
	var _player = collision_rectangle(x - larg / 2, _y, x + larg / 2, _y + alt, obj_player, 0, 1)
	
	
	image_blend = c_white
	if (_player) {
		image_blend = c_red
		
		//Caso enter, entra em estado dialogo
		if (keyboard_check_pressed(vk_enter)) {
			with(_player) {
				if (estado != estado_dialogo() ) {
					estado = estado_indo_dialogo()
					
					npc_dialogo = other.id
				}
			}
		}
		
		if (keyboard_check_pressed(vk_escape)) {
			with(_player) {
				estado_dialogo_false()
			}
		}
	} 
}
#endregion