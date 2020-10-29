/// @description Insert description here
// You can write your code in this editor

if (global.isGamePaused) {
	return;	
}

if (unlocked && currentFrames >= IMMUNITY_FRAMES) {
	obj_game_manager.undoesUsed++;
	ds_map_set(global.unlockIndex, keyName, false);
	sprite_index = spr_undoable_door_closed;
	phy_active = true;
	unlocked = false;
	currentFrames = 0;
	mask_index = spr_undoable_door_opened;
}