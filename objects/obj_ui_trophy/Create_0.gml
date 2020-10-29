/// @description Insert description here
// You can write your code in this editor

visible = false;
if (!is_undefined(ds_map_find_value(global.levelIndex, obj_game_manager.levelName))) {
	visible = ds_map_find_value(global.levelIndex, obj_game_manager.levelName) <= obj_game_manager.levelPar;
}