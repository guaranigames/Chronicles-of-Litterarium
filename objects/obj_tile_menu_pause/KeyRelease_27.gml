if (obj_player.andar) {
	if (global.pause == true) {
		layer_set_visible("Effect_Chroma",	0)
		layer_set_visible("Effect_Blurr",	0)	
		// ;O
		obj_npcc.image_speed = 1
	} else {
		layer_set_visible("Effect_Chroma",	1)
		layer_set_visible("Effect_Blurr",	1)
		//Desativando animação
		obj_npcc.image_speed = 0
	}
}