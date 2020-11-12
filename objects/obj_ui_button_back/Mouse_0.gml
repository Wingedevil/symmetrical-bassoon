/// @description Insert description here
// You can write your code in this editor

if (global.nextLevelFlag) {
	return;	
}

obj_sound_manager.playSoundOnce(snd_sfx_button);
obj_selector_manager.isInspectingLevel = false;
global.nextLevelFlag = false;