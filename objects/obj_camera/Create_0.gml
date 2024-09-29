#region Camera para perseguição do player fora de salas fechadas (fSF)
//alvo = noone

// Alteração da resolução do jogo
/*
var _dw = 432
var _dh = 243

view_wport[0] = _dw
view_hport[0] = _dh

surface_resize(application_surface, _dw, _dh)

cameraw = _dw
camerah = _dh
cw = cameraw
ch = camerah

camera_set_view_size(view_camera[0], cw, ch)
*/
#endregion

// Explicações das mesmas para que seja possivel alterar quando as salas deferirem

#region Camera para perseguição do player em salas fechadas (SF)
res_w = 1280;
res_h = 720;
res_scale = 3;
global.view_w = res_w / res_scale;
global.view_h = res_h / res_scale;
window_set_size(global.view_w * res_scale, global.view_h * res_scale);
player_cam = obj_player
surface_resize(application_surface, global.view_w * res_scale, global.view_h * res_scale);
#endregion