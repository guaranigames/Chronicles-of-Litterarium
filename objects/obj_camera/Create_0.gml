/// @description Isto é evento da camera
alvo = noone

#region Resolução
// Alteração da resolução do jogo
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
#endregion