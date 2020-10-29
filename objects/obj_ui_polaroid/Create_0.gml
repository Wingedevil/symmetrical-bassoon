/// @description Insert description here
// You can write your code in this editor

enabled = !is_undefined(ds_map_find_value(global.levelIndex, ds_map_find_value(global.levelPrevIndex, levelName)));
starred = false;

if (!is_undefined(ds_map_find_value(global.levelIndex, levelName))) {
	if (ds_map_find_value(global.levelIndex, levelName) <= ds_map_find_value(global.levelParIndex, levelName)) {
		starred = true;
	}
}

function f(x) {
	if (x >= FRAMES_TO_POP || x < 0) {
		return 0;
	}
	return sin(x / FRAMES_TO_POP * pi);
}

FRAMES_TO_POP = 60.0;
frames = FRAMES_TO_POP + (loadLevel ? 0 : obj_selector_manager.FRAMES_BEFORE_CHANGE_LEVEL);
iniXScale = image_xscale;
iniYScale = image_xscale;