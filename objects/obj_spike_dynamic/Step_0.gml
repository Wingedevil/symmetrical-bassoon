/// @description Insert description here
// You can write your code in this editor

if (!paused && global.isGamePaused) {
	paused = true;
	preActive = phy_active;
	phy_active = false;
	return;
} else if (paused && !global.isGamePaused) {
	paused = false;
	phy_active = preActive;
} else if (global.isGamePaused) {
	return;
}