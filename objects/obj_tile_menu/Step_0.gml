up_key = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
down_key = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
accept_key = keyboard_check_pressed(vk_enter)

op_lenght = array_length(option[menu_level])

pos += down_key	- up_key
if pos >= op_lenght {pos = 0}
if pos < 0 {pos = op_lenght - 1}

//Opções
if accept_key {
	
	var _sml = menu_level;
	
		switch(menu_level) {
		
			case 0 :
				switch(pos) {
	
				case 0: 
				room_goto(rm_taverna_old) 
				var _res_w = 1280;
				var _res_h = 720;
				var _res_scale = 3;
				var _view_w = _res_w / _res_scale;
				var _view_h = _res_h / _res_scale;
				surface_resize(application_surface, _view_w * _res_scale, _view_h * _res_scale)
				break;
		
				case 1: menu_level = 1 break;

				case 2: game_end() break;
	
				}
			break;
		
		//Bahhhh
		case 1: 
			switch(pos) {
				//Janela
				case 0:
				
				if accept_key && windows {
					option[1, 0] = "Desativar Tela Cheia"
					window_set_fullscreen(!window_get_fullscreen())	
					window_center()
					windows =! windows
					exit
				} 
				
				if accept_key && !windows {
					option[1, 0] = "Ativar Tela Cheia"
					window_set_fullscreen(!window_get_fullscreen())	
					window_center()
					windows =! windows
				}
			
				break;
			
				//Volume
				case 1: 
				
				if accept_key && ativacao {
					option[1, 1] = "Ativar Volume"
					//Ativa Volume Pfv
					ativacao =! ativacao
					exit
				} 
				
				if accept_key && !ativacao {
					option[1, 1] = "Desativar Volume"	
					//Desativa Volume Pfv
					ativacao =! ativacao
				}
				break;
			
				//Voltar
				case 2:
				menu_level = 0	
				break;
			
			}
		break;
		}
		
			if _sml != menu_level {pos = 0}
		
			op_lenght = array_length(option[menu_level])
	}