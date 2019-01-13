/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_black)
draw_roundrect(15,100,35,260,false);
var buffer = 160/obj_player.hp_total;
var j = 100+(buffer/4);
for(var i=obj_player.hp_total;i>0;i--){
	if(i<=obj_player.hp) draw_set_color(c_green); else draw_set_color(c_red);
	draw_roundrect(20,j,30,j+(buffer/2),false);
	j += buffer
}