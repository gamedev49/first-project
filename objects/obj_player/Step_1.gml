var collision_object = obj_wall

//keyboard check
var key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
var key_jump = keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord("W"));


//Horizantal movemnt
var move = key_right - key_left;
horizantal_velocity = move * walk_speed;
if(place_meeting(x,y+1,collision_object) and key_jump){
	vertical_velocity = -7;
}

//Vertial movement
vertical_velocity += g;