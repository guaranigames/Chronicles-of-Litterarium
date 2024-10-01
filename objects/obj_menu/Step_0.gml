if (keyboard_check_pressed(vk_down) | keyboard_check_pressed(ord("S"))) {
	atual += 1
}

if (keyboard_check_pressed(vk_up) | keyboard_check_pressed(ord("W"))) {
	atual --
}

atual = clamp(atual, 0, array_length(menu) - 1)