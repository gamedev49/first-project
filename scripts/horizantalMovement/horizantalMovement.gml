//Horizantal displacement

if(place_meeting(x+horizantal_velocity, y, collision_object)){
	while(!place_meeting(x+sign(horizantal_velocity),y,collision_object)){
		x += sign(horizantal_velocity);
	}
	horizantal_velocity=0;
}
x += horizantal_velocity;