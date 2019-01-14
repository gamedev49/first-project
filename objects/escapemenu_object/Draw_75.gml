if(!paused) exit;

draw_set_color(c_black);
draw_roundrect(250,140,390,160,false);
draw_roundrect(250,160,390,180,false);
draw_roundrect(250,180,390,200,false);

draw_set_color(c_white);
draw_roundrect(250,140,390,160,true);
draw_roundrect(250,160,390,180,true);
draw_roundrect(250,180,390,200,true);

draw_set_color(c_white);
draw_text(290,140,"Resume");
draw_text(290,160,"Save");
draw_text(290,180,"Quit");