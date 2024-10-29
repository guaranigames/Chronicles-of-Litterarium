event_inherited();
#region Camera (oito direções) ignora

// Funcionamento da camera em 8 direções

//camera = instance_create_layer(x, y, layer, obj_camera)
//camera.alvo = id
#endregion

#region Controle
function getGamepad() {
	for (var i = 0; i < gamepad_get_device_count(); i++) {
		if (gamepad_is_connected(i)) {
			global.gamepad_id = i;
			return true;
		}
	}
	return false;
}
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
max_vel			= 1.2
acel			= 0

keyboard_set_map(ord("A"), vk_left)
keyboard_set_map(ord("D"), vk_right)
keyboard_set_map(ord("W"), vk_up)
keyboard_set_map(ord("S"), vk_down)

#endregion

#region Dialogo (Arrumar com novas variaveis)
estado_indo_dialogo = function() {
	estado_txt = "Indo p/ Dialogo"	
	andar = false
	sprite_index = spr_playerBack_idle
	x = obj_npc.x - 15
	y = obj_npc.y - 3
	
	if (npc_dialogo) {
		var _x = npc_dialogo.x 
		if (x != _x) {
			x = npc_dialogo.x - 15
			y = npc_dialogo.y - 3
			x = round(x)
			y = round(y)
		} else {
			estado = estado_dialogo()
		}
	}
}

estado_dialogo = function() {
		estado_txt = "Dialogo"
		andar = false
		sprite_index = spr_playerBack_idle
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

#endregion