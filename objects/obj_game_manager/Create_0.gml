/// @description Insert description here
// You can write your code in this editor

global.isGamePaused = false;
instance_deactivate_layer("Menu");

global.unlockIndex = ds_map_create();
global.doorIndexX = ds_map_create();
global.doorIndexY = ds_map_create();

undoesUsed = 0;
win = false;
displayHint = false;

var par = ds_map_find_value(global.levelParIndex, levelName);
if (!is_undefined(par)) {
	levelPar = par;
}

global.nextLevel = "";
global.starredFlag = false;
global.betterScoreFlag = false;

if (string_char_at(levelName, 2) == "4") {
	if (audio_is_playing(snd_bgm_1)) {
		obj_sound_manager.stopAllSounds();
		obj_sound_manager.playSoundOnLoop(snd_bgm_2);
	}
}