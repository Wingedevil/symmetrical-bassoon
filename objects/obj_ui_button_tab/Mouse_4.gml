/// @description Insert description here
// You can write your code in this editor

if (obj_selector_manager.isInspectingLevel) {
	return;
}

obj_sound_manager.playSoundOnce(snd_sfx_flip);
obj_selector_manager.activeMenu = text;

image_xscale = xscale;
image_yscale = yscale;