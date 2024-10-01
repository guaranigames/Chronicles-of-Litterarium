if (keyboard_check_pressed(vk_down) | keyboard_check_pressed(ord("S"))) {
	global.botao ++
}

if (keyboard_check_pressed(vk_up) | keyboard_check_pressed(ord("W"))) {
	global.botao --
}

global.botao = clamp(global.botao, 1, 2)

if (keyboard_check_pressed(vk_enter)) {
	room_goto(rm_taberna)
}
