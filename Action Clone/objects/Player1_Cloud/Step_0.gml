  /// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
if (place_meeting(x, y, Character1) and Character1.y_vel >0){
	not_hit = false
	audio_play_sound(Cloud_hit, 10, false);
	Character1.y_vel = -20;
	//show_debug_message(sprite_index)
	
		if sprite_index ==  Player1_Cloud1{
			sprite_index = Cloud1_miss
			image_index = 0
			image_speed = 1
			
		}
		if sprite_index ==  Player_1Cloud2{
			sprite_index = Cloud2_miss
			image_index = 0
			image_speed = 1
		}
		
		if sprite_index ==  Player1_Cloud3{
			sprite_index = Cloud3_miss
			image_index = 0
			image_speed = 1
		
		}
		
		if sprite_index ==  Player1_Cloud4{
			sprite_index = Cloud4_miss
			image_index = 0
			image_speed = 1
			
		}
}
if (place_meeting(x, y, Character2) and Character2.y_vel >0){
	audio_play_sound(Error_cloud, 10, false);
}

if image_index == 3 and not_hit == true {
	image_speed = 0
}


if ((sprite_index == Cloud1_miss or sprite_index ==Cloud2_miss or sprite_index ==Cloud3_miss or sprite_index == Cloud4_miss) ) {
	//show_debug_message(image_index)
	if (image_index == 3){
		//show_debug_message("miss1")
		Game_manager.exist_cloud -=1
		Game_manager.red_cloud-=1
		instance_destroy();
	}
}

if room != score_game_room and room != time_game_room{
	instance_destroy();
}