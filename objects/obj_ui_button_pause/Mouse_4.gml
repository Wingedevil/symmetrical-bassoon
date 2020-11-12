/// @description Insert description here
// You can write your code in this editor

if (!global.isGamePaused) {
	obj_sound_manager.playSoundOnce(snd_sfx_button);
	global.isGamePaused = !global.isGamePaused;
	if (global.isGamePaused) {
		instance_activate_layer("Menu");
		cursor_sprite = spr_cursor;
		image_blend = make_colour_rgb(255, 255, 255);
	} else {
		instance_deactivate_layer("Menu");
	}
}