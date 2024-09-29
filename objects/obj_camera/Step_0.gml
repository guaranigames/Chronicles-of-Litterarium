#region Seguir Player (fSF)
/*if (!alvo) exit;
else {
	x = alvo.x;
	y = alvo.y
}	*/
#endregion

#region Resolução (fSF)

// Função onde altera resolução do jogo (fSF)

/*
ch = lerp(ch, camerah, .5)
camera_set_view_size(view_camera[0], cw, ch)
camera_set_view_pos(view_camera[0], room_width/2 - cw/2, room_height/2 - ch/2)

surface_resize(application_surface, cw, ch)
*/

#endregion

// Check do f11 para fullscreen (mudar para outra função e futuramente e dar fix)
if (keyboard_check_released(vk_f11)) {
	window_set_fullscreen(!window_get_fullscreen())	
	window_center()
}
