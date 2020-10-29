/// @description Insert description here
// You can write your code in this editor

draw_set_font(fmt_text_basic);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
if (levelSelect) {
	var levelPar = ds_map_find_value(global.levelParIndex, obj_selector_manager.inspectedLevel);
	var text = is_undefined(levelPar) ? 0 : levelPar;
} else {
	var text = obj_game_manager.levelPar;
}
draw_text_color(x, y, text, c_black, c_black, c_black, c_black, 1);