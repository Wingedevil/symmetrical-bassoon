/// @description Insert description here
// You can write your code in this editor

global.levelIndex = ds_map_create();
ds_map_add(global.levelIndex, "first", 0);
global.levelParIndex = ds_map_create();
global.levelPrevIndex = ds_map_create();
global.levelNextIndex = ds_map_create();
global.nextPageIndex = ds_map_create();
global.nextLevel = "first";
global.nextLevelFlag = false;
global.betterScoreFlag = false;
global.starredFlag = false;
global.instructionsIsShowing = false;
cursor_sprite = spr_cursor;

ds_map_add(global.levelIndex, "visitedStart", 0);

var save = file_text_open_read("save.dat");
if (save != -1) {
	while (!file_text_eof(save)) {
		var lvl = file_text_read_string(save);
		var undoes = file_text_read_real(save);
		ds_map_replace(global.levelIndex, lvl, undoes);
	}
	file_text_close(save);
}

ds_map_add(global.levelParIndex, "L0-1", 0);
ds_map_add(global.levelPrevIndex, "L0-1", "first");
ds_map_add(global.levelNextIndex, "L0-1", "L0-2");
ds_map_add(global.levelParIndex, "L0-2", 2);
ds_map_add(global.levelPrevIndex, "L0-2", "L0-1");
ds_map_add(global.levelNextIndex, "L0-2", "L0-3");
ds_map_add(global.levelParIndex, "L0-3", 5);
ds_map_add(global.levelPrevIndex, "L0-3", "L0-2");
ds_map_add(global.levelNextIndex, "L0-3", "L0-4");
ds_map_add(global.levelParIndex, "L0-4", 1);
ds_map_add(global.levelPrevIndex, "L0-4", "L0-3");
ds_map_add(global.levelNextIndex, "L0-4", "L1-1");
ds_map_add(global.nextPageIndex, "L0-4", "1");

ds_map_add(global.levelParIndex, "L1-1", 1);
ds_map_add(global.levelPrevIndex, "L1-1", "L0-4");
ds_map_add(global.levelNextIndex, "L1-1", "L1-2");
ds_map_add(global.levelParIndex, "L1-2", 1);
ds_map_add(global.levelPrevIndex, "L1-2", "L1-1");
ds_map_add(global.levelNextIndex, "L1-2", "L1-3");
ds_map_add(global.levelParIndex, "L1-3", 3);
ds_map_add(global.levelPrevIndex, "L1-3", "L1-2");
ds_map_add(global.levelNextIndex, "L1-3", "L2-1");
ds_map_add(global.nextPageIndex, "L1-3", "2");

ds_map_add(global.levelParIndex, "L2-1", 2);
ds_map_add(global.levelPrevIndex, "L2-1", "L1-3");
ds_map_add(global.levelNextIndex, "L2-1", "L2-2");
ds_map_add(global.levelParIndex, "L2-2", 4);
ds_map_add(global.levelPrevIndex, "L2-2", "L2-1");
ds_map_add(global.levelNextIndex, "L2-2", "L2-3");
ds_map_add(global.levelParIndex, "L2-3", 2);
ds_map_add(global.levelPrevIndex, "L2-3", "L2-2");
ds_map_add(global.levelNextIndex, "L2-3", "L2-4");
ds_map_add(global.levelParIndex, "L2-4", 6);
ds_map_add(global.levelPrevIndex, "L2-4", "L2-3");
ds_map_add(global.levelNextIndex, "L2-4", "L3-1");
ds_map_add(global.nextPageIndex, "L2-4", "3");

ds_map_add(global.levelParIndex, "L3-1", 4);
ds_map_add(global.levelPrevIndex, "L3-1", "L2-4");
ds_map_add(global.levelNextIndex, "L3-1", "L3-2");
ds_map_add(global.levelParIndex, "L3-2", 2);
ds_map_add(global.levelPrevIndex, "L3-2", "L3-1");
ds_map_add(global.levelNextIndex, "L3-2", "L3-3");
ds_map_add(global.levelParIndex, "L3-3", 6);
ds_map_add(global.levelPrevIndex, "L3-3", "L3-2");
ds_map_add(global.levelNextIndex, "L3-3", "LF-1");
ds_map_add(global.nextPageIndex, "L3-3", "F");

ds_map_add(global.levelParIndex, "LF-1", 4);
ds_map_add(global.levelPrevIndex, "LF-1", "L3-3");
ds_map_add(global.levelNextIndex, "LF-1", "LF-2");
ds_map_add(global.levelParIndex, "LF-2", 2);
ds_map_add(global.levelPrevIndex, "LF-2", "LF-1");
ds_map_add(global.levelNextIndex, "LF-2", "LF-3");
ds_map_add(global.levelParIndex, "LF-3", 2);
ds_map_add(global.levelPrevIndex, "LF-3", "LF-2");
ds_map_add(global.levelNextIndex, "LF-3", "last");