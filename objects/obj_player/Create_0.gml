#region Camera (oito direções)

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

// Declaração de variaveis para Movimentação

move_ad = 0
move_ws = 0
hsp=0
vsp=0 
spd=1
notpoggers = 0
notpogger2 = 0
inicio = 1
executando = true
#endregion