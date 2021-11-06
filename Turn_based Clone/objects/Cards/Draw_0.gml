/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
if face_up
	switch card_type
	{

		case face_index.rock:
		sprite_index = rock
		break
	
		case face_index.paper:
		sprite_index = paper
		break
	
		case face_index.Scissors:
		sprite_index = Scissors
		break

	}
else
	sprite_index = card_back
	

	
draw_sprite(sprite_index, image_index, x, y)