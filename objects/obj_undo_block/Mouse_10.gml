/// @description Insert description here
// You can write your code in this editor

if (global.isGamePaused) {
	return;
}
if (ds_stack_size(undoXStack) < freezeFrames) {
	return;
}
if (undoing) {
	return;
}

cursor_sprite = spr_cursor_undo;