//move camera at reduced rate
var s = 101-camera_speed;
x += (new_x-x)/s;
y += (new_y-y)/s;

//make sure the camera doesnt out of bounds
if(x-(width/2) <= 0) x = (width/2);
if(x+(width/2) >= room_width) x = room_width-(width/2);
if(y-(height/2) <= 0) y = (height/2);
if(y+(height/2) >= room_height) y = room_height-(height/2);

//if there is a target follow set up for next step
if(target != noone){
	new_x = target.x;
	new_y = target.y;
}

//moving camera
var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
camera_set_view_mat(camera,vm);
