/// @description Insert description here
// You can write your code in this editor

// restart level
if (keyboard_check_pressed(ord("R"))) {
	room_restart();
}

// pause game
if (keyboard_check_pressed(vk_escape)) {
	global.isGamePaused = !global.isGamePaused;
	if (global.isGamePaused) {
		instance_activate_layer("Menu");
	} else {
		instance_deactivate_layer("Menu");
	}
}
