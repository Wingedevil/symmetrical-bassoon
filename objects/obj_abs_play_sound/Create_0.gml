/// @description Insert description here
// You can write your code in this editor

if (!audio_is_playing(soundToPlay)) {
	obj_sound_manager.stopAllSounds();
	obj_sound_manager.playSoundOnLoop(soundToPlay);
}