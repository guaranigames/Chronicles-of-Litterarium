if (keyboard_check_released(vk_escape)) {
	global.pause = !global.pause
}
if (global.pause) {
	if (instance_exists(obj_player)) {
			with(obj_player) {
				image_speed = 0
		}
	}
}

if (instance_exists(obj_npc)) {
	with(obj_npc) {	
		image_speed = 0
	}
}

