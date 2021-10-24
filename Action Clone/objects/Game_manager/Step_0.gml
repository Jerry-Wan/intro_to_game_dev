/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
camera_get_view_x(view_camera[0]); // gets cam x pos
camera_get_view_y(view_camera[0]); // gets cam y pos
var high = camera_get_view_height(view_camera[0]); // gets cam height



if(instance_exists(Character1) and instance_exists(Character2)) {
	if Character1.y-lerp(Character1.y,Character2.y,0.5) > high/2-20{
		//show_debug_message(1)
		camera_set_view_pos(view_camera[0],0,min(Character1.y-40,0))
	}
	else if Character2.y-lerp(Character2.y,Character1.y,0.5) > high/2-20{
		//show_debug_message(2)
		camera_set_view_pos(view_camera[0],0,min(Character2.y-40,0))
	}
	else{
		camera_set_view_pos(view_camera[0],0,min(lerp(Character1.y,Character2.y,0.5)-high/2,0,384));
		//show_debug_message(3)
	}
}


if (instance_exists(Character1) and instance_exists(Character2) = false){
	camera_set_view_pos(view_camera[0],0,min(Character1.y-40,0))
}
if (instance_exists(Character2) and instance_exists(Character1) = false){
	camera_set_view_pos(view_camera[0],0,min(Character2.y-40,0))
}

show_debug_message(alarm[0])
if ((instance_exists(Character1) == false) and (reboot1 == true)){
	alarm[0] = 180
	reboot1 = false
	//show_debug_message(reboot1)
	
	
}
if (instance_exists(Character2) == false and (reboot2 == true)){
	alarm[1] = 180
	reboot2 = false
	
}

if exist_cloud <20 and alarm_activated = false{
	alarm[2] = 180;
	alarm_activated = true
}