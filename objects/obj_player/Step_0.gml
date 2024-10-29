#region Debug
if (global.pause) exit;

if (keyboard_check_released(vk_tab)) global.debug = !global.debug
#endregion

#region All moovie

#region OLD MOOVIE
// Movimentação com Colisão Ativa (obj_collision, obj_wall, obj_mesa, obj_cadeira) por enquanto.
// Suporte ao controle
// Andar
/*
if (andar = true) {
	
var _left_key, _right_key, _up_key, _down_key

getGamepad();

_left_key = keyboard_check(ord("A")) || gamepad_button_check(global.gamepad_id, gp_padl)
_right_key = keyboard_check(ord("D")) || gamepad_button_check(global.gamepad_id, gp_padr)
_up_key = keyboard_check(ord("W")) || gamepad_button_check(global.gamepad_id, gp_padu)
_down_key = keyboard_check(ord("S")) || gamepad_button_check(global.gamepad_id, gp_padd)

move_ad = -_left_key + _right_key

hsp = move_ad * spd

if place_meeting(x+hsp,y, global.general_collision) {
	while !place_meeting(x+sign(hsp),y,global.general_collision) {
		x+=sign(hsp)
	}
	hsp=0
}

x += hsp

move_ws = -_up_key + _down_key

vsp = move_ws * spd

if place_meeting(x,y+vsp,global.general_collision) {
	while !place_meeting(x,y+sign(vsp),global.general_collision) {
		y+=sign(vsp)
	}
	vsp=0
}
y += vsp

// Trava para quatro direções (arrumar)
/*
if (_up_key && _left_key) or (_up_key && _right_key) or (_down_key && _left_key) or (_down_key && _right_key) {
	spd = 0
} else {
	spd = 1
}
*/
#endregion

#region New Moovie
var _up		= keyboard_check(vk_up)
var _down	= keyboard_check(vk_down)
var _left   = keyboard_check(vk_left)
var _right	= keyboard_check(vk_right)

if ((_up xor _down) or (_left xor _right)) {
	//Direção
	var _dir = point_direction(0, 0, (_right - _left), (_down - _up))

	//Valor velh
	//var _max_velh = lengthdir_x(max_vel, _dir)
	velh = lengthdir_x(max_vel, _dir)

	//Valor velv
	//var _max_velv = lengthdir_y(max_vel, _dir)
	velv = lengthdir_y(max_vel, _dir)
	
} else {
	velh = 0
	velv = 0
} 
#endregion
#endregion

#region Sprite Sucumbido
// Alteração de sprite por Pressionamento de Tecla

if (!_up || !_down) {
	if (_right) {
		sprite_index = spr_playerRight
	}
	if (_left) {
		sprite_index = spr_playerLeft
	}
} 

if (_down) {
	sprite_index = spr_playerFront
} 

if (_up) {
	sprite_index = spr_playerBack
}

/* Caso nenhuma tecla esteja sendo pressionada, o sprite entra no estado "idle" de acordo com o
último sprite a ser definido por alguma tecla de movimento. */

if (sprite_index == spr_playerRight) {
	if (!_right) {
		sprite_index = spr_playerRight_idle
	}
}
if (sprite_index == spr_playerLeft) {
	if (!_left) {
		sprite_index = spr_playerLeft_idle
	}
}
if (sprite_index == spr_playerFront) {
	if (!_down) {
		sprite_index = spr_playerFront_idle
	}
}
if (sprite_index == spr_playerBack) {
	if (!_up) {
		sprite_index = spr_playerBack_idle
	}
}


#endregion

#region Old Sucumbido
// Check de qual tecla foi pressionada a fim de pausar a animação quando parado
/*
if (keyboard_lastkey == ord("W") && executando == false) {
    sprite_index = spr_playerBack_idle
}

if (keyboard_lastkey == ord("S") && executando == false) {
    sprite_index = spr_playerFront_idle
}

if (keyboard_lastkey == ord("D") && executando == false) {
    sprite_index = spr_playerRight_idle
}

if (keyboard_lastkey == ord("A") && executando == false) {
    sprite_index = spr_playerLeft_idle
}
*/
#endregion

#region Sucumbido
// Alteração de sprite caso parado

// Alteração de sprite caso andando
if (velh < 0 || velh > 0) {
	image_speed = 2
	//executando = true
} 

if (velv < 0 || velv > 0) {
	image_speed = 2
	//executando = true
} 

if (velh == 0 and velv == 0) {
	image_speed = 0
	image_index = 0
	//executando = false
} 


// Easter Egg
//if (keyboard_check(vk_shift)) {
//	notpoggers++	
//} else if (keyboard_check(vk_space)) {
//	notpogger2++
//} 
//if (notpoggers > 7 && notpogger2 > 7) {
//	sprite_index = spr_player_front_preto
//}
#endregion