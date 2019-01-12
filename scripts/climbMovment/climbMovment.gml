//Slanted ground
if(horizantal_velocity != 0 and place_meeting(x+sign(horizantal_velocity),y,slant_object)){
	y-=abs(horizantal_velocity/3*2);
}