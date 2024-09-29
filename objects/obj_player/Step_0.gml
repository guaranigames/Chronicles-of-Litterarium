#region Fortinite Mooovies

// Movimentação com Colisão Ativa
// Suporte ao controle

var leftKey, rightKey, upKey, downKey

getGamepad();

leftKey = keyboard_check(ord("A")) || gamepad_button_check(global.gamepad_id, gp_padl)
rightKey = keyboard_check(ord("D")) || gamepad_button_check(global.gamepad_id, gp_padr)
upKey = keyboard_check(ord("W")) || gamepad_button_check(global.gamepad_id, gp_padu)
downKey = keyboard_check(ord("S")) || gamepad_button_check(global.gamepad_id, gp_padd)

move_ad = -leftKey + rightKey

hsp = move_ad * spd

if place_meeting(x+hsp,y, [obj_collision, obj_wall]) {
	while !place_meeting(x+sign(hsp),y,[obj_collision, obj_wall]) {
		x+=sign(hsp)
	}
	hsp=0
}

x += hsp

move_ws = -upKey + downKey

vsp = move_ws * spd

if place_meeting(x,y+vsp,[obj_collision, obj_wall]) {
	while !place_meeting(x,y+sign(vsp),[obj_collision, obj_wall]) {
		y+=sign(vsp)
	}
	vsp=0
}
y += vsp

// tentativa de código para limitar movimentação apenas em 4 direções (ao contrário das 8 direções).
if (upKey && leftKey) or (upKey && rightKey) or (downKey && leftKey) or (downKey && rightKey) {
	spd = 0
} else {
	spd = 1
}

#endregion

#region Sprite Sucumbido
// Alteração de sprite por Pressionamento de Tecla
if (!upKey || !downKey) {
	if (leftKey) {
		sprite_index = spr_playerLeft
	}
	
	if (rightKey) {
		sprite_index = spr_playerRight
	}
} 

if (downKey) {
	sprite_index = spr_playerFront
} 

if (upKey) {
	sprite_index = spr_playerBack
}

/* Caso nenhuma tecla esteja sendo pressionada, o sprite entra no estado "idle" de acordo com o
último sprite a ser definido por alguma tecla de movimento. */

if (sprite_index == spr_playerBack) {
	if (!upKey) {
		sprite_index = spr_playerBack_idle
	}
}
if (sprite_index == spr_playerRight) {
	if (!rightKey) {
		sprite_index = spr_playerRight_idle
	}
}
if (sprite_index == spr_playerFront) {
	if (!downKey) {
		sprite_index = spr_playerFront_idle
	}
}
if (sprite_index == spr_playerLeft_idle) {
	if (!leftKey) {
		sprite_index = spr_playerLeft_idle
	}
}




//-------Fazer check de qual tecla foi precionada a fim de pausar a animação quando parado
/*
if (keyboard_lastkey == ord("W") && executando == false) {
    sprite_index = spr_player_back_idle
}

if (keyboard_lastkey == ord("S") && executando == false) {
    sprite_index = spr_player_front_idle
}

if (keyboard_lastkey == ord("D") && executando == false) {
    sprite_index = spr_player_right_idle
}

if (keyboard_lastkey == ord("A") && executando == false) {
    sprite_index = spr_player_left_idle
}
*/

// Alteração de sprite caso parado
if (hsp == 0 and vsp == 0) {
	image_speed = 0
	image_index = 0
	//executando = false
} 

// Alteração de sprite caso andando
if (hsp < 0 || hsp > 0) {
	image_speed = 2
	//executando = true
} 

if (vsp < 0 || vsp > 0) {
	image_speed = 2
	//executando = true
} 

// Easter Egg
if (keyboard_check(vk_shift)) {
	notpoggers++	
} else if (keyboard_check(vk_space)) {
	notpogger2++
} 
if (notpoggers > 7 && notpogger2 > 7) {
	sprite_index = spr_player_front_preto
}
#endregion