/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码\



// in Step

switch(global.state) 
{
  case state.setup:
    //deal three cards into 'hand' list and move to table
	var cards_in_cpu = ds_list_size(global.cpu)
	//show_debug_message(cards_in_hand)
	if(cards_in_cpu < 5)
	{
	  var card = global.deck[| seq_num]
	  seq_num+=1
      ds_list_add(global.cpu, card)
      card.target_x = 250 + cards_in_cpu * 150
      card.target_y = 150
	}
	else 
	{
	   select_num = 0
       global.state = state.play
    }
    break;

  case state.play:
	//show_debug_message(operation)
	if select_num < 4{
		if global.cpu[| select_num]!= noone {
			global.cpu[| select_num].face_up= true
			//show_debug_message("work")
			
		}
		if operation ==1   and clicked = false{
				show_debug_message("op = 1")
				clicked = true
				alarm[2] = 1
		}
		else if operation == 0 and clicked = false{
			clicked = true
			alarm[3] = 1
		}
		clicked = false
	}	
	

	if select_num == 4 and round_finish == false{
		round_finish = true
		global.cpu[| select_num].face_up= true
		alarm[1] = 250
	}


	break
	
	case state.resolve:
	  //return all cards in 'hand' to deck
	  //var cards_in_hand = ds_list_size(global.hand)
	  var cards_in_cpu = ds_list_size(global.cpu)
	  select_num = -1
	  card_selected = false
	  clicked = false
	  global.cpuSelectedCard = noone
	  global.handCard = noone
	  wait_next = false
	  select_num = 0
	  operation = noone
	  round_finish = false
	  
	  //show_debug_message(usedNum)
	  
	  
	 if (cards_in_cpu > 0)
		{
	    var cpucard = global.cpu[| cards_in_cpu - 1]
	    cpucard.face_up = true
	    //ds_list_insert(global.deck, 0, cpucard)
	    cpucard.target_x = 1000
	    cpucard.target_y = 280
		ds_list_delete(global.cpu, cards_in_cpu - 1);
	  } 
	else
		{
		if seq_num == 10{
			ds_list_shuffle(usedNum)
			show_debug_message("done")
			for(i = 0; i<global.numcards; i++){
				var card = global.deck[| i]
				card.target_x = card.init_x
				card.target_y = card.init_y
				card.status_code = 0
				card.card_image = usedNum[|i]
				card.face_up = false
				
			}
			seq_num = 0
			reshuffle = false
		}
		if seq_num > 0{
			alarm[4] = 1
		}
		else if seq_num == 0 && reshuffle = false{
			show_debug_message("reshuffle")
			alarm[4] = 120
			reshuffle = true
		}
	     
	  }
	break

 }
 
