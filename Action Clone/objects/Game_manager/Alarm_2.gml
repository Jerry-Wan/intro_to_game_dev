/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码

cam_x = camera_get_view_x(view_camera[0]); // gets cam x pos
cam_y = camera_get_view_y(view_camera[0]); // gets cam y pos
var wide = camera_get_view_width(view_camera[0]); // gets cam width
var high = camera_get_view_height(view_camera[0]); // gets cam height

create_y = max(random(high)+cam_y,-100)
create_x = random(wide)+cam_x
generate_index = random(100)

while place_meeting(create_x , create_y, Cloud){
	create_y = max(random(high)+cam_y,-100)
	create_x = random(wide)+cam_x
}

if Game_manager.score2 -  Game_manager.score1 >=5{
	if generate_index > 65{
		instance_create_layer(
		create_x,
		create_y,
		"Instances",
		Player1_Cloud);
		exist_cloud += 1
	}
	else{
		instance_create_layer(
		create_x,
		create_y,
		"Instances",
		Cloud);
		exist_cloud += 1
	}
}
else{
	instance_create_layer(
	create_x,
	create_y,
	"Instances",
	Cloud);
	exist_cloud += 1
}
	

if exist_cloud < 20{
	alarm[2] = 20
}
else{
	alarm_activated = false
}