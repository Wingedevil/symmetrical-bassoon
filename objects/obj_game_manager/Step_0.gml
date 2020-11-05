/// @description Insert description here
// You can write your code in this editor

if (global.instructionsIsShowing) {
	return;
}

// restart level
if (keyboard_check_pressed(ord("R"))) {
	room_restart();
}

// pause game
if (keyboard_check_pressed(vk_escape)) {
	global.isGamePaused = !global.isGamePaused;
	if (global.isGamePaused) {
		cursor_sprite = spr_cursor;
		instance_activate_layer("Menu");
	} else {
		instance_deactivate_layer("Menu");
	}
}
