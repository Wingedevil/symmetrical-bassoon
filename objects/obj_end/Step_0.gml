/// @description Insert description here
// You can write your code in this editor

if (frames > 0) {
	frames--;
	if (frames <= 0) {
		// go back to selector
		cursor_sprite = spr_cursor;
		if (obj_game_manager.levelName == "L4-3") {
			global.nextLevelFlag = false;
			if (ds_map_find_value(global.levelIndex, "L4-3") <= ds_map_find_value(global.levelParIndex, "L4-3")) {
				obj_room_manager.goto(rm_cs_e1);
			} else {
				obj_room_manager.goto(rm_cs_end_false);
			}
		}
		obj_room_manager.goto(rm_selector);
	}
}