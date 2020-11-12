/// @description Insert description here
// You can write your code in this editor

function playSoundOnLoop(sound) {
	audio_play_sound(sound, 10, true);
}

function playSoundOnce(sound) {
	audio_play_sound(sound, 10, false);
}

function stopAllSounds(){
	audio_stop_all();
}

function mute(){
	volume = 0;
	audio_master_gain(0);
	ds_map_replace(global.levelIndex, "volume", 0);
	var save = file_text_open_write("save.dat");
	for (var k = ds_map_find_first(global.levelIndex); !is_undefined(k); k = ds_map_find_next(global.levelIndex, k)) {
	  var v = ds_map_find_value(global.levelIndex, k);
	  file_text_write_string(save, k);
	  file_text_writeln(save);
	  file_text_write_real(save, v);
	  file_text_writeln(save);
	}
	file_text_close(save);
}

function unmute(){
	volume = 1;
	audio_master_gain(1);
	ds_map_replace(global.levelIndex, "volume", 1);
	var save = file_text_open_write("save.dat");
	for (var k = ds_map_find_first(global.levelIndex); !is_undefined(k); k = ds_map_find_next(global.levelIndex, k)) {
	  var v = ds_map_find_value(global.levelIndex, k);
	  file_text_write_string(save, k);
	  file_text_writeln(save);
	  file_text_write_real(save, v);
	  file_text_writeln(save);
	}
	file_text_close(save);
}

if (!ds_map_exists(global.levelIndex, "volume")) {
	unmute();
} else {
	volume = ds_map_find_value(global.levelIndex, "volume");
	audio_master_gain(volume);
}