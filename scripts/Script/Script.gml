/*
Possivel solução para o erro "The type 'id.Instance......'
Caso erro no controle, usar antiga "global.gamepad_id = noone;"
Motivo da função "gamepad_button_check" dar erro é por causa que a mesma apenas aceita
como primeiro argumento tipo 'Real' e noone teoricamente não faz parte :/
*/

//Função Desconhecida
function getGamepad() {
	for (var i = 0; i < gamepad_get_device_count(); i++) {
		if (gamepad_is_connected(i)) {
			global.gamepad_id = i;
			return true;
		}
	}
	return false;
}
getGamepad();


global.gamepad_id			= 0;
global.general_collision	= [obj_colisao, obj_mesa, obj_mesa_bar, obj_parede, obj_cadeira, obj_npcc]
global.botao				= 1
global.debug				= false
global.pause				= false
global.vel_txt				= .4
