/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码

function sleep(millis){
	var time = get_timer() / 1000;

	while ((get_timer() / 1000 - time) < millis){
		// Just keep looping
	}
}
randomise();

wait_next = false
your_score =0
cpu_score = 0
distribute_card = true
clicked = 0
usedNum = ds_list_create();
for (i = 0;i <10 ; i++){
	ds_list_add(usedNum,i)
}

ds_list_shuffle(usedNum)
global.numcards = 10;
global.deck = ds_list_create();
global.cpu = ds_list_create();
global.handCard = noone;
round_finish = false

seq_num = 0
select_num  = -1
card_selected = false
clicked = false

for(i = 0; i<global.numcards; i++){
	var newcard  = instance_create_layer(10,280+2*i,"Instances",Guess_Cards);
	newcard.card_image = usedNum[|i]
	show_debug_message(usedNum[|i])
	//newcard.face_up = true;
	newcard.init_x = 10;
	newcard.init_y = 280+2*i
	newcard.target_x = 10;
	newcard.target_y = 280+2*i
	ds_list_add(global.deck, newcard);
	
}

//ds_list_clear(usedNum)
// in Create
operation =noone
global.state = state.setup
global.hand = ds_list_create()


