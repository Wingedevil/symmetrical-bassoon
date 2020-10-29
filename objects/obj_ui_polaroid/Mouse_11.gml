/// @description Insert description here
// You can write your code in this editor

if (global.nextLevelFlag) {
	return;	
}
if (!enabled && !loadLevel) {
	return;	
}
if (obj_selector_manager.isInspectingLevel && !loadLevel) {
	return;
}

image_blend = make_colour_rgb(255, 255, 255);