#region Dialogo Mono

dialogg = 
{
	texto	: ["dawdwaawawddawaw"],
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
larg = 15;
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
	} 
}
#endregion