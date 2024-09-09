#region Fortinite Mooovies
//-------Movimentação
moveAD = -keyboard_check(ord("A"))+keyboard_check(ord("D"))

hsp=moveAD*spd

if place_meeting(x+hsp,y, [obj_collision]) {
	while !place_meeting(x+sign(hsp),y,[obj_collision]) {
		x+=sign(hsp)
	}
	hsp=0
}
x+=hsp

moveWS = -keyboard_check(ord("W"))+keyboard_check(ord("S"))

vsp=moveWS*spd

if place_meeting(x,y+vsp,[obj_collision]) {
	while !place_meeting(x,y+sign(vsp),[obj_collision]) {
		y+=sign(vsp)
	}
	vsp=0
}
y+=vsp
#endregion

#region Sprite Sucumbido
//-------Alteração de sprite por pressionamento de tecla
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


//-------Alteração de sprite caso parado
if (hsp == 0 and vsp == 0) {
	image_speed = 0
	image_index = 0
} 

if (hsp < 0 || hsp > 0) {
	image_speed = 2
} 
if (vsp < 0 || vsp > 0) {
	image_speed = 2
} 

#endregion
