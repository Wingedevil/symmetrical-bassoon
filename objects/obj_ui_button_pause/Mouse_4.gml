/// @description Insert description here
// You can write your code in this editor

if (!global.isGamePaused) {
	global.isGamePaused = !global.isGamePaused;
	with (obj_abs_physical) {
		phy_active = !global.isGamePaused;
	}
	if (global.isGamePaused) {
		instance_activate_layer("Menu");
	} else {
		instance_deactivate_layer("Menu");
	}
}