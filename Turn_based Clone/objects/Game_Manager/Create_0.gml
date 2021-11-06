/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
your_score =0
cpu_score = 0
distribute_card = true
global.numcards = 24;
global.deck = ds_list_create();



for(i = 0; i<24; i++){
	var newcard  = instance_create_layer(10,280+2*i,"Instances",Cards);
	newcard.card_type = choose(face_index.rock, face_index.paper, face_index.Scissors)
	//newcard.face_up = true;
	newcard.target_x = x;
	newcard.target_y = y - 2 * i;
	ds_list_add(global.deck, newcard);
	
}


// in Create

enum state
{
	setup,
	play, 
	resolve
}

global.state = state.setup
global.hand = ds_list_create()


