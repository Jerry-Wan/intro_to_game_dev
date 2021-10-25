/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
score1 = 0
score2 = 0
exist_cloud = 9
alarm_activated = false
reboot1 = false
reboot2 = false
alarm[0] = 60
alarm[1] = 60
alarm[2] = 20
red_cloud = 0
green_cloud = 0

if room == score_game_room{
	show_debug_message("score")
	mode = 1
}
if room == time_game_room{
	show_debug_message("time")
	mode = 2
	time = 90
	alarm[3] = 60
}