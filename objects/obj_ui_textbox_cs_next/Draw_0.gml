/// @description Insert description here
// You can write your code in this editor

draw_set_font(font);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_text_color(x, y, text, color, color, color, color, (FRAMES_TO_APPEAR - frames) / FRAMES_TO_APPEAR);
draw_set_alpha(1);