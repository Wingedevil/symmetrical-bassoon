/// @description Insert description here
// You can write your code in this editor

if (unlocked) {
	if (ds_map_exists(global.unlockIndex, keyName) && !ds_map_find_value(global.unlockIndex, keyName)) {
		ds_map_set(global.unlockIndex, keyName, false);
		sprite_index = spr_key;
		unlockFramesRemaining = UNLOCK_FRAMES;
		unlocked = false;
		locking = true;
	}
} else if (unlocking) {
	phy_position_x += unlockSpeedX;
	phy_position_y += unlockSpeedY;
	
	unlockFramesRemaining -= 1;
	
	if(unlockFramesRemaining <= 0) {
		unlocking = false;
		unlocked = true;
		sprite_index = spr_empty;
		ds_map_set(global.unlockIndex, keyName, true);
	}
} else if (locking) {
	phy_position_x -= unlockSpeedX;
	phy_position_y -= unlockSpeedY;
	
	unlockFramesRemaining -= 1;
	
	if(unlockFramesRemaining <= 0) {
		locking = false;
		phy_active = true;
		x = iniPosX;
		y = iniPosY;
	}
}