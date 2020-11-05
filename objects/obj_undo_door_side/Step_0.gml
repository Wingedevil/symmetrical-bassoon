/// @description Insert description here
// You can write your code in this editor

if (unlocked) {
	if (currentFrames < IMMUNITY_FRAMES) {
		currentFrames++;
	}
}

if (unlocked && ds_map_exists(global.unlockIndex, keyName) && !ds_map_find_value(global.unlockIndex, keyName)) {
	sprite_index = spr_undoable_door_side_closed;
	phy_active = true;
	unlocked = false;
	currentFrames = 0;
	mask_index = spr_undoable_door_side_closed;
}

if (!unlocked && ds_map_exists(global.unlockIndex, keyName) && ds_map_find_value(global.unlockIndex, keyName)) {
	sprite_index = spr_undoable_door_side_opened;
	phy_active = false;
	unlocked = true;
}
