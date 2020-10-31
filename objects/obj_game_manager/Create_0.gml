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