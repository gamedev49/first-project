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