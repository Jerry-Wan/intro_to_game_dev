/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
//show_debug_message("large")
show_debug_message(global.cpu[| select_num+1].card_image)
show_debug_message(global.cpu[| select_num].card_image)
if global.cpu[| select_num+1].card_image > global.cpu[| select_num].card_image{
	show_debug_message("correct")
	select_num += 1
	operation = noone
	wait_next =false
	clicked = false
}
else{
	show_debug_message("wrong")
	alarm[1] = 250
	//break
}