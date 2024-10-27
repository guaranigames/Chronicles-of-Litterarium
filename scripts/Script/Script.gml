/*
Possivel solução para o erro "The type 'id.Instance......'
Caso erro no controle, usar antiga "global.gamepad_id = noone;"
Motivo da função "gamepad_button_check" dar erro é por causa que a mesma apenas aceita
como primeiro argumento tipo 'Real' e noone teoricamente não faz parte :/
*/
global.gamepad_id = 0;
global.general_collision = [obj_colisao, obj_mesa, obj_mesa_bar, obj_parede, obj_cadeira, obj_npc]
global.botao = 1
global.debug = false