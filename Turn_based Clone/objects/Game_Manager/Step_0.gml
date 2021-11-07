/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
seq = 0
// in Step

switch(global.state) 
{
  case state.setup:
    //deal three cards into 'hand' list and move to table
    var cards_in_hand = ds_list_size(global.hand)
	var cards_in_cpu = ds_list_size(global.cpu)
	show_debug_message(cards_in_hand)
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
	

	// you will fill this in later

   break
	
	case state.resolve:
	  //return all cards in 'hand' to deck
	  var cards_in_hand = ds_list_size(global.hand)
	  if (cards_in_hand > 0)
		{
	    var card = global.hand[| cards_in_hand - 1]
	    //put on bottom
	    ds_list_insert(global.deck, 0, card)
	    card.target_x = x
	    card.target_y = y
	  } 
		else
		{
	     global.state = state.setup
	  }
	break

 }
 
