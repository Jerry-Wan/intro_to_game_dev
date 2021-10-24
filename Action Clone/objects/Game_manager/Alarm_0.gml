/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
var wide = camera_get_view_width(view_camera[0]); // gets cam width

//show_debug_message("alarm0")
instance_create_layer(
	random(wide),
	y,
	"Instances",
	Character1);
reboot1 = true
audio_play_sound(respawn, 10, false);