/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码

function sleep(millis){
	var time = get_timer() / 1000;

	while ((get_timer() / 1000 - time) < millis){
		// Just keep looping
	}
}

your_score =0
cpu_score = 0
distribute_card = true
global.numcards = 24;
global.deck = ds_list_create();
global.cpu = ds_list_create();
global.handCard = noone;

seq_num = 0
select_num  = -1
card_selected = false

for(i = 0; i<global.numcards; i++){
	var newcard  = instance_create_layer(10,280+2*i,"Instances",Cards);
	newcard.card_type = choose(face_index.rock, face_index.paper, face_index.Scissors)
	//newcard.face_up = true;
	newcard.init_x = 10;
	newcard.init_y = 280+2*i
	newcard.target_x = 10;
	newcard.target_y = 280+2*i
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


