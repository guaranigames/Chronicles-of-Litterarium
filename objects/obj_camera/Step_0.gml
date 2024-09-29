/// @description Isto é evento da camera
#region Seguir Player
// Ignorar (Por enquanto)
//if(instance_exists(obj_player)) {

//x = lerp(x, obj_player.x, .1)	
	
//y = lerp(y, obj_player.y, .1)	
//}

/*if (!alvo) exit;
else {
	x = alvo.x;
	y = alvo.y
}	*/
#endregion

#region Resolução
/* Definição da função onde altera resolução do jogo 
ch = lerp(ch, camerah, .5)
camera_set_view_size(view_camera[0], cw, ch)
camera_set_view_pos(view_camera[0], room_width/2 - cw/2, room_height/2 - ch/2)

surface_resize(application_surface, cw, ch)
*/

// Check do f11 para fullscreen
if (keyboard_check_released(vk_f11)) {
	window_set_fullscreen(!window_get_fullscreen())	
	window_center()
}

#endregion