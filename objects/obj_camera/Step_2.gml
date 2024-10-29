#region Camera old
// Camera (SF) 
/*
camera_set_view_size(view_camera[0], global.view_w, global.view_h);

if (room_get_name(rm_taberna) == true) {
	exit;
} else {
	if (instance_exists(player_cam)) {
		var _x1 = player_cam.x - global.view_w / 2;
		var _y1 = player_cam.y - global.view_h / 2;
		_x1 = clamp(_x1,0,room_width - global.view_w)
		global.x1 = _x1
		_y1 = clamp(_y1,0,room_width - global.view_h)
		global.y1 = _y1
		
		camera_set_view_pos(view_camera[0], _x1, _y1)
	}
}
*/
#endregion