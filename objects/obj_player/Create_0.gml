event_inherited();
#region Camera (oito direções) ignora

// Funcionamento da camera em 8 direções

if (!instance_exists(obj_camera)) {
	instance_create_layer(0, 0, "Instances", obj_camera)
}

camera = instance_create_layer(x, y, layer, obj_camera)
camera.alvo = id
#endregion

#region Controle
//function getGamepad() {
//	for (var i = 0; i < gamepad_get_device_count(); i++) {
//		if (gamepad_is_connected(i)) {
//			global.gamepad_id = i;
//			return true;
//		}
//	}
//	return false;
//}
#endregion

#region Movimentação
// Variaveis para Movimentação

move_ad			= 0
move_ws			= 0
hsp				= 0
vsp				= 0 
spd				= 1
notpoggers		= 0
notpogger2		= 0
inicio			= 1
executando		= true
andar			= true
npc_dialogo		= noone
estado			= noone
estado_txt		= "parado"
max_vel			= 2

keyboard_set_map(ord("A"), vk_left)
keyboard_set_map(ord("D"), vk_right)
keyboard_set_map(ord("W"), vk_up)
keyboard_set_map(ord("S"), vk_down)

#endregion

#region Dialogo (Arrumar com novas variaveis) (com erro)
/*
estado_indo_dialogo = function() {
	estado_txt = "Indo p/ Dialogo"	
	sprite_index = spr_playerBack_idle
	andar = false

	if (npc_dialogo) {
		var _x = npc_dialogo.x
		var _y = npc_dialogo.y + npc_dialogo.margem
		//if (bbox_top != _y) {
		//	velv = sign(_y - bbox_top)
		//	sprite_index = spr_playerBack_idle
		//	y = round(y)
		//} else if (x != _x) {
		//	sprite_index = spr_playerBack_idle
		//	velh = sign(_x - x)
			
		//	xscale = sign(_x - x)
			
		//	x = round(x)
		//} else {
		//	estado = estado_dialogo()	
		//}
	}
}

estado_dialogo = function() {
		estado_txt = "Dialogo"
		velh = 0
		velv = 0

		andar = false
		sprite_index = spr_playerBack_idle
		max_vel = 0
		//if (!instance_exists(obj_dialogo)) {
		//	var _obj_dialogo = instance_create_depth(0, 0 , 0, obj_dialogo)
		//		with(npc_dialogo) {
		//			_obj_dialogo.dialogo = dialogo	
		//		}
		//}
		if (!instance_exists(obj_dialogo)){
		var _obj_dialogo = instance_create_depth(0,0,0,obj_dialogo)
		_obj_dialogo.player = id
			//passa o dialogo do npc o obj dialogo
			with(obj_npc){
			_obj_dialogo.dialog = dialogg
		}
	}
}

estado_dialogo_false = function() {
		andar = true
		instance_destroy(obj_dialogo)
}
*/
#endregion

