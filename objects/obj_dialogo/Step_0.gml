if (global.pause == false) {
if inicializar == false {
	scr_textos()
	inicializar = true
}

if (keyboard_check_pressed(vk_space)) {
	if pagina < array_length(texto) - 1 {
		pagina++	
	} else {
		global.dialogo = false
		obj_player.andar = true
		instance_destroy()	
	}
}
}