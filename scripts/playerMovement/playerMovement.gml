//Horizantal movemnt
var move = key_right - key_left;

if(move == -1) sprite_index = spt_player_walking_left;
if(move == 1) sprite_index = spt_player_walking_right;
if(move == 0) sprite_index = spt_player_still;

if(move != 0 and on_ground){
	horizantal_velocity = move * walk_speed;
} else if(move != 0){
	horizantal_velocity = (move * walk_speed)*.75;
} else if(on_ground){
	horizantal_velocity = 0;
}

if(move == -1 and place_meeting(x-1,y,wall_object)){
	on_wall = true;
} else if (move == 1 and place_meeting(x+1,y,wall_object)){
	on_wall = true;
} else {
	on_wall = false;
}

//Vertical movement
if(on_ground){
	double_jump = 1;
}

if(key_jump and double_jump>0){
	vertical_velocity = jump_height;
	if(not on_ground){
		double_jump -= 1;
	}
}
if(on_wall and sign(vertical_velocity)==1){
	double_jump = 1;
	vertical_velocity = vertical_velocity/2;
}
