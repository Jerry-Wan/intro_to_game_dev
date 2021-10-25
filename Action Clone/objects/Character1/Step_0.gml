/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
var my_gravity = 1;

y_vel += my_gravity;
y += y_vel;

if(y_vel > 0){
	sprite_index = Player1_falling;
}
else{
	sprite_index = Player1_raising;
}

if y>768{
	instance_create_layer(x,y,"Instances",Star_effect);
	//Game_manager.score1 -=1
	//Game_manager.alarm[0]=180
	audio_play_sound(Dead, 10, false);
	instance_destroy ()
	
}

if place_meeting(x, y, Character2){
	if y_vel > Character2.y_vel and able_to_hit == true{
		y_vel = -30
		Character2.y_vel = 30
		Game_manager.score1 += 1
		//Game_manager.score2 -= 1
		audio_play_sound(Hit, 10, false);
		instance_create_layer(x,y,"Instances",Star_effect);
		able_to_hit = false
		alarm[1] = 30
	}
	else if y_vel < Character2.y_vel and able_to_hit == true{
		y_vel = 30
		Character2.y_vel = -30;
		Game_manager.score2 += 1;
		// Game_manager.score1 -= 1;
		audio_play_sound(Hit, 10, false);
		instance_create_layer(x,y,"Instances",Star_effect);
		able_to_hit = false
		alarm[1] = 30
	}
}