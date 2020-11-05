/// @description Insert description here
// You can write your code in this editor

if (global.isGamePaused) {
	return;	
}

if (unlocked && currentFrames >= IMMUNITY_FRAMES) {
	cursor_sprite = spr_cursor_undo;
	global.cursorChange = true;
}