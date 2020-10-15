/// @description Insert description here
// You can write your code in this editor

if (unlocked && currentFrames >= IMMUNITY_FRAMES) {
	ds_map_set(global.unlockIndex, keyName, false);
	sprite_index = spr_undoable_door_closed;
	phy_active = true;
	depth = 10;
	unlocked = false;
	currentFrames = 0;
	mask_index = spr_undoable_door_opened;
}