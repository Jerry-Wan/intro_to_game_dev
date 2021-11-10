/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
//show_debug_message("here")
show_debug_message(global.cpuSelectedCard.card_type)
show_debug_message(global.handCard.card_type)
		if global.cpuSelectedCard.card_type =  face_index.paper{
			show_debug_message("here paper")
			if global.handCard.card_type =  face_index.Scissors{
					show_debug_message("here paper vs Scissors")
					your_score += 1
					alarm[4] = 40
			}
			else if global.handCard.card_type =  face_index.rock{
					show_debug_message("here paper vs rock")
					cpu_score +=1
					alarm[5] = 40
			}
		}
			
		else if global.cpuSelectedCard.card_type =   face_index.Scissors{
			show_debug_message("here Scissors")
			if global.handCard.card_type =  face_index.paper{
					show_debug_message("here Scissors vs paper")
					cpu_score += 1
					alarm[5] = 40
			}
			else if global.handCard.card_type =  face_index.rock{
					show_debug_message("here Scissors vs rock")
					your_score +=1
					alarm[4] = 40
			}
		}
		
		else if global.cpuSelectedCard.card_type = face_index.rock{
			show_debug_message("here rock")
			if global.handCard.card_type =  face_index.paper{
					show_debug_message("here rock vs paper")
					your_score += 1
					alarm[4] = 40
			}
			else if global.handCard.card_type =  face_index.Scissors{
					show_debug_message("here paper vs Scissors")
					cpu_score +=1
					alarm[5] = 40
			}
			
	}
//sleep(250)
alarm[1] = 100