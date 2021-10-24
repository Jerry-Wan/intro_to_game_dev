/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
if y_vel > 0 and y > Character2.y and ableToColide == true{
	y_vel = -30
	ableToColide = false
	alarm[0] = 20
	Game_manager.score1 += 1
}
if y_vel < 0 and y < Character2.y and ableToColide == true{
	y_vel = 30
	ableToColide = false
	alarm[0] = 20
	Game_manager.score1 -= 1
}