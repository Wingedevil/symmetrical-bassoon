/// @description Insert description here
// You can write your code in this editor

if (!unlocked && ds_map_exists(global.unlockIndex, keyName) && ds_map_find_value(global.unlockIndex, keyName)) {
	sprite_index = spr_undoable_door_opened;
	phy_active = false;
	unlocked = true;
}