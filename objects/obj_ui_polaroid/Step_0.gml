/// @description Insert description here
// You can write your code in this editor

if (loadLevel && global.starredFlag) {
	frames--;
	if (frames <= 0) {
		global.starredFlag = false;
	}
}

if (!loadLevel && global.nextLevel == levelName) {
	frames--;
	image_xscale = iniXScale * (1 + 0.1 * f(FRAMES_TO_POP - frames));
	image_yscale = iniYScale * (1 + 0.1 * f(FRAMES_TO_POP - frames));
	if (frames < 0) {
		global.nextLevel = "";
	}
}