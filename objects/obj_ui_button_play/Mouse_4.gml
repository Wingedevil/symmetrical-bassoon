/// @description Insert description here
// You can write your code in this editor

if (ds_map_find_value(global.levelIndex, "visitedStart") == 0) {
	ds_map_replace(global.levelIndex, "visitedStart", 1);
	var save = file_text_open_write("save.dat");
	for (var k = ds_map_find_first(global.levelIndex); !is_undefined(k); k = ds_map_find_next(global.levelIndex, k)) {
	  var v = ds_map_find_value(global.levelIndex, k);
	  file_text_write_string(save, k);
	  file_text_writeln(save);
	  file_text_write_real(save, v);
	  file_text_writeln(save);
	}
	file_text_close(save);
	obj_room_manager.goto(rm_cs_b1);
} else {
	obj_room_manager.goto(rm_selector);
}