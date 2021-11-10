/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
if touch = false{
	move_towards_point(target_x,target_y,speed) 

if (abs(target_y-y)>10 ) {
	speed  = 10

}
else{
	speed  = 0
	x = target_x
	y = target_y
	if status_code > 0{
		face_up = true
	}
}

}
if position_meeting(mouse_x, mouse_y, id) and click == true{
	touch = true
	y = target_y - 20
}
else{
	touch = false
}