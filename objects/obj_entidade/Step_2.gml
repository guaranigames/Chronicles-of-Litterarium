if (place_meeting(x + velh, y, global.general_collision)) {
	var _velh = sign(velh)
	while(!place_meeting(x + _velh, y, global.general_collision)) {
		x += _velh
	}
	velh = 0
}
x += round(velh)

if (place_meeting(x, y + velv, global.general_collision)) {
	var _velv = sign(velv)	
	while (!place_meeting(x, y + _velv, global.general_collision)) {
		y += _velv
		round(y)
	}
	velv = 0
}
y += round(velv)

#region Colisão antiga
/*
if (place_meeting(x + velh, y, global.general_collision)) {
	var _colisao = instance_place(x + velh, y, global.general_collision)
	 
	if (_colisao) {
		if (velh > 0) {
			x = _colisao.bbox_left - sprite_width / 2 
		} else if (velv < 0) {
			x = _colisao.bbox_right + sprite_width / 2	
		}
	}
	velh = 0
}
x += velh

var _colisao = instance_place(x, y + velv, global.general_collision)
if (_colisao) {
	if (velv > 0) {
		y = _colisao.bbox_top - sprite_height / 2
	} else if (velv < 0) {
		y = _colisao.bbox_bottom + sprite_height / 2
	} 
	velv = 0
}
y += velv
*/
#endregion