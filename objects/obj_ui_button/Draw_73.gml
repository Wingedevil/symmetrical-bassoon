/// @description Insert description here
// You can write your code in this editor

draw_set_font(fmt_text_basic);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
var strHeight = string_height(buttonText);
draw_self();
draw_text_color(x + sprite_width / 2, y + sprite_height / 2 + strHeight / 4, buttonText, c_black, c_black, c_black, c_black, 1);