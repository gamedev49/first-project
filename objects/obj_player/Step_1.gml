inputs();
playerMovement();
if (on_ground){
	sprite_index = spt_player_still; 
} else {
	sprite_index = spt_player;
}