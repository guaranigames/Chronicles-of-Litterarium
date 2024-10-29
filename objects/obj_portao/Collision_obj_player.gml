room_goto(target_room)
obj_player.x = targetX
obj_player.y = targetY

var _res_w = 1280;
var _res_h = 720;
var _res_scale = 3;
var _view_w = _res_w / _res_scale;
var _view_h = _res_h / _res_scale;
surface_resize(application_surface, _view_w * _res_scale, _view_h * _res_scale)