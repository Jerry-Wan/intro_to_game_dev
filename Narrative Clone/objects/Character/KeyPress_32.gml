/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码

if (abs(x - NPC1.x)<80 && abs((y - NPC1.y)<80)){
	audio_play_sound(Talk_Sound, 10, false);
	if get_keyed == false{
		if instance_exists(No_Key_message) ==  false{
			instance_create_depth(x,y-140,-y,No_Key_message);
			show_debug_message("pressed");
		}
		else{
			No_Key_message.x = x;
			No_Key_message.y = y-140;
		}
		
	}
	else{
		if instance_exists(Key_message) ==  false{
			instance_create_depth(x,y-140,-y,Key_message);
			show_debug_message("pressed");
		}
		else{
			Key_message.x = x;
			Key_message.y = y-140;
		}
	}
}

if (abs(x - NPC2.x)<80 && abs((y - NPC2.y)<80)){
	audio_play_sound(Talk_Sound, 10, false);
	if instance_exists(Exit_message) ==  false{
		instance_create_depth(x,y-140,-y,Exit_message);
		show_debug_message("pressed");
	}
	else{
		Exit_message.x = x;
		Exit_message.y = y-140;
	}
}