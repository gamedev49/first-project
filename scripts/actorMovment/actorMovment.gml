//Slanted ground
if(horizantal_velocity != 0 and place_meeting(x+sign(horizantal_velocity),y,slant_object)){
	y-=abs(horizantal_velocity/3*2);
}

//Horizantal displacement
if(place_meeting(x+horizantal_velocity, y, collision_object)){
	while(!place_meeting(x+sign(horizantal_velocity),y,collision_object)){
		x += sign(horizantal_velocity);
	}
	horizantal_velocity=0;
}
x += horizantal_velocity;

//Vertical displacement
vertical_velocity += g;
if(place_meeting(x, y+vertical_velocity, collision_object)){
	while(!place_meeting(x, y+sign(vertical_velocity),collision_object)){
		y += sign(vertical_velocity);
	}
	vertical_velocity=0;
	on_ground = true;
} else if(!place_meeting(x, y+1, collision_object)){
	on_ground = false;
}
y += vertical_velocity;