if(!paused) exit;
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
if(mx > 250 and mx < 390){
	if(my > 140 and my < 160){
		paused = !paused;
	} else if (my > 160 and my < 180){
		exit;
	} else if (my > 180 and my < 200){
		game_end();
	}
}