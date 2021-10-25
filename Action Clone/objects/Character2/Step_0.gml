/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
var my_gravity = 1;

y_vel += my_gravity;
y += y_vel;

if(y_vel > 0){
	sprite_index = Player2_falling;
}
else{
	sprite_index = Player2_raising;
}
if y>768{
	instance_create_layer(x,y,"Instances",Star_effect);
	//Game_manager.score2 -=1
	audio_play_sound(Dead, 10, false);
	instance_destroy ()
	
}
