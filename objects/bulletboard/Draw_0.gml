var border_l = 320 - (current_width / 2);
var border_r = 320 + (current_width / 2);
var border_u = 384 - current_height;
var border_d = 384;

if (current_width == 570 && current_height == 120){
	if instance_exists(Dialogue) {
		Dialogue.visible = false;
		Fight.visible = false;
		Act.visible = false;
		ItemL.visible = false;
		ItemR.visible = false;
		Mercy.visible = false;
	
}
	
obj_soul.x = clamp(obj_soul.x, border_l + 8, border_r - 8);
obj_soul.y = clamp(obj_soul.y, border_u + 8, border_d - 8);

draw_set_color(c_white);
draw_rectangle(border_l - 4, border_u - 4, border_r + 4, border_d + 4, false);
draw_set_color(c_black);
draw_rectangle(border_l, border_u, border_r, border_d, false);

var hp_barwidth = (global.PlayerMaxHP * 2.0);
var hp_barwidth_fill = (global.PlayerHP * 2.0);
draw_set_font(UI_Font);
draw_set_color(c_white);
draw_text(320 + hp_barwidth, 400, string(global.PlayerHP) + " / " + string(global.PlayerMaxHP));
draw_text(30, 400, global.Name + "     LV " + string(global.PlayerLV));

draw_set_font(Widgets);
draw_text (265, 400, "HP");



draw_set_color(c_red);
draw_rectangle(300, 400, 300 + hp_barwidth, 418, false);
draw_set_color(c_yellow);
draw_rectangle(300, 400, 300 + hp_barwidth_fill, 418, false);



}