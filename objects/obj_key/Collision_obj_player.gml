/// @description Insert description here
// You can write your code in this editor

phy_active = false;
unlocking = true;
unlockFramesRemaining = UNLOCK_FRAMES;
unlockSpeedX = (ds_map_find_value(global.doorIndexX, keyName) - x) / (UNLOCK_FRAMES);
unlockSpeedY = (ds_map_find_value(global.doorIndexY, keyName) - y) / (UNLOCK_FRAMES);


//if (!ds_map_exists(global.roomIndex, keyName) || !ds_map_find_value(global.roomIndex, keyName)) {

//}
