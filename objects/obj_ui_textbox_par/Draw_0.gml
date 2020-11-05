/// @description Insert description here
// You can write your code in this editor

draw_set_font(font);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
if (levelSelect) {
	var levelPar = ds_map_find_value(global.levelParIndex, obj_selector_manager.inspectedLevel);
	var text = is_undefined(levelPar) ? 0 : levelPar;
} else {
	var text = obj_game_manager.levelPar;
}
draw_text_color(x, y, text, color, color, color, color, 1);