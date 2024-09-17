#region Camera
// Funcionamento de perceguição de camera 
//if (!instance_exists(obj_camera)) {

//instance_create_layer(0,0, "instances", obj_camera)
	
//}

camera = instance_create_layer(x, y, layer, obj_camera)
camera.alvo = id
#endregion
#region Fortinite Mooovies
// Declaração de variaveis para Movimentação
move_ad = 0
move_ws = 0
hsp=0
vsp=0 
spd=5
notpoggers = 0
notpogger2 = 0
inicio = 1
executando = true
#endregion