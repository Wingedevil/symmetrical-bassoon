/// @description Insert description here
// You can write your code in this editor

draw_self();
image_blend = color;

draw_set_font(fmt_text_basic);
draw_set_halign(fa_right);
draw_set_valign(fa_center);
draw_text_color(x + sprite_width - 30, y + sprite_height / 2 + string_height(text) / 4, text, c_black, c_black, c_black, c_black, 1);