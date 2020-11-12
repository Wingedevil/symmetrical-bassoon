/// @description Insert description here
// You can write your code in this editor

if (obj_sound_manager.volume == 1) {
	sprite_index = spr_ui_sound_no;
	obj_sound_manager.mute();
} else {
	sprite_index = spr_ui_sound_yes;
	obj_sound_manager.unmute();
}