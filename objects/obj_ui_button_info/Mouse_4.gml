/// @description Insert description here
// You can write your code in this editor

obj_sound_manager.playSoundOnce(snd_sfx_button);
if (global.instructionsIsShowing) {
	global.instructionsIsShowing = false;
} else if (!global.instructionsIsShowing){
	global.instructionsIsShowing = true;
}