/// @description Insert description here
// You can write your code in this editor

draw_set_font(font);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
if (popAccordingToFlag) {
	draw_text_transformed_color(x, y, text, f(FRAMES_TO_POP - frames), f(FRAMES_TO_POP - frames), 0, color, color, color, color, 1);
} else {
	draw_text_color(x, y, text, color, color, color, color, 1);
}