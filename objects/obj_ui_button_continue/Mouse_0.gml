/// @description Insert description here
// You can write your code in this editor

global.isGamePaused = !global.isGamePaused;
if (global.isGamePaused) {
	instance_activate_layer("Menu");
} else {
	instance_deactivate_layer("Menu");
	global.instructionsIsShowing = false;
}