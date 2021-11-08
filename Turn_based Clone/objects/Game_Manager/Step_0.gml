/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码\



// in Step

switch(global.state) 
{
  case state.setup:
    //deal three cards into 'hand' list and move to table
    var cards_in_hand = ds_list_size(global.hand)
	var cards_in_cpu = ds_list_size(global.cpu)
	//show_debug_message(cards_in_hand)
    if (cards_in_hand < 3) 
	{
      var card = global.deck[| seq_num]
	  seq_num+=1
      ds_list_add(global.hand, card)

      card.target_x = 300 + cards_in_hand * 200
      card.target_y = room_height*2 / 3 + 50
	  card.status_code +=1
    } 
	else if(cards_in_cpu < 3)
	{
	  var card = global.deck[| seq_num]
	  seq_num+=1
      ds_list_add(global.cpu, card)
      card.target_x = 300 + cards_in_cpu * 200
      card.target_y = 50
	}
	else 
	{
	   
       global.state = state.play
    }
    break;

  case state.play:
	if select_num == -1{
		select_num = random(3)
	}
	//show_debug_message(select_num)
	global.cpuSelectedCard = global.cpu[| select_num]
	
	
	
	
	
	if (clicked == false && global.cpuSelectedCard != noone && mouse_check_button_pressed(mb_left) && global.handCard != noone) 
	{
		clicked = true
		global.handCard.target_x = 500
		global.handCard.target_y = 420
		global.cpuSelectedCard.target_x = 500
		global.cpuSelectedCard.target_y = 250
		global.cpuSelectedCard.status_code += 2
		//show_debug_message(global.cpuSelectedCard.sprite_index)
		//show_debug_message(global.handCard.sprite_index)
		alarm[0] = 1
		//sleep(2500)
	}
	
	// you will fill this in later

   break
	
	case state.resolve:
	  //return all cards in 'hand' to deck
	  var cards_in_hand = ds_list_size(global.hand)
	  var cards_in_cpu = ds_list_size(global.cpu)
	  select_num = -1
	  card_selected = false
	  clicked = false
	  global.cpuSelectedCard = noone
	  global.handCard = noone
	  
	  
	  if (cards_in_hand > 0)
		{
	    var card = global.hand[| cards_in_hand - 1]
	    //put on bottom
		
	    //ds_list_insert(global.deck, 0, card)
	    card.target_x = 1000
	    card.target_y = 280
		ds_list_delete(global.hand, cards_in_hand - 1);
	  } 
	  else if (cards_in_cpu > 0)
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
		if seq_num == 24{
			show_debug_message("done")
			for(i = 0; i<global.numcards; i++){
				var card = global.deck[| i]
				card.target_x = card.init_x
				card.target_y = card.init_y
				card.status_code = 0
				card.card_type = choose(face_index.rock, face_index.paper, face_index.Scissors)
				card.face_up = false
				
			}
			seq_num = 0
			reshuffle = false
		}
		if seq_num > 0{
			alarm[2] = 1
		}
		else if seq_num == 0 && reshuffle = false{
			show_debug_message("reshuffle")
			alarm[2] = 120
			reshuffle = true
		}
	     
	  }
	break

 }
 
