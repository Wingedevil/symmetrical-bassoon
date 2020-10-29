/// @description Insert description here
// You can write your code in this editor

draw_set_font(fmt_text_basic);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
if (levelSelect) {
	var levelScore = ds_map_find_value(global.levelIndex, obj_selector_manager.inspectedLevel);
	var text = is_undefined(levelScore) ? 0 : levelScore;
} else {
	var text = obj_game_manager.undoesUsed;
}
if (popAccordingToFlag) {
	draw_text_transformed_color(x, y, text, f(FRAMES_TO_POP - frames), f(FRAMES_TO_POP - frames), 0, c_black, c_black, c_black, c_black, 1);
} else {
	draw_text_color(x, y, text, c_black, c_black, c_black, c_black, 1);
}