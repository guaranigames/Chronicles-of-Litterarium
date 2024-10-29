if (obj_player.andar) {
if (global.pause == true) {

draw_set_alpha(0.6)
draw_rectangle_color(0, 0, 5000, 5000, c_black, c_black, c_black, c_black, 0)
draw_set_alpha(1)

draw_set_font(global.font_main_pause)	
//BRIGADO SENHOR
var _new_w = 0
for(var _i = 0; _i < op_lenght; _i++) {
	var _op_w = string_width(option[menu_level, _i])
	_new_w = max(_new_w, _op_w)
}
width = _new_w + op_border*2
height = op_border * 2 + font_get_size(fnt_monocraft) + (op_lenght - 1) * op_space;

//Centralização (Arrumar)

if (!instance_exists(obj_camera)) {
	if (camera_get_view_x(view_camera[0]) < 0) {
		x = camera_get_view_x(view_camera[0]) + 20
		y = camera_get_view_y(view_camera[0]) + 20
	} else {
		x = camera_get_view_x(view_camera[0]) + 20
		y = camera_get_view_y(view_camera[0]) + 20
	}
}

if (instance_exists(obj_camera)) {
		x = camera_get_view_x(view_camera[0]) + 20
		y = camera_get_view_y(view_camera[0]) + 20
}

//Desenho do Menu
draw_sprite_ext(sprite_index, image_index, x,  y, width/sprite_width, height/sprite_height + 0.6, 0, c_white, 1)

//Opções
draw_set_valign(fa_top)
draw_set_halign(fa_left)

for(var _i = 0; _i < op_lenght; _i++) {
	var _c = c_white
	if pos == _i {_c = c_yellow}
	draw_text_color(x+op_border, (y+op_border + op_space*_i), option[menu_level, _i], _c, _c, _c, _c, 1)
}
} 
}

