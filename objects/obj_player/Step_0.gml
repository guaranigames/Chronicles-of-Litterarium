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