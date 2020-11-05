/// @description Insert description here
// You can write your code in this editor

draw_set_font(fmt_text_basic);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
var text = obj_game_manager.levelName;
draw_text_color(x, y, text, c_black, c_black, c_black, c_black, 1);