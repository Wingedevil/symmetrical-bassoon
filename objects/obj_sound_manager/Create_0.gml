/// @description Insert description here
// You can write your code in this editor

function playSoundOnLoop(sound) {
	audio_play_sound(sound, 10, true);
}

function playSoundOnce(sound) {
	audio_play_sound(sound, 10, false);
}

function stopAllSounds(){
	audio_stop_all();
}