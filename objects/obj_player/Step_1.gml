//keyboard check
var key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
var key_jump = keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord("W"));


//Horizantal movemnt
var move = key_right - key_left;
if(move != 0 and on_ground){
	horizantal_velocity = move * walk_speed;
} else if(move != 0){
	horizantal_velocity = (move * walk_speed)*.75;
} else if(on_ground){
	horizantal_velocity = 0;
}


//Vertical movement
if(on_ground){
	double_jump = 2;
}

if(key_jump and double_jump>0){
	vertical_velocity = jump_height;
	if(not on_ground){
		double_jump -= 1;
	}
}
