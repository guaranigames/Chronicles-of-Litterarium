#region Fortinite Mooovies
// Movimentação com Colisão Ativa
move_ad = -keyboard_check(ord("A"))+keyboard_check(ord("D"))

hsp=move_ad*spd

if place_meeting(x+hsp,y, [obj_collision, obj_wall]) {
	while !place_meeting(x+sign(hsp),y,[obj_collision, obj_wall]) {
		x+=sign(hsp)
	}
	hsp=0
}
x+=hsp

move_ws = -keyboard_check(ord("W"))+keyboard_check(ord("S"))

vsp=move_ws*spd

if place_meeting(x,y+vsp,[obj_collision, obj_wall]) {
	while !place_meeting(x,y+sign(vsp),[obj_collision, obj_wall]) {
		y+=sign(vsp)
	}
	vsp=0
}
y+=vsp
#endregion
#region Sprite Sucumbido
// Alteração de sprite por Pressionamento de Tecla
if (!keyboard_check(ord("W")) || !keyboard_check(ord("S"))) {
	if (keyboard_check(ord("A"))) {
		sprite_index = spr_player_left
	}
} 

if (!keyboard_check(ord("W")) || !keyboard_check(ord("S"))) {
	if (keyboard_check(ord("D"))) {
		sprite_index = spr_player_right
	}
} 

if (keyboard_check(ord("S"))) {
	sprite_index = spr_player_front
} 

if (keyboard_check(ord("W"))) {
	sprite_index = spr_player_back
} 


//-------Fazer check de qual tecla foi precionada a fim de pausar a animação quando parado
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


// Alteração de sprite caso parado
if (hsp == 0 and vsp == 0) {
	image_speed = 0
	image_index = 0
	executando = false
} 

// Alteração de sprite caso andando
if (hsp < 0 || hsp > 0) {
	image_speed = 2
	executando = true
} 

if (vsp < 0 || vsp > 0) {
	image_speed = 2
	executando = true
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