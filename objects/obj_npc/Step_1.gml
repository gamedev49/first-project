if(time <= 0 and on_ground){
	dirc = round(random(1));
	if(dirc){ dirc = 1; } else { dirc = -1; }
	time = round(random(50));
} else {
	time -= 1;
}

horizantal_velocity = dirc * walk_speed;
if(place_meeting(x+(horizantal_velocity*2), y, collision_object) and on_ground){
	on_ground = false;
	vertical_velocity = jump_height;
}