dirc = 0//sign(obj_player.x-x);
horizantal_velocity = dirc * walk_speed;
if(place_meeting(x+(horizantal_velocity*2), y, collision_object) 
   and on_ground 
   and not place_meeting(x+(horizantal_velocity*2), y, climbeable_object)
   ){
	on_ground = false;
	vertical_velocity = jump_height;
}