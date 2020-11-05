/// @description Insert description here
// You can write your code in this editor

if (obj_game_manager.win) {
	return;
}

obj_player.phy_speed_x = 0;
obj_player.phy_speed_y = 0;

// set flag to unlock next level
if (is_undefined(ds_map_find_value(global.levelIndex, obj_game_manager.levelName))) {
	global.nextLevelFlag = true;
	var page = ds_map_find_value(global.nextPageIndex, obj_game_manager.levelName);
	global.levelPage = is_undefined(page) ? global.levelPage : page;
	global.nextLevel = ds_map_find_value(global.levelNextIndex, obj_game_manager.levelName);
}

// insert score
if (!is_undefined(ds_map_find_value(global.levelIndex, obj_game_manager.levelName))) {
	if (ds_map_find_value(global.levelIndex, obj_game_manager.levelName) > obj_game_manager.undoesUsed) {
		global.betterScoreFlag = true;
		ds_map_replace(global.levelIndex, obj_game_manager.levelName, obj_game_manager.undoesUsed);
		if (obj_game_manager.undoesUsed <= ds_map_find_value(global.levelParIndex, obj_game_manager.levelName)) {
			global.starredFlag = true;
		}
	}
} else {
	ds_map_add(global.levelIndex, obj_game_manager.levelName, obj_game_manager.undoesUsed);
	global.betterScoreFlag = true;
	if (obj_game_manager.undoesUsed <= ds_map_find_value(global.levelParIndex, obj_game_manager.levelName)) {
		global.starredFlag = true;
	}
}

// insert score into savefile
var save = file_text_open_write("save.dat");
for (var k = ds_map_find_first(global.levelIndex); !is_undefined(k); k = ds_map_find_next(global.levelIndex, k)) {
  var v = ds_map_find_value(global.levelIndex, k);
  file_text_write_string(save, k);
  file_text_writeln(save);
  file_text_write_real(save, v);
  file_text_writeln(save);
}
file_text_close(save);

// start countdown timer to selector
obj_game_manager.win = true;
frames = LOAD_LEVEL_FRAMES;
repeat(10) {
   effect_create_above(ef_star, x - 48 + random(96), y - 48 + random(96), choose(0, 1, 2), c_yellow);
}
