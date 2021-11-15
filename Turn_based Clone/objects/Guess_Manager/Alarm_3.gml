/// @description Insert description here
// You can write your code in this editor
show_debug_message(global.cpu[| select_num+1].card_image)
show_debug_message(global.cpu[| select_num].card_image)
if global.cpu[| select_num+1].card_image < global.cpu[| select_num].card_image{
	show_debug_message("correct")
	select_num += 1
	//operation = noone
	wait_next =false
	clicked = false
}
else{
	show_debug_message("wrong")
	alarm[1] = 250
	//break
}
operation = noone